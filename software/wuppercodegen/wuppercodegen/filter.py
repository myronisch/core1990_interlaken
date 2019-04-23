#!/usr/bin/env python
"""Filters."""
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
# Filters
#
# Authors: Mark Donszelmann (Mark.Donszelmann@cern.ch)
#

import re

from classes import Node, Group


def _setup(env):
    env.filters['append'] = append
    env.filters['c_hex'] = c_hex
    env.filters['prepend'] = prepend
    env.filters['version'] = version

    env.filters['vhdl_constant'] = vhdl_constant
    env.filters['vhdl_string_or_constant'] = vhdl_string_or_constant
    env.filters['vhdl_logic_vector'] = vhdl_logic_vector
    env.filters['vhdl_downto'] = vhdl_downto
    env.filters['vhdl_value'] = vhdl_value
    env.filters['vhdl_comment'] = vhdl_comment
    env.filters['html_comment'] = html_comment
    env.filters['html_string'] = html_string
    env.filters['c_comment'] = c_comment
    env.filters['cpp_comment'] = cpp_comment
    env.filters['c_string'] = c_string
    env.filters['c_mask'] = c_mask
    # Tex does not handle underscores on template functions
    env.filters['xhex'] = xhex
    env.filters['tex_comment'] = tex_comment
    env.filters['tex_string'] = tex_string
    env.filters['tex_escape'] = tex_escape
    env.filters['tex_yaml_encode'] = tex_yaml_encode
    env.filters['hex'] = hex
    env.filters['semi'] = semi
    env.filters['camel_case_to_space'] = camel_case_to_space
    env.filters['inc'] = inc
    env.filters['dec'] = dec
    env.filters['list_nodes_recursively'] = list_nodes_recursively
    env.filters['list_sequences'] = list_sequences
    env.filters['list_nodes_and_sequences'] = list_nodes_and_sequences


def append(value, postfix):
    r"""Format the input value as *value*\ postfix."""
    return value + postfix


def c_hex(value, digits=4):
    """Format the input value as hexadecimal: 0x1F40."""
    return '0x' + hex(value, digits)


def xhex(value, digits=4):
    """Format the input value as hexadecimal: 0x1F40. Specially for usage in latex where underscores do not work."""
    return c_hex(value, digits)


def hex(value, digits=4):
    """Format the input value using 'digits' in hexadecimal."""
    return ("{0:0" + str(digits) + "X}").format(value)


def prepend(value, prefix):
    r"""Format the input value as prefix\ *value*."""
    return prefix + value


def version(value):
    """Convert MajorVersion.MinorVersion to MajorVersion*0x100+MinorVersion."""
    v = value.split('.')
    return int(v[0]) * 0x100 + int(v[1])


def vhdl_constant(value, bits=1):
    """Format the input value using 'bits' in binary of hexadecimal for VHDL."""
    if bits <= 0:
        # any
        bits = 1

    if bits % 4 == 0:
        # hex_digits = bits / 4
        fmtstring = 'x"{0:0' + str(bits / 4) + 'x}"'
        return fmtstring.format(value)
    else:
        fmtstring = '"{0:0' + str(bits) + 'b}"'
        return fmtstring.format(value)

def vhdl_string_or_constant(bitfield):
    return vhdl_constant(bitfield.default, bitfield.bits) if isinstance(bitfield.default, (int, long)) else bitfield.default[bitfield.parent.index] if isinstance(bitfield.default, list) else bitfield.default

def vhdl_logic_vector(bitfield):
    r"""Format the bitfield value as std_logic_vector(\ *hi* downto *lo*)."""
    return 'std_logic_vector' + vhdl_downto(bitfield)


def vhdl_downto(bitfield):
    r"""Format the input value as (\ *hi* downto *lo*)."""
    if (bitfield.hi < bitfield.lo):
        # any
        return '(64 downto 64)'
    else:
        return '(' + str(bitfield.hi) + ' downto ' + str(bitfield.lo) + ')'


def vhdl_value(bitfield, prefix):
    """
    Return vhdl value.

    If the input value is a trigger, the input.value is returned (and must be
    specified in the YAML file) either as String or as constant and will be vhdl
    formatted.
    If the input value is not a trigger, then vhdl_downto is called
    prepended by prefix.
    """
    if bitfield.is_trigger:
        return bitfield.value_string if isinstance(bitfield.value, basestring) else vhdl_constant(bitfield.value)
    else:
        return prefix + vhdl_downto(bitfield)


def line_comment(value, prefix, indent=0, suffix=""):
    """Generate line comment."""
    t = ""
    if value is not None:
        list = value.split('\n')
        for i, s in enumerate(list):
            if i > 0:
                t += "\n" + "".rjust(indent, " ")
            if s != "" or i < len(list) - 1:
                t += prefix + s + suffix
    return t


def multi_line_comment(value, prefix, postfix, indent=0):
    """Generate multi-line comment."""
    t = prefix
    if value is not None:
        list = value.split('\n')
        for i, s in enumerate(list):
            t += "\n"
            if s != "" or i < len(list) - 1:
                t += "".rjust(indent + len(prefix), " ") + s
    t += postfix
    return t


def vhdl_comment(value, indent=0):
    """
    Split the input value in separate lines and indents each of them by 'indent' spaces.

    Every line is prepended by a comment delimiter (--).
    """
    if value is not None:
        value = value.replace('\#', '#')
    return line_comment(value, "-- ", indent)


def html_comment(value, indent=0):
    """
    Split the input value in separate lines and indents each of them by 'indent' spaces.

    The whole section is prefixed and suffixed by comment delimiters (<!-- and -->).
    """
    value = value.replace('\#', '#')
    return multi_line_comment(value, "<!--", "-->", indent)


