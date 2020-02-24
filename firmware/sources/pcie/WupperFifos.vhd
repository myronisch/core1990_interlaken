



library ieee, UNISIM;
use ieee.numeric_std.all;
use UNISIM.VCOMPONENTS.all;
use ieee.std_logic_unsigned.all;-- @suppress "Deprecated package"
use ieee.std_logic_1164.all;
use work.pcie_package.all;

entity WupperFifos is
  generic(
    NUMBER_OF_DESCRIPTORS : integer := 3;
    DATA_WIDTH            : integer := 256);
  port (
    fromHostFifoIndex                   : in     integer range 0 to 0; -- @suppress "Unused port: fromHostFifoIndex is not used in work.WupperFifos(rtl)"
    fromHostFifo_din                    : in     std_logic_vector(DATA_WIDTH-1 downto 0);
    fromHostFifo_dout                   : out    std_logic_vector(DATA_WIDTH-1 downto 0);
    fromHostFifo_empty                  : out    std_logic;
    fromHostFifo_pfull_threshold_assert : in     std_logic_vector(8 downto 0);
    fromHostFifo_pfull_threshold_negate : in     std_logic_vector(8 downto 0);
    fromHostFifo_prog_full              : out    std_logic;
    fromHostFifo_rd_clk                 : in     std_logic;
    fromHostFifo_rd_en                  : in     std_logic;
    fromHostFifo_rst                    : in     std_logic;
    fromHostFifo_we                     : in     std_logic;
    fromHostFifo_wr_clk                 : in     std_logic;
    toHostFifoIndex                     : in     integer range 0 to NUMBER_OF_DESCRIPTORS-2;
    toHostFifo_din                      : in     slv_array(0 to NUMBER_OF_DESCRIPTORS-2);
    toHostFifo_dout                     : out    std_logic_vector(DATA_WIDTH-1 downto 0);
    toHostFifo_empty_thresh             : in     std_logic_vector(11 downto 0);
    toHostFifo_pfull_threshold_assert   : in     std_logic_vector(11 downto 0);
    toHostFifo_pfull_threshold_negate   : in     std_logic_vector(11 downto 0);
    toHostFifo_prog_empty               : out    std_logic_vector(NUMBER_OF_DESCRIPTORS-2 downto 0);
    toHostFifo_prog_full                : out    std_logic_vector(NUMBER_OF_DESCRIPTORS-2 downto 0);
    toHostFifo_rd_clk                   : in     std_logic;
    toHostFifo_re                       : in     std_logic;
    toHostFifo_rst                      : in     std_logic;
    toHostFifo_wr_clk                   : in     std_logic;
    toHostFifo_wr_data_count            : out    slv12_array(0 to NUMBER_OF_DESCRIPTORS-2);
    toHostFifo_wr_en                    : in     std_logic_vector(NUMBER_OF_DESCRIPTORS-2 downto 0));
end entity WupperFifos;



