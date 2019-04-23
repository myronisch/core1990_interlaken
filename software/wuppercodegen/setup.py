"""Setup for Wupper Code Gen."""
from setuptools import setup, find_packages

from codecs import open
from os import path
from wuppercodegen import __version__

here = path.abspath(path.dirname(__file__))

# Get the long description from the relevant file
with open(path.join(here, 'DESCRIPTION.rst'), encoding='utf-8') as f:
    long_description = f.read()

exec(open('wuppercodegen/version.py').read())

setup(
    name='wuppercodegen',
    version=__version__,
    description='The WUPPER Code Generator',
    long_description=long_description,

    url='http://pythonhosted.org/wuppercodegen',

    author="Mark Donszelmann, Jose Valenciano, Jorn Schumacher",
    author_email="mark.donszelmann@cern.ch",

    license='APACHE-LICENSE-2.0',

    classifiers=[
        # How mature is this project? Common values are
        #   3 - Alpha
        #   4 - Beta
        #   5 - Production/Stable
        'Development Status :: 4 - Beta',

        # Indicate who your project is intended for
        'Intended Audience :: Developers',
        'Topic :: Software Development :: Build Tools',

        # Pick your license as you wish (should match "license" above)
        'License :: OSI Approved :: Apache Software License',

        # Specify the Python versions you support here. In particular, ensure
        # that you indicate whether you support Python 2, Python 3 or both.
        'Programming Language :: Python :: 2.6',
        'Programming Language :: Python :: 2.7',
    ],

    keywords='development',

    packages=find_packages(),

    install_requires=['jinja2', 'PyYAML', 'MarkupSafe'],

    package_data={
        'wuppercodegen': ['version.py'],
    },

    entry_points={
        'console_scripts': [
            'wuppercodegen=wuppercodegen.cli:main',
        ],
    },
)
