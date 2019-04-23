#!/usr/bin/env python
"""Tests."""
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
# Tests
#
# Authors: Mark Donszelmann (Mark.Donszelmann@cern.ch)
#


def _setup(env):
    env.tests['in_group'] = in_group


def in_group(node, name):
    """Return True if this bitfield, register, group or sequence belongs to 'group'."""
    if node.name == name:
        return True
    else:
        if node.parent is None:
            return False
        else:
            return in_group(node.parent, name)
