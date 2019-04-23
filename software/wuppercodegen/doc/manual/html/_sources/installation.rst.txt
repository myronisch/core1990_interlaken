Installation
============

WupperCodeGen is written in Python and was tested with versions 2.6 and 2.7.
Additionally, you will need to install the Jinja2 template engine and the
Python Yaml parser. In case of Python 2.6 you will have to install the
argparse module as well.

Installation from PyPI using pip
--------------------------------

Installation using pip, which will install all dependencies::

  pip install wuppercodegen


Scientific Linux and RedHat-based distributions
-----------------------------------------------

Installation of system-wide Jinja2 in SLC6::

  sudo yum install python-jinja2 python-argparse python-yaml python-markupsafe


Ubuntu
------

Installation of system-wide Jinja2 in Ubuntu::

  sudo apt-get install python-jinja2 python-yaml python-markupsafe


Using Virtual Python Environments
---------------------------------

This method allows to install the necessary dependencies in an isolated Python
environment, without affecting system packages. The method described here is
independent of the operating system being used, as long as it is used with
a supported version of Python.

Installation in a virtual environment::

  # create the virtual environment
  virtualenv venv/ --python=/path/to/python26-or-27

  # activate the virtual environment
  source venv/bin/activate

  # install Jinja2 ad other modules
	pip install Jinja2
  pip install argparse
  pip install PyYAML
  pip install MarkupSafe

  # you can now use WupperCodeGen
  # the virtual environment can be deactivated with
  source venv/bin/deactivate