architecture rtl of WupperFifos is

  signal toHostFifoIndex_p1           : integer range 0 to NUMBER_OF_DESCRIPTORS-2;
  signal toHostFifo_dout_array        : slv_array(0 to NUMBER_OF_DESCRIPTORS-2);
  signal toHostFifo_re_array          : std_logic_vector(NUMBER_OF_DESCRIPTORS-2 downto 0);
  
  component fifo16KB_256bit -- @suppress "Component declaration is not equal to its matching entity"
    port (
      rst                     : in     std_logic;
      wr_clk                  : in     std_logic;
      rd_clk                  : in     std_logic;
      din                     : in     std_logic_vector(DATA_WIDTH-1 downto 0);
      wr_en                   : in     std_logic;
      rd_en                   : in     std_logic;
      prog_full_thresh_assert : in     std_logic_vector(8 downto 0);
      prog_full_thresh_negate : in     std_logic_vector(8 downto 0);
      dout                    : out    std_logic_vector(DATA_WIDTH-1 downto 0);
      full                    : out    std_logic;
      empty                   : out    std_logic;
      prog_full               : out    std_logic);
  end component fifo16KB_256bit;
  
  component fifo128KB_256bit -- @suppress "Component declaration is not equal to its matching entity"
    port (
      rst                     : in     std_logic;
      wr_clk                  : in     std_logic;
      rd_clk                  : in     std_logic;
      din                     : in     std_logic_vector(DATA_WIDTH-1 downto 0);
      wr_en                   : in     std_logic;
      rd_en                   : in     std_logic;
      prog_empty_thresh       : in     std_logic_vector(11 downto 0);
      prog_full_thresh_assert : in     std_logic_vector(11 downto 0);
      prog_full_thresh_negate : in     std_logic_vector(11 downto 0);
      dout                    : out    std_logic_vector(DATA_WIDTH-1 downto 0);
      full                    : out    std_logic;
      empty                   : out    std_logic;
      prog_full               : out    std_logic;
      prog_empty              : out    std_logic;
      wr_data_count           : out    std_logic_vector(11 downto 0));
  end component fifo128KB_256bit;
  
    component fifo32KB_512bit  -- @suppress "Component declaration "fifo32KB_512bit" has none or multiple matching entity declarations"
    port (
      rst                     : in     std_logic;
      wr_clk                  : in     std_logic;
      rd_clk                  : in     std_logic;
      din                     : in     std_logic_vector(DATA_WIDTH-1 downto 0);
      wr_en                   : in     std_logic;
      rd_en                   : in     std_logic;
      prog_full_thresh_assert : in     std_logic_vector(8 downto 0);
      prog_full_thresh_negate : in     std_logic_vector(8 downto 0);
      dout                    : out    std_logic_vector(DATA_WIDTH-1 downto 0);
      full                    : out    std_logic;
      empty                   : out    std_logic;
      prog_full               : out    std_logic);
  end component fifo32KB_512bit;
  
  component fifo256KB_512bit  -- @suppress "Component declaration "fifo32KB_512bit" has none or multiple matching entity declarations"
    port (
      rst                     : in     std_logic;
      wr_clk                  : in     std_logic;
      rd_clk                  : in     std_logic;
      din                     : in     std_logic_vector(DATA_WIDTH-1 downto 0);
      wr_en                   : in     std_logic;
      rd_en                   : in     std_logic;
      prog_empty_thresh       : in     std_logic_vector(11 downto 0);
      prog_full_thresh_assert : in     std_logic_vector(11 downto 0);
      prog_full_thresh_negate : in     std_logic_vector(11 downto 0);
      dout                    : out    std_logic_vector(DATA_WIDTH-1 downto 0);
      full                    : out    std_logic;
      empty                   : out    std_logic;
      prog_full               : out    std_logic;
      prog_empty              : out    std_logic;
      wr_data_count           : out    std_logic_vector(11 downto 0));
  end component fifo256KB_512bit;

begin

  b_fromhost: block
      signal fromHostFifo_wr_en_pipe : std_logic;
      signal fromHostFifo_din_pipe   : std_logic_vector(DATA_WIDTH-1 downto 0);

  begin
g_256: if DATA_WIDTH=256 generate
      fromHostFifo0: fifo16KB_256bit
        port map(
          rst                     => fromHostFifo_rst,
          wr_clk                  => fromHostFifo_wr_clk,
          rd_clk                  => fromHostFifo_rd_clk,
          din                     => fromHostFifo_din_pipe,
          wr_en                   => fromHostFifo_wr_en_pipe,
          rd_en                   => fromHostFifo_rd_en,
          prog_full_thresh_assert => fromHostFifo_pfull_threshold_assert,
          prog_full_thresh_negate => fromHostFifo_pfull_threshold_negate,
          dout                    => fromHostFifo_dout,
          full                    => open,
          empty                   => fromHostFifo_empty,
          prog_full               => fromHostFifo_prog_full);
end generate;
g_512: if DATA_WIDTH=512 generate
      fromHostFifo0: fifo32KB_512bit
        port map(
          rst                     => fromHostFifo_rst,
          wr_clk                  => fromHostFifo_wr_clk,
          rd_clk                  => fromHostFifo_rd_clk,
          din                     => fromHostFifo_din_pipe,
          wr_en                   => fromHostFifo_wr_en_pipe,
          rd_en                   => fromHostFifo_rd_en,
          prog_full_thresh_assert => fromHostFifo_pfull_threshold_assert,
          prog_full_thresh_negate => fromHostFifo_pfull_threshold_negate,
          dout                    => fromHostFifo_dout,
          full                    => open,
          empty                   => fromHostFifo_empty,
          prog_full               => fromHostFifo_prog_full);