def tex_comment(value, indent=0):
    """
    Split the input value in separate lines and indents each of them by 'indent' spaces.

    Every line is prepended by a comment delimiter (%).
    """
    value = value.replace('\#', '#')
    return line_comment(value, "% ", indent)


def cpp_comment(value, indent=0):
    """
    Split the input value in separate lines and indents each of them by 'indent' spaces.

    Every line is prepended by a comment delimiter (//).
    """
    value = value.replace('\#', '#')
    return line_comment(value, "// ", indent)


def c_comment(value, indent=0):
    r"""
    Split the input value in separate lines and indents each of them by 'indent' spaces.

    Every line is surrounded by a c comment delimiter (/\* ... \*/).
    """
    value = value.replace('\#', '#')
    return line_comment(value, "/* ", indent, " */")


def html_string(value):
    """Escape YAML (multi-line) string into html."""
    if value is not None and isinstance(value, basestring):
        value = value.replace('\#', '#')
        value = value.replace('\n', '<br/>')
    return value


def c_string(value):
    """Escape YAML (multi-line) string into a C string."""
    value = value.replace('\#', '#')
    value = value.replace('\n', '\\n')
    return value


def c_mask(bitfield):
    """Return the mask value based on the bitfield.hi and bitfield.lo values."""
    return ((1 << (bitfield.hi - bitfield.lo + 1)) - 1) << bitfield.lo


def tex_string(value):
    """Escape YAML (multi-line) string into LaTeX and calls tex_escape."""
    value = value.replace('\#', '#')
    value = tex_escape(value)
    value = value.replace('\n', '\\newline ')
    return value


def semi(field, semi=True):
    """Append a semicolon unless append = False."""
    return field + (';' if semi else '')


LATEX_SUBS = (
    (re.compile(r'\\'), r'\\textbackslash'),
    (re.compile(r'([{}_#%&$])'), r'\\\1'),
    (re.compile(r'~'), r'\~{}'),
    (re.compile(r'\^'), r'\^{}'),
    (re.compile(r'"'), r"''"),
    (re.compile(r'\.\.\.+'), r'\\ldots'),
)


def tex_escape(value):
    """Escape the input value for LaTeX."""
    newval = value
    for pattern, replacement in LATEX_SUBS:
        newval = pattern.sub(replacement, newval)
    return newval


LATEX_YAML_SUBS = (
    (re.compile(r'{%'), r'((*'),
    (re.compile(r'%}'), r'*))'),
    (re.compile(r'{{'), r'((('),
    (re.compile(r'}}'), r')))'),
    (re.compile(r'{#'), r'((='),
    (re.compile(r'#}'), r'=))'),
)


def tex_yaml_encode(value):
    """
    Encode the standard codes (see below) as codes used in a LaTeX template.

    Use this filter for values of attributes set in the config file and used in a LaTeX
    template.
    """
    newval = value
    for pattern, replacement in LATEX_YAML_SUBS:
        newval = pattern.sub(replacement, newval)
    return newval


def camel_case_to_space(name):
    """Convert CamelCase to space separated text."""
    s1 = re.sub('(.)([A-Z][a-z]+)', r'\1 \2', name)
    return re.sub('([a-z0-9])([A-Z])', r'\1 \2', s1)


def inc(value, inc=1):
    """Increment value by 'inc'."""
    return value + inc


def dec(value, dec=1):
    """Decrement value by 'dec'."""
    return value - dec


def list_nodes_recursively(node, doc=False, list=None):
    """
    List the input group recursively.

    Groups are listed before their children. Bitfield are NOT listed.
    If 'doc' is true, then registers with the 'nodoc' attribute (sequences) are not in the list, but
    an artificial group with name (...) is inserted where registers are left out. The latter is used
    for documentation.
    """
    if list is None:
        list = []

    list.append(node)

    if hasattr(node, 'nodes'):
        done = False
        for item in node.nodes:
            if doc and item.parent.is_sequence and item.index > 0 and item.index < item.parent.number - 1:
                if (not done) and (item.index == 1):
                    list.append(Group(node, {}, "...", 0))
                    done = True
            else:
                list_nodes_recursively(item, doc, list)
    return list


def _list_sequences_recursively(node, list):
    if node.is_sequence:
        list.append(node)

    if hasattr(node, 'nodes'):
        for item in node.nodes:
            _list_sequences_recursively(item, list)

    return list


def list_sequences(node):
    """
    List the input group recursively.

    Sequences and groups are listed before their children. Sequences are unwrapped, but only
    listed once. Bitfield are NOT listed. This filter can be used to generate structs in C/C++.
    """
    sequences = []
    _list_sequences_recursively(node, sequences)

    names = set()
    list = []
    for seq in reversed(sequences):
        if seq.name not in names:
            names.add(seq.name)

            if hasattr(seq, 'nodes'):
                # NOTE: the sequence is unwrapped, lists all elements, we need only the defined ones
                for index in range(len(seq.nodes) / seq.number):
                    item = seq.nodes[index]
                    if item.is_sequence:
                        list.append(Node(seq, {"number": item.number}, item.name))
#                        print "N", item.name, item.is_sequence, item.number
                    else:
                        list.append(item)
#                        print "R", item.name, item.is_register

            list.append(seq)
#            print "S", seq.name

    return list


def list_nodes_and_sequences(node, list=None):
    """
    List the input group recursively.

    A sequence is an end node. Children of groups agreed
    listed, but children of sequences are not. This filter can be used to generate a top-level
    list of registeres, referring to the output of list_sequences.
    """
    if list is None:
        list = []

    list.append(node)

    if hasattr(node, 'nodes'):
        for item in node.nodes:
            if item.is_sequence:
                list.append(item)
            else:
                list_nodes_and_sequences(item, list)
    return list
