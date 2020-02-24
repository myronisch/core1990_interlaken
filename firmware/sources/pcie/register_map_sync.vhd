



library ieee, UNISIM;
use ieee.numeric_std.all;
use UNISIM.VCOMPONENTS.all;
use ieee.std_logic_unsigned.all;-- @suppress "Deprecated package"
use ieee.std_logic_1164.all;
use work.pcie_package.all;

entity register_map_sync is
  generic(
    NUMBER_OF_INTERRUPTS : integer := 8);
  port (
    appreg_clk                    : in     std_logic;
    clk40                         : in     std_logic;
    interrupt_call                : out    std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 4);
    interrupt_call_cr             : in     std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 4);
    register_map_40_control       : out    register_map_control_type;
    register_map_control          : in     register_map_control_type;
    register_map_gen_board_info   : in     register_map_gen_board_info_type;
    register_map_hk_monitor       : in     register_map_hk_monitor_type;
    register_map_monitor          : out    register_map_monitor_type;
    rst_hw                        : in     std_logic;
    rst_soft_40                   : out    std_logic;
    rst_soft_appregclk            : in     std_logic);
end entity register_map_sync;



architecture rtl of register_map_sync is

  --attribute ASYNC_REG     : string;

  --synchronization stages to 41.667MHz
  signal interrupt_call_p1                         : std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 4);
  signal register_map_hk_monitor_p1                : register_map_hk_monitor_type;
  
  --attribute ASYNC_REG of interrupt_call_p1            : signal is "TRUE";
  --attribute ASYNC_REG of register_map_hk_monitor_p1   : signal is "TRUE";
  --attribute ASYNC_REG of register_map_cr_monitor_p1   : signal is "TRUE";
  --attribute ASYNC_REG of register_map_gbt_monitor_p1  : signal is "TRUE";
  
  --synchronization stages to 40 MHz
  signal register_map_control_p1                   : register_map_control_type;
  signal rst_soft_p1                  : std_logic;
  --attribute ASYNC_REG of register_map_control_p1   : signal is "TRUE";
  --attribute ASYNC_REG of rst_soft_p1                  : signal is "TRUE";
  


begin

    clk40_sync: process(clk40)
    begin
      if(rising_edge(clk40)) then
        register_map_40_control <= register_map_control_p1;
        register_map_control_p1 <= register_map_control;
        rst_soft_40 <= rst_soft_p1 or rst_hw;
        rst_soft_p1 <= rst_soft_appregclk;
      end if;
    end process;

    appreg_sync: process(appreg_clk)
    begin
      if(rising_edge(appreg_clk)) then
        interrupt_call <= interrupt_call_p1;
        interrupt_call_p1 <= interrupt_call_cr;
        register_map_monitor.register_map_gen_board_info   <= register_map_gen_board_info; --does not need synchronization as it contains only constants
        register_map_monitor.register_map_hk_monitor       <= register_map_hk_monitor_p1;
        register_map_hk_monitor_p1                         <= register_map_hk_monitor;
      end if;
    end process;

end architecture rtl ; -- of register_map_sync

