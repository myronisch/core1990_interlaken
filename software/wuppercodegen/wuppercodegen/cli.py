#!/usr/bin/env python
"""Command Line Interface (CLI) of Wupper Code Gen."""
#
# Copyright 2014-2016 Mark Donszelmann, Jose Valenciano and Jorn Schumacher
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# WupperCodeGen
#
# Code generator based on a Register Map (YAML) and templates (Jinja2).
#
# Authors: Mark Donszelmann (Mark.Donszelmann@cern.ch), Jose Valenciano, Jorn Schumacher (Jorn Schumacher@cern.ch)
#

import jinja2
import yaml
import argparse
import sys

from jinja2 import BaseLoader, TemplateNotFound
from os.path import join, exists, getmtime
from operator import attrgetter

import filter
import test

from classes import BitField, Register, Group, Sequence
from version import __version__


class FileLoader(BaseLoader):
    """FileLoader to make sure we can find the templates from the current directory."""

    def __init__(self, path):
        """TBD."""
        self.path = path

    def get_source(self, environment, template):
        """TBD."""
        path = join(self.path, template)
        if not exists(path):
            raise TemplateNotFound(template)
        mtime = getmtime(path)
        with file(path) as f:
            source = f.read().decode('utf-8')
        return source, path, lambda: mtime == getmtime(path)


def read_input(yaml_file):
    """Read data from input yaml file."""
    try:
        with open(yaml_file, 'r') as f:
            config = yaml.load(f)
    except yaml.YAMLError, exc:
        print "Error in configuration file:", exc
        sys.exit(1)

    return config


def generate_bitfields(register):
    """Define the bitfields."""
    bitfields = []
    bitfieldByName = {}

    # set inherited keys in bitfields
    bfs = register.bitfield
    lowest = 256
    for bfDict in bfs:
        name = bfDict['name'] if 'name' in bfDict else None
        bf = BitField(register, bfDict, name)

        # set parameters and extra parameters
        if isinstance(bf.range, str) and bf.range == 'any':
            bf.hi, bf.lo = -1, 0
        else:
            if isinstance(bf.range, str):
                x = bf.range.split("..")
                bf.hi = int(x[0])
                bf.lo = int(x[1])
                if (bf.lo > bf.hi):
                    print "ERROR register/bitfield", register.full_name, 'has wrong order for bitfield spec:', bf.range, ", should be:", bf.lo, "..", bf.hi
                    sys.exit(1)
            else:
                bf.hi, bf.lo = bf.range, bf.range

            if bf.lo < lowest:
                lowest = bf.lo
            else:
                print "ERROR register/bitfield", register.prefix_name, 'has wrong order for bitfields, which should be hi to lo'
                sys.exit(1)

        bitfields.append(bf)
        bitfieldByName[bf.name] = bf

    register.bitfield = bitfields
    register.bitfieldByName = bitfieldByName

    return bitfields


def generate_register(parent, register, registers, nodes, address, index):
    """Define a register."""
    if 'name' not in register:
        print "ERROR no 'name' defined for register."
        sys.exit(1)

    reg = Register(parent, register, register['name'], index)

#    print reg.__dict__

#    reg.index = index

    parent.nodes.append(reg)
    registers.append(reg)
    nodes[reg.prefix_name] = reg
#    print "R",reg.prefix_name,reg.full_name,reg.name

    reg.address = address

    # handle bitfields
    generate_bitfields(reg)

    step = reg.step if reg.step is not None else 0x010
    address += step

    return reg, address


def generate_node(parent, config, group_name, registers, nodes, address=0x0000, index=None):
    """Generate a dictionary of output data to be passed to jinja2."""
    if group_name not in config:
        print "ERROR group", group_name, "not defined."
        sys.exit(1)

    dictionary = config[group_name]
    number = dictionary['number'] if 'number' in dictionary else 1

    if number == 1:
        node = Group(parent, dictionary, group_name, index)
    else:
        node = Sequence(parent, dictionary, group_name, number, index)

#    print node.__dict__

    # link up
    if parent is not None:
        parent.nodes.append(node)
    node.nodes = []
    nodes[node.full_name] = node
#    print "N",node.full_name

    # add offset to base and use as offset
    node.address = address
    if hasattr(node, 'offset'):
        address += node.offset

    for index in range(number):
        if not node.is_sequence:
            index = -1  # single entry

        # go over entries in group
        for entry in node.entries:

            # add offset to address and use as address
            if 'offset' in entry:
                address = (node.address + entry['offset'])

            if 'ref' in entry:
                # reference to other group
                subnode, address = generate_node(node, config, entry['ref'], registers, nodes, address, index)
            else:
                # register definition
                reg, address = generate_register(node, entry, registers, nodes, address, index)

    return node, address


def generate_output(output, template_file, data):
    """Generate output using the given jinja2 template."""
    env = jinja2.Environment(loader=FileLoader('.'), trim_blocks=True)

    filter._setup(env)
    test._setup(env)

    # change codes for LaTeX
    if output.endswith(".tex"):
        env.block_start_string = '((*'
        env.block_end_string = '*))'
        env.variable_start_string = '((('
        env.variable_end_string = ')))'
        env.comment_start_string = '((='
        env.comment_end_string = '=))'

    # replace placeholders in source template from config (which may contain placeholders)
    template = env.get_template(template_file)
    result = template.render(**data)

    # replace placeholders in config (metadata)
    template = env.from_string(result + "\n")
    result = template.render(**data)

    with open(output, 'w') as f:
        f.write(result.encode('utf-8'))


