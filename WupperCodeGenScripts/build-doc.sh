#!/bin/sh -e

wuppercodegen=../software/wuppercodegen/wuppercodegen/cli.py
registers=registers-1.0.yaml

$wuppercodegen --version
$wuppercodegen $registers ../documentation/registermap.tex.template ../documentation/registermap.tex
cd ../documentation/
pdflatex -synctex=1 -interaction=nonstopmode wupper.tex
pdflatex -synctex=1 -interaction=nonstopmode wupper.tex
