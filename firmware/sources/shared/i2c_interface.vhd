



library ieee, UNISIM;
use ieee.numeric_std.all;
use UNISIM.VCOMPONENTS.all;
use ieee.std_logic_1164.all;
use work.pcie_package.all;

entity i2c_interface is
  port (
    Din                  : out    std_logic_vector(7 downto 0);
    Dout                 : in     std_logic_vector(7 downto 0);
    I2C_RD               : out    bitfield_i2c_rd_r_type;
    I2C_WR               : out    bitfield_i2c_wr_r_type;
    RST                  : in     std_logic;
    ack_in               : out    std_logic;
    --ack_out              : in     std_logic;
    appreg_clk           : in     std_logic;
    clk                  : out    std_logic;
    cmd_ack              : in     std_logic;
    ena                  : out    std_logic;
    nReset               : out    std_logic;
    read                 : out    std_logic;
    register_map_control : in     register_map_control_type;
    rst_soft             : in     std_logic;
    start                : out    std_logic;
    stop                 : out    std_logic;
    write                : out    std_logic);
end entity i2c_interface;


architecture rtl of i2c_interface is

  COMPONENT I2C_WRFifo
    PORT (
      rst : IN std_logic;
      wr_clk : IN std_logic;
      rd_clk : IN std_logic;
      din : IN std_logic_vector(24 DOWNTO 0);
      wr_en : IN std_logic;
      rd_en : IN std_logic;
      dout : OUT std_logic_vector(24 DOWNTO 0);
      full : OUT std_logic;
      empty : OUT std_logic
    );
  END COMPONENT;

  COMPONENT I2C_RDFifo
    PORT (
      rst : IN std_logic;
      wr_clk : IN std_logic;
      rd_clk : IN std_logic;
      din : IN std_logic_vector(7 DOWNTO 0);
      wr_en : IN std_logic;
      rd_en : IN std_logic;
      dout : OUT std_logic_vector(7 DOWNTO 0);
      full : OUT std_logic;
      empty : OUT std_logic
    );
  END COMPONENT;

  signal reset : std_logic;

  signal i2c_din       : std_logic_vector(24 downto 0);
  signal rdfifo_din    : std_logic_vector(7 downto 0);
  signal wrfifo_dout   : std_logic_vector(24 downto 0);
  
  signal rdfifo_wren   : std_logic;
  signal rdfifo_full   : std_logic;
  signal wrfifo_rden   : std_logic;
  signal wrfifo_empty  : std_logic;
  
  type i2c_wr_state_type is(IDLE, DLY, ADDR, ADDRACK, WRITE2B1, WRITE2B1ACK, WRITE2B2, WRITE2B2ACK,WRITE1B, WRITE1BACK, READADDR, READADDRACK, READDATA, READDATAACK );
  signal i2c_wr_state: i2c_wr_state_type := IDLE;
  signal wrfifo_wren_pipe: std_logic;
  signal wrfifo_wren     : std_logic;
  
  signal rdfifo_rden_pipe: std_logic;
  signal rdfifo_rden     : std_logic;
  signal watchdog: integer range 0 to 65535;
  
  signal twobytes: std_logic;
  signal RnW:    std_logic;
  signal cmd_ack_pipe: std_logic;
  
  signal start_s    : std_logic;
  signal stop_s     : std_logic;
  signal ack_in_s   : std_logic;

begin

  
  nReset <= not reset;
  reset <= RST or rst_soft;
  clk <= appreg_clk;
  
  
  fifo_rd : I2C_RDFifo
  PORT MAP (
    rst => reset,
    wr_clk => appreg_clk,
    rd_clk => appreg_clk,
    din => rdfifo_din,
    wr_en => rdfifo_wren,
    rd_en => rdfifo_rden,
    dout => I2C_RD.I2C_DOUT,
    full => rdfifo_full,
    empty => I2C_RD.I2C_EMPTY(8)
  );