def diff(diff_file, registers, nodes, data):
    """Generate information to create a diff output."""
    diff_config = read_input(diff_file)
    diff_registers = []
    diff_nodes = {}
    diff_root, diff_offset = generate_node(None, diff_config, "Registers", diff_registers, diff_nodes)

    changed_registers = []

    for register in registers:
        if register.prefix_name in diff_nodes:
            diff_register = diff_nodes[register.prefix_name]

            # equal names, look first into all bitfield changes,
            reg_address_changed = register.address != diff_register.address
            reg_endpoints_changed = register.endpoints != diff_register.endpoints
            reg_bf_added = False
            reg_bf_removed = False
            reg_bf_incompatible = False
            reg_type_changed = False
            reg_range_changed = False
            reg_desc_changed = False
            reg_value_changed = False

            for bf in register.bitfield:
                if bf.name in diff_register.bitfieldByName:
                    diff_bf = diff_register.bitfieldByName[bf.name]

                    # equal bitfield names
                    type_changed = bf.type != diff_bf.type
                    incompatible = type_changed and (diff_bf.is_write or diff_bf.is_trigger)
                    range_changed = bf.range != diff_bf.range
                    desc_changed = bf.desc != diff_bf.desc
                    value_changed = bf.value != diff_bf.value

                    reg_type_changed = reg_type_changed or type_changed
                    reg_bf_incompatible = reg_bf_incompatible or incompatible
                    reg_range_changed = reg_range_changed or range_changed
                    reg_desc_changed = reg_desc_changed or desc_changed
                    reg_value_changed = reg_value_changed or value_changed

                    bf.type_changed = type_changed
                    bf.range_changed = range_changed
                    bf.desc_changed = desc_changed
                    bf.value_changed = value_changed

                    if type_changed or range_changed or desc_changed:
                        diff_bf.changed = "Changed"
                        bf.changed = "Into"
                    else:
                        diff_bf.changed = ""
                        bf.changed = ""

                else:
                    bf.changed = 'Added'
                    bf.name_changed = True
                    reg_bf_added = True

            for diff_bf in diff_register.bitfield:
                if diff_bf.name not in register.bitfieldByName:
                    diff_bf.changed = 'Removed'
                    reg_bf_removed = True
                    reg_bf_incompatible = True

            if (reg_bf_added or reg_bf_removed or reg_address_changed or reg_endpoints_changed or
                    reg_range_changed or reg_type_changed or reg_desc_changed or
                    reg_value_changed):
                diff_register.changed = "Changed"
                diff_register.diff_index = (register.address * 10) + 2
                changed_registers.append(diff_register)

                register.changed = "Into"
                register.address_changed = reg_address_changed
                register.endpoints_changed = reg_endpoints_changed
                register.range_changed = reg_range_changed
                register.type_changed = reg_type_changed
                register.desc_changed = reg_desc_changed
                register.value_changed = reg_value_changed
                register.diff_index = (register.address * 10) + 3
                changed_registers.append(register)

            register.incompatible = (reg_bf_incompatible or
                                     reg_address_changed or
                                     reg_endpoints_changed or
                                     reg_range_changed or
                                     reg_value_changed or
                                     (reg_type_changed and (diff_register.is_write or diff_register.is_trigger)))
            diff_register.incompatible = register.incompatible

    for register in registers:
        if register.prefix_name not in diff_nodes:
            register.changed = 'Added'
            register.incompatible = False
            register.name_changed = True
            register.address_changed = True
            register.endpoints_changed = True
            register.range_changed = True
            register.type_changed = True
            register.desc_changed = True
            register.diff_index = (register.address * 10) + 4
            changed_registers.append(register)

    for diff_register in diff_registers:
        if diff_register.prefix_name not in nodes:
            diff_register.changed = 'Removed'
            diff_register.incompatible = True
            diff_register.diff_index = (diff_register.address * 10) + 1
            changed_registers.append(diff_register)

    changed_registers = sorted(changed_registers, key=attrgetter('diff_index'))

    sequence = 0
    for register in changed_registers:
        register.sequence = sequence
        if register.changed != "Changed":
            sequence = sequence + 1

    data.update({
        "diff_tree": diff_root,
        "diff_registers": diff_registers,
        "diff_nodes": diff_nodes,
        "changed_registers": changed_registers
    })


def main():
    """Main function of WupperCodeGen."""
    parser = argparse.ArgumentParser(prog="wuppercodegen", description="Converts template using register map description")
    parser.add_argument("config_file", help="YAML file containing the register map configuration description.")
    parser.add_argument("template_file", help="Jinja2 template file.")
    parser.add_argument("output_file", help="Output file.")
    parser.add_argument('--version', action='version', version='%(prog)s ' + __version__)
    parser.add_argument("--diff", dest="diff_file", metavar="YAML file", help="YAML file to compare against.")
#    parser.add_argument("-s", "--address_size", type=int, default=16, help="Enter the address size")
    args = parser.parse_args()

    metadata = {
        "version": __version__,
        "name": "wuppercodegen",
        "exec": sys.argv[0],
        "config": args.config_file,
        "diff": args.diff_file,
        "template": args.template_file,
        "output": args.output_file,
        "cmdline": " ".join(sys.argv)
    }

    config = read_input(args.config_file)

    registers = []
    nodes = {}
    root, offset = generate_node(None, config, "Registers", registers, nodes)
    data = {
        "metadata": metadata,
        "tree": root,
        "registers": registers,
        "nodes": nodes
    }

    if args.diff_file is not None:
        diff(args.diff_file, registers, nodes, data)

    generate_output(args.output_file, args.template_file, data)


if __name__ == '__main__':
    main()
