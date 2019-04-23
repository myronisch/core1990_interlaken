To build the documentation, install the Sphinx toolkit (v1.3 or later):

   apt-get install python-sphinx     (in Ubuntu)
   yum install python-sphinx         (in SLC6)
   pip install sphinx                (in a virtual environment)

To also build the pdf you need pdflatex:

   yum install texlive-latex 	     (in SLC6)

The documentation can be compiled with:

   make html       (for the html documentation)
   make latexpdf   (for the PDF)