end generate;
          
      pipe2: process (fromHostFifo_wr_clk)
      begin
          if rising_edge(fromHostFifo_wr_clk) then
              fromHostFifo_din_pipe <= fromHostFifo_din;
              fromHostFifo_wr_en_pipe <= fromHostFifo_we;
          end if;
      end process  ;
  end block;

  mux1: process (toHostFifoIndex_p1, toHostFifoIndex, toHostFifo_re,
    toHostFifo_dout_array)
  begin
      toHostFifo_dout                         <= toHostFifo_dout_array(toHostFifoIndex_p1);
      toHostFifo_re_array <= (others => '0');
      toHostFifo_re_array(toHostFifoIndex)    <= toHostFifo_re;
  end process mux1 ;

  index_pipe_proc: process (toHostFifo_rd_clk)
  begin
      if rising_edge(toHostFifo_rd_clk) then
          toHostFifoIndex_p1 <= toHostFifoIndex;
      end if;
  end process index_pipe_proc ;

  g_tohost: for i in 0 to NUMBER_OF_DESCRIPTORS-2 generate
      signal toHostFifo_wr_en_pipe : std_logic;
      signal toHostFifo_din_pipe   : std_logic_vector(DATA_WIDTH-1 downto 0);

  begin
  g_256: if DATA_WIDTH=256 generate
        toHostFifo0: fifo128KB_256bit
          port map(
            rst                     => toHostFifo_rst,
            wr_clk                  => toHostFifo_wr_clk,
            rd_clk                  => toHostFifo_rd_clk,
            din                     => toHostFifo_din_pipe,
            wr_en                   => toHostFifo_wr_en_pipe,
            rd_en                   => toHostFifo_re_array(i),
            prog_empty_thresh       => toHostFifo_empty_thresh(11 downto 0),
            prog_full_thresh_assert => toHostFifo_pfull_threshold_assert(11 downto 0),
            prog_full_thresh_negate => toHostFifo_pfull_threshold_negate(11 downto 0),
            dout                    => toHostFifo_dout_array(i),
            full                    => open,
            empty                   => open,
            prog_full               => toHostFifo_prog_full(i),
            prog_empty              => toHostFifo_prog_empty(i),
            wr_data_count           => toHostFifo_wr_data_count(i)(11 downto 0));
end generate;
g_512: if DATA_WIDTH=512 generate
        toHostFifo0: fifo256KB_512bit
          port map(
            rst                     => toHostFifo_rst,
            wr_clk                  => toHostFifo_wr_clk,
            rd_clk                  => toHostFifo_rd_clk,
            din                     => toHostFifo_din_pipe,
            wr_en                   => toHostFifo_wr_en_pipe,
            rd_en                   => toHostFifo_re_array(i),
            prog_empty_thresh       => toHostFifo_empty_thresh(11 downto 0),
            prog_full_thresh_assert => toHostFifo_pfull_threshold_assert(11 downto 0),
            prog_full_thresh_negate => toHostFifo_pfull_threshold_negate(11 downto 0),
            dout                    => toHostFifo_dout_array(i),
            full                    => open,
            empty                   => open,
            prog_full               => toHostFifo_prog_full(i),
            prog_empty              => toHostFifo_prog_empty(i),
            wr_data_count           => toHostFifo_wr_data_count(i)(11 downto 0));
end generate;
      
      pipe0: process (toHostFifo_wr_clk) is
      begin
          if rising_edge(toHostFifo_wr_clk) then
              toHostFifo_din_pipe <= toHostFifo_din(i);
              toHostFifo_wr_en_pipe <= toHostFifo_wr_en(i);
          end if;
      end process pipe0 ;
  end generate g_tohost;




end architecture rtl ; -- of WupperFifos

