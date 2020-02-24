library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; -- @suppress "Deprecated package"
use ieee.std_logic_1164.all;


package data_width_package is
  constant PCIE_DATA_WIDTH: integer := 256;
end package;