fifo_wr : I2C_WRFifo
  PORT MAP (
    rst => reset,
    wr_clk => appreg_clk,
    rd_clk => appreg_clk,
    --din =>   register_map_control.I2C_DIN,
    din =>   i2c_din,
    wr_en => wrfifo_wren,
    rd_en => wrfifo_rden,
    dout => wrfifo_dout,
    full => I2C_WR.I2C_FULL(25),
    empty => wrfifo_empty
  );
  
  i2c_din     <= register_map_control.I2C_WR.WRITE_2BYTES & register_map_control.I2C_WR.DATA_BYTE2 & register_map_control.I2C_WR.DATA_BYTE1 & register_map_control.I2C_WR.SLAVE_ADDRESS & register_map_control.I2C_WR.READ_NOT_WRITE;
  wrfifo_wren <= register_map_control.I2C_WR.I2C_WREN(64) and not wrfifo_wren_pipe;
  rdfifo_rden <= register_map_control.I2C_RD.I2C_RDEN(64) and not rdfifo_rden_pipe;
  
  oneshot: process(appreg_clk)
  begin
      if(rising_edge(appreg_clk)) then
          wrfifo_wren_pipe <= register_map_control.I2C_WR.I2C_WREN(64);
          rdfifo_rden_pipe <= register_map_control.I2C_RD.I2C_RDEN(64);
      end if;
  end process;
  
  start <= start_s;
  stop <= stop_s;
  ack_in <= ack_in_s;
  
  i2c_rdwr: process(appreg_clk, reset)
    
  begin
      if(reset = '1') then
          wrfifo_rden <= '0';
          i2c_wr_state <= IDLE;
          watchdog <= 0;
      elsif(rising_edge(appreg_clk)) then
          wrfifo_rden <= '0';
          rdfifo_wren <= '0';
          
          
          RnW <= RnW;
          twobytes <= twobytes;
          write <= '0';
          read <= '0';
          
          start_s <= start_s;
          stop_s <= stop_s;
          ack_in_s <= ack_in_s;
          cmd_ack_pipe <= cmd_ack;
          
          case(i2c_wr_state) is
              when IDLE =>
                  if(wrfifo_empty = '0') then
                      i2c_wr_state <= DLY;
                      wrfifo_rden <= '1'; --pulse for one clockcycle.
                  else
                      i2c_wr_state <= IDLE;
                  end if;
              when DLY => 
                  i2c_wr_state <= ADDR;
              when ADDR =>
                  if(wrfifo_dout(24) = '1') then
                    Din <= wrfifo_dout(7 downto 1)&'0'; --always write first, read will occur later
                  else
                    Din <= wrfifo_dout(7 downto 0); --read if read bit selected.
                  end if;
                  ack_in_s <= '1';
                  write <= '1';
                  start_s <= '1';
                  stop_s <= '0';
                  RnW <= wrfifo_dout(0);
                  twobytes <= wrfifo_dout(24);
                  i2c_wr_state <= ADDRACK;
                  
              when ADDRACK =>
                  if(cmd_ack = '1') then
                    if(twobytes = '1') then
                      if(RnW = '1') then --Write one byte, then repeated start, address and read
                        i2c_wr_state <= WRITE1B; --first write one byte, then read
                      else               --Write two bytes, then stop
                        i2c_wr_state <= WRITE2B1; --write two bytes.
                      end if;
                    else
                      if(RnW = '1') then --Read one byte, then stop
                        i2c_wr_state <= READDATA;
                      else               --Write one byte then stop.
                        i2c_wr_state <= WRITE1B;
                      end if;
                    end if;
                  else
                    i2c_wr_state <= ADDRACK;
                  end if;
                  
              when WRITE2B1 => 
                  ack_in_s <= '1';
                  stop_s <= '0';
                  start_s <= '0';
                  Din <= wrfifo_dout(15 downto 8);
                  write <= '1';
                  i2c_wr_state <= WRITE2B1ACK;
              when WRITE2B1ACK =>    
                  if(cmd_ack = '1') then
                    i2c_wr_state <= WRITE2B2;
                  else
                    i2c_wr_state <= WRITE2B1ACK;
                  end if;
              when WRITE2B2 =>    
                  Din <= wrfifo_dout(23 downto 16);
                  write <= '1';
                  stop_s <= '1';
                  start_s <= '0';
                  ack_in_s <= '1';
                  i2c_wr_state <= WRITE2B2ACK;
              when WRITE2B2ACK =>    
                  if(cmd_ack = '1') then
                    i2c_wr_state <= IDLE;
                  else
                    i2c_wr_state <= WRITE2B2ACK;
                  end if;
              when WRITE1B =>
                  Din <= wrfifo_dout(15 downto 8);
                  write <= '1';
                  start_s <= '0';
                  ack_in_s <= '1';
                  if(RnW = '1') then
                    stop_s <= '0'; --don't stop, do a repeated start.
                  else
                    stop_s <= '1';
                  end if;
                  i2c_wr_state <= WRITE1BACK;
              when WRITE1BACK =>
                  if(cmd_ack = '1') then
                    if(RnW = '1') then
                      i2c_wr_state <= READADDR;
                    else
                      i2c_wr_state <= IDLE;
                    end if;
                  else
                    i2c_wr_state <= WRITE1BACK;
                  end if;
              when READADDR =>
                  Din <= wrfifo_dout(7 downto 1) & '1';
                  write <= '1';
                  start_s <= '1';
                  stop_s <= '0';
                  ack_in_s <= '1';
                  i2c_wr_state <= READADDRACK;
              when READADDRACK =>
                  if(cmd_ack = '1') then
                    i2c_wr_state <= READDATA;
                  else
                    i2c_wr_state <= READADDRACK;
                  end if;
              when READDATA =>
                  Din <= x"00";
                  read <= '1';
                  start_s <= '0';
                  stop_s <= '1';
                  ack_in_s <= '1';
                  i2c_wr_state <= READDATAACK;
              when READDATAACK =>
                  if(cmd_ack_pipe = '1') then
                    rdfifo_wren <= not rdfifo_full;
                    i2c_wr_state <= IDLE;
                    rdfifo_din(7 downto 0) <= Dout;
                  else
                    i2c_wr_state <= READDATAACK;
                  end if;
              when others => -- @suppress "Case statement contains all choices explicitly. You can safely remove the redundant 'others'"
                  i2c_wr_state <= IDLE;
                  
          end case;
          
          if(watchdog = 65535) then
              i2c_wr_state <= IDLE;
              watchdog <= 0;
          else
              watchdog <= watchdog + 1;
          end if;
          if( i2c_wr_state = IDLE) then
            watchdog <= 0;
            ena <= '1';
          else
            ena <= '1';
          end if;
      end if;
  end process;
  
  


end architecture rtl ; -- of i2c_interface

