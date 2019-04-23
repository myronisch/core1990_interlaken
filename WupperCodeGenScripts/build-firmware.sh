#!/bin/sh

#
# Script to rebuild the derived files from templates
#
#prev_version=1.0
current_version=1.0
#next_version=1.0

#
# firmware directory:
firmware_dir=../firmware
# sources directory:
sources_dir=$firmware_dir/sources
# template directory:
template_dir=$sources_dir/templates

# WupperCodeGen
wuppercodegen_dir=../software/wuppercodegen
wuppercodegen=$wuppercodegen_dir/wuppercodegen/cli.py

#prev_registers=$template_dir/registers-${prev_version}.yaml
current_registers=registers-${current_version}.yaml
#next_registers=$template_dir/registers-${next_version}.yaml
$wuppercodegen --version
echo "Current  version: $current_version"
echo "Generating pcie_package.vhd and dma_control.vhd for current version..."
$wuppercodegen $current_registers $template_dir/dma_control.vhd.template $sources_dir/pcie/dma_control.vhd
$wuppercodegen $current_registers $template_dir/pcie_package.vhd.template $sources_dir/packages/pcie_package.vhd
echo "Generating html documentation for current version..."
#$wuppercodegen $prev_registers $wuppercodegen_dir/input/registers.html.template registers-${prev_version}.html
$wuppercodegen $current_registers ../documentation/registers.html.template ../documentation/registers-${current_version}.html
#$wuppercodegen $next_registers $wuppercodegen_dir/input/registers.html.template registers-${next_version}.html
#echo "Generating diff between previous and current version..."
#$wuppercodegen --diff $prev_registers $current_registers $wuppercodegen_dir/input/registers-diff.html.template registers-diff-${prev_version}-${current_version}.html
#echo "Generating diff between current and next version..."
#$wuppercodegen --diff $current_registers $next_registers $wuppercodegen_dir/input/registers-diff.html.template registers-diff-${current_version}-${next_version}.html
