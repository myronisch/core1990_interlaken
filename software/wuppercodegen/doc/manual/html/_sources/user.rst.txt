==================
User Documentation
==================

Command Line Interface
======================

A Makefile is provided that calls WupperCodeGen with the correct parameters to
generate the output files. A simple ``make`` in the WupperCodeGen directory is
enough to produce the output, which is stored in the directory 'output'.

If there is a need to do so, the tool can be called manually in the following way:

::

	usage: wuppercodegen [-h] [--version] config_file template_file output_file


The following parameters have to be set:


``config_file``
	An input file containing a description of all configuration registers and
	grouping thereof in YAML format.

``template_file``
	A Jinja2 template file, used to describe the output file.

``output_file``
	The filename of the output file that is to be generated.

Input Files
===========

Input files are located in the current directory. There are two types of input files:

- data files, containing a description of the desired bitfields, registers and groups in YAML format,
- template files, describing how the generated code should look like.

Users normally only deal with the YAML file.

The Register Description File is a YAML ('registers.yaml') file containing a
description of Groups, Registers and Bitfields. The top-level group is named
'Registers'. Groups are named, and
may contain other Groups and or Registers. Groups can be repeated to create
a Sequence of Groups/Registers. Registers are also named and contain one or more
Bitfields. Bitfields are named if there are more than one.
Groups, Registers and BitFields are commonly referred to as Nodes. Below a
description of each of these types:

Group
-----
Groups are declared in yaml by their name, followed by a number of key-value
pairs, referred to as attributes. The only obliged attribute is 'entries' which
lists all the subgroups or registers contained in this group. 'entries' is a
list. The top-level group is called 'Registers', all other groups can have
any name, but it needs to be unique.

Subgroups are declared just like groups
and referred to by name in the 'entries' array under the key 'ref'. A group that
needs repeating may contain the key 'number', which is added as a index-parameter
in the lookup of the subgroup, and used in the name of its registers, see under registers.
Below is group example:

.. highlight:: yaml
.. include:: groups.yaml
	:code:


Register and Bitfields
----------------------
Registers are declared directly inside the 'entries' attribute of a group. They
need a 'name' and a 'bitfield' attribute. Bitfield is in fact a list of one or
more bitfields, which must contain 'range' as attribute and 'name',
if there is more than one bitfield in the list. Range is given as a single bit
or as a range of high to low bits (both included in the range).

Below is a register and bitfield example:

.. highlight:: yaml
.. include:: registers-bitfields.yaml
	:code:

The name attribute of a register
may contain one % operator to use the repeat-index-parameter to give repeated registers
a unique name.

.. highlight:: yaml
.. include:: sequences.yaml
	:code:


Attributes
----------
Attributes in Bitfields, Registers and Groups are inherited, which means that
if you set them on a group, all sub-groups, sequences, registers and bitfield inherit them.
This way you can set defaults for a particular group.
The following attributes do NOT inherit: 'name', 'full_name', 'offset', 'address',
'index', 'entries', 'number', 'ref',
'is_bitfield', 'is_register', 'is_group'.

The following attributes are used/available:

name (not inherited)
	The name of the bitfield, group or register. The name may include fields such as
	{index} for sequences and {bitfield} for bitfield names.

full_name (not inherited)
  - For Sequences, the formatted name of the sequence name and the index, if the
    sequence name includes {index}.
  - For Registers, the formatted name of the register name and the index, if the
    register name includes {index}.
  - For Bitfields, the formatted name of the parent register and the bitfield name
    if the register name includes {bitfield}. The bitfield part is separated from
    the name by an underscore.
    Bitfields of which the parent register is part of a sequence may use also
    {index} in the parent register's name to format that name.

dot_name (not inherited)
	- For Bitfields only, separating the bitfield part from the name by a dot.

prefix_name (not inherited)
  - For Registers only, the part of the name without the {bitfield} specifier.
    To be used if you just want the generic name of the register.

desc
	A description of the register or bitfield. The '|' operator can be used
	for multi-line descriptions, which if used as end-of-line comments in the
	template will properly format.

type
	The type of register/bitfield, which can be R: read-only, W: read/write or
	T: trigger (any write results in something happening, e.g. reset...)

default
	The default value to be used to initialize the register or bitfield.
	Default can be given as an array, if needed. All fields should be supplied, for example
	a 6 entry array [0..5]:

::

  default:
    - 0x00000124aaaa8006
    - 0x00000124aaaa8078
    - 0x00000124aaaa8001
    - 0x00000124aaaaff80
    - 0x00000124aaaae628
    - 0x00000124aaaa99d0

value
	Value (or string) to be used for Trigger registers.

offset (not inherited)
 	Sets the offset used for a register or group.

address (not inherited, calculated)
	Address is a calculated value. It starts at 0 for the top-level group.
	The 'offset' attribute gets added to the address of a group to create
	the current address. Sub-groups and registers are located at the current
	address. The current address is incremented by 'step' for every register.
	One can place any register or group at a particular address by calculating
	the needed offset from the address of the parent group.

step
	The address increase added to offset for every register.

entries (not inherited)
	A list of registers or references to sub-groups.

ref (not inherited)
	A reference (by name) to a sub-group.

number (not inherited)
	Number of times a referred group needs to be repeated in a sequence.

index (not inherited)
  The index for this group or register inside a sequence.

bitfield
	List of (at least one) bitfields describing the bits in a register.

range
	The bit range (even single bit) of a bitfield. Ranges can be expressed as
	single integers, as a high..low range, or with the word 'any'.

*any other*
	The value given, inherited from group to group to register to bitfield.

Metadata
--------
You can use the following metadata which is available in the Metadata dictionary:

version
	The version of WupperCodeGen

name:
	The name of WupperCodeGen

exec:
	The program executed

config:
	The path of the config file

template:
	The path of the template file

output:
	The path of the output file

cmdline:
	The full command line

Each of these can used inside the config file or in the template. Care must be
taken when the output is in LaTeX as the codes change for LaTeX, so any variable
in the config file (the template file is already coded for LaTeX) must be filtered
through the tex_yaml_encode filter.

Below an example of setting up a warning how the output file is generated:

.. highlight:: yaml
.. include:: warning.yaml
	:code:

and the usage in a LaTeX the template

.. highlight:: tex
.. include:: warning.tex.template
	:code:

and its output

.. highlight:: tex
.. include:: warning.tex
	:code:

