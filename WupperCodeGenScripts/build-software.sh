#!/bin/sh

wuppercodegen=../software/wuppercodegen/wuppercodegen/cli.py
registers=registers-1.0.yaml
$wuppercodegen --version
$wuppercodegen $registers ../software/regmap/src/regmap-struct.h.template ../software/regmap/regmap/regmap-struct.h
$wuppercodegen $registers ../software/regmap/src/regmap-symbol.h.template ../software/regmap/regmap/regmap-symbol.h
$wuppercodegen $registers ../software/regmap/src/regmap-symbol.c.template ../software/regmap/src/regmap-symbol.c
