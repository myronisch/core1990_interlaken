#!/usr/bin/env python
"""Classes."""
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
# Classes
#
# Authors: Mark Donszelmann (Mark.Donszelmann@cern.ch)
#

import inspect
import sys


class Node(object):
    """Root object of BitField, Register, Group and Sequence."""

    not_inherited = ['parent', 'nodes', 'name', 'full_name', 'format_name',
                     'dot_name', 'prefix_name',
                     'offset', 'address', 'entries', 'ref',
                     'index', 'number', 'group',
                     'is_bitfield', 'is_register', 'is_group', 'is_sequence', 'print_generate']

    is_bitfield = False
    """True is node is a bitfield."""

    is_register = False
    """True if node is a register."""

    is_group = False
    """True if node is a group."""

    is_sequence = False
    """True if node is a sequence. Sequences are also groups."""

    def __init__(self, parent, dictionary, name):
        """TBD."""
        self.parent = parent
        self.nodes = []
        self.offset = 0
        self.address = 0
        self.entries = []

        self.format_name = None
        # FIXME move up when entries is dealt with
        for k, v in dictionary.items():
            setattr(self, k, v)
        self.name = name

    def __getattr__(self, attr):
        """TBD."""
#        print self.name, "__getattr__ ", attr
        if attr in Node.not_inherited:
            raise AttributeError("Attribute '" + attr + "'' not defined in node '" + self.name + "'")
        if self.parent is not None:
            return getattr(self.parent, attr)
        else:
            return None

    def __getattribute__(self, attr):
        """TBD."""
        # lookup value as usual but allow for function calls without arguments to be called as attributes
        val = super(Node, self).__getattribute__(attr)

        if callable(val):
            argcount = len(inspect.getargspec(val).args)
            # Account for self
            if argcount == 1:
                return val()
            else:
                return val
        else:
            return val

    def is_write(self):
        """Return True if a group, register or bitfield is writeable."""
        return self.type == 'W'

    def is_trigger(self):
        """Return True if a group, register or bitfield is triggerable."""
        return self.type == 'T'

    def is_read(self):
        """Return True if a group, register or bitfield is readable."""
        return self.type == 'R'

    def has_write_bitfields(self):
        """Return True if a register has any write bitfields."""
        if self.is_register:
            for bf in self.bitfield:
                if bf.type == 'W':
                    return True
        return False

    def has_trigger_bitfields(self):
        """Return True if a register has any trigger bitfields."""
        if self.is_register:
            for bf in self.bitfield:
                if bf.type == 'T':
                    return True
        return False

    def has_read_bitfields(self):
        """Return True if a register has any read bitfields."""
        if self.is_register:
            for bf in self.bitfield:
                if bf.type == 'R':
                    return True
        return False

    def has_groupname(self):
        """Return True if group (not sequence) and 'group' is defined for a groupname."""
        return self.is_group and not self.is_sequence and self.group is not None

    def full_name(self):
        """Return 'print_name' if 'format_name' is defined, otherwise it returns 'name'."""
        return self.print_name if self.format_name is not None else self.name

    def print_name(self):
        """Return formatted name according to 'format_name', using 'index', 'name' and 'parent.print_name'."""
#        return 'x'+self.format_name
        return self.format_name.format(index=self.index, name=self.name, parent=self.parent.print_name)
        
    def print_generate(self):
        """Return formatted generate with index"""
        if self.parent.parent.is_sequence:
            return self.generate.format(index=self.parent.index)
        return self.generate.format(index=self.index)

    def has_endpoint(self, endpoint):
        """Return if endpoint is supported."""
        return self.endpoints


class BitField(Node):
    """Bitfield, defines specifics about bits inside the register."""

    def __init__(self, parent, dictionary, name):
        """TBD."""
        Node.__init__(self, parent, dictionary, name)
        self.is_bitfield = True
        if self.name is None:
            self.name = ''

    def bits(self):
        """The number of bits in the bitfield range. Returns 0 if the range is 'any'."""
        return self.hi - self.lo + 1

    def full_name(self):
        """Return 'print_name' if 'format_name' is defined, otherwise appends bitfield 'name' with underscore to 'name'."""
        return self.print_name if self.format_name is not None else self.parent.full_name.format(index=self.parent.index) + ("_" + self.name if self.name != "" else "")

    def print_name(self):
        """Return formatted name according to 'format_name', using 'index', 'name' and 'parent.print_name'."""
        return self.format_name.format(index=self.parent.index, name=self.parent.name, parent=self.parent.parent.print_name, bitfield=self.name)

    def dot_name(self):
        """Return register name with bitfield name appended with a '.'."""
        return self.parent.full_name.format(index=self.parent.index) + ("." + self.name if self.name != "" else "")

    def lo(self):
        """The lowest bit in the bitfield range. Returns -1 if the range is 'any'."""
        return self.lo

    def hi(self):
        """The highest bit in the bitfield range. Returns 0 if the range is 'any'."""
        return self.hi

    def value_string(self):
        """Return value indexed if needed."""
        return self.value.format(index=self.parent.index)


class Entry(Node):
    """Allows to be an entry in a sequence."""

    index = None
    """Index if part of a sequence"""

    def __init__(self, parent, dictionary, name, index):
        """TBD."""
        Node.__init__(self, parent, dictionary, name)
        self.index = index

    def size(self):
        """Return the size in bytes of the Register, Group or Sequence."""
        return 0


class Register(Entry):
    """Register."""

    def __init__(self, parent, dictionary, name, index):
        """TBD."""
        Entry.__init__(self, parent, dictionary, name, index)
        self.is_register = True

        if isinstance(self.default, list):
            self.default = self.default[index]

    def lo(self):
        """Return the lowest of all bitfield ranges."""
        lo = sys.maxint
        for bf in self.bitfield:
            lo = min(lo, bf.lo)
        return lo

    def hi(self):
        """Return the highest of all bitfield ranges."""
        hi = -sys.maxint - 1
        for bf in self.bitfield:
            hi = max(hi, bf.hi)
        return hi

    def bits(self):
        """The number of bits in the bitfield range. Returns 0 if the range is 'any'."""
        return self.hi - self.lo + 1

    def full_name(self):
        """Return 'print_name' if 'format_name' is defined, otherwise returns 'name' formatted with 'index' if defined."""
        if self.format_name is not None:
            return self.print_name
        return self.name if self.index is None else self.name.format(index=self.index, bitfield='{bitfield}')

    def prefix_name(self):
        """Return 'full_name' without the {bitfield} part."""
        return self.full_name.replace('{bitfield}', '')

    def sort_by_address(self):
        """TBD."""
        return 0.0

    def size(self):
        """TBD."""
        return 16


class Group(Entry):
    """Groups a number of registers."""

    def __init__(self, parent, dictionary, name, index):
        """TBD."""
        Entry.__init__(self, parent, dictionary, name, index)
        self.is_group = True

    def size(self):
        """TBD."""
        s = 0
        for node in self.nodes:
            s += node.size
        return s


class Sequence(Group):
    """Array of registers."""

    number = None
    """Size of the sequence"""

    def __init__(self, parent, dictionary, name, number, index):
        """TBD."""
        Group.__init__(self, parent, dictionary, name, index)
        self.is_sequence = True
        self.number = number

    def full_name(self):
        """Return name, formatted by index if defined."""
        return self.name if '{' not in self.name else self.name.format(index=self.index)
