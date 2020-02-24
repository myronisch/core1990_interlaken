library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
Library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity xadc_drp is
generic(
    CARD_TYPE : integer := 711
    );
port(
    clk40 : in std_logic;
    reset : in std_logic;
    temp  : out std_logic_vector(11 downto 0);
    vccint   : out std_logic_vector(11 downto 0);
    vccaux   : out std_logic_vector(11 downto 0);
    vccbram  : out std_logic_vector(11 downto 0)
    );
end xadc_drp;

architecture rtl of xadc_drp is
    
COMPONENT xadc_wiz_0 -- @suppress "Component declaration "xadc_wiz_0" has none or multiple matching entity declarations"
  PORT (
    di_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    daddr_in : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    den_in : IN STD_LOGIC;
    dwe_in : IN STD_LOGIC;
    drdy_out : OUT STD_LOGIC;
    do_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    dclk_in : IN STD_LOGIC;
    reset_in : IN STD_LOGIC;
    vp_in : IN STD_LOGIC;
    vn_in : IN STD_LOGIC;
    channel_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    eoc_out : OUT STD_LOGIC;
    alarm_out : OUT STD_LOGIC;
    eos_out : OUT STD_LOGIC;
    busy_out : OUT STD_LOGIC
  );
END COMPONENT;

component system_management_wiz_0 -- @suppress "Component declaration "xadc_wiz_0" has none or multiple matching entity declarations"
	port(
		sysmon_slave_sel : in  STD_LOGIC_VECTOR(1 downto 0);
		daddr_in         : in  STD_LOGIC_VECTOR(7 downto 0);
		den_in           : in  STD_LOGIC;
		di_in            : in  STD_LOGIC_VECTOR(15 downto 0);
		dwe_in           : in  STD_LOGIC;
		do_out           : out STD_LOGIC_VECTOR(15 downto 0);
		drdy_out         : out STD_LOGIC;
		dclk_in          : in  STD_LOGIC;
		reset_in         : in  STD_LOGIC;
		vp               : in  STD_LOGIC;
		vn               : in  STD_LOGIC;
		busy_out         : out STD_LOGIC;
		channel_out      : out STD_LOGIC_VECTOR(5 downto 0);
		eoc_out          : out STD_LOGIC;
		eos_out          : out STD_LOGIC;
		alarm_out        : out STD_LOGIC
	);
end component system_management_wiz_0;

type state_type is (IDLE, READTEMP, READVCCINT, READVCCAUX, READVCCBRAM);
signal state: state_type;

signal di_in       : std_logic_vector(15 downto 0);
signal daddr_in    : std_logic_vector(6 downto 0);
signal den_in      : std_logic;
signal dwe_in      : std_logic;
signal drdy_out    : std_logic;
signal do_out      : std_logic_vector(15 downto 0);
signal vp_in       : std_logic;
signal vn_in       : std_logic;
--signal channel_out : std_logic_vector(4 downto 0);
signal eoc_out     : std_logic;
signal alarm_out   : std_logic;
signal eos_out     : std_logic;
signal busy_out    : std_logic;

signal temp_s     : std_logic_vector(11 downto 0);
signal vccint_s   : std_logic_vector(11 downto 0);
signal vccaux_s   : std_logic_vector(11 downto 0);
signal vccbram_s  : std_logic_vector(11 downto 0);
signal sysmon_slave_sel : STD_LOGIC_VECTOR(1 downto 0);

begin
g0: if CARD_TYPE = 709 or CARD_TYPE = 710 generate
    xadc0 : xadc_wiz_0
      PORT MAP (
        di_in => di_in,
        daddr_in => daddr_in,
        den_in => den_in,
        dwe_in => dwe_in,
        drdy_out => drdy_out,
        do_out => do_out,
        dclk_in => clk40,
        reset_in => reset,
        vp_in => vp_in,
        vn_in => vn_in,
        channel_out => open,
        eoc_out => eoc_out,
        alarm_out => alarm_out,
        eos_out => eos_out,
        busy_out => busy_out
      );
end generate;

g1: if CARD_TYPE = 105 or CARD_TYPE = 711 generate

xadc0 : system_management_wiz_0
  PORT MAP (
    sysmon_slave_sel => sysmon_slave_sel,
    daddr_in => "0"&daddr_in,
    den_in => den_in,
    di_in => di_in,
    dwe_in => dwe_in,
    do_out => do_out,
    drdy_out => drdy_out,
    dclk_in => clk40,
    reset_in => reset,
    vp => vp_in,
    vn => vn_in,
    busy_out => busy_out,
    channel_out => open,
    eoc_out => eoc_out,
    eos_out => eos_out,
    alarm_out => alarm_out

    --sysmon_slave_sel => "00"
  );
end generate;

  
seq: process(reset, clk40)
begin
    if(reset = '1') then
        state <= IDLE;
    elsif(rising_edge(clk40)) then
        dwe_in <= '0'; --we don't write, only read.
        di_in <= x"0000";
        den_in <= '0'; --default
        case state is
            when IDLE =>
                if(eoc_out = '1') then 
                    state <= READTEMP;
                    den_in <= '1';
                    daddr_in <= "0000000";
                end if;
            when READTEMP =>
                if(drdy_out = '1') then
                    daddr_in <= "0000001"; --0x01, vccint address
                    temp_s <= do_out(15 downto 4);
                    state <= READVCCINT;
                    den_in <= '1';
                end if; 
            when READVCCINT =>
                if(drdy_out = '1') then
                    daddr_in <= "0000010"; --0x02, vccaux address
                    vccint_s <= do_out(15 downto 4);
                    state <= READVCCAUX;
                    den_in <= '1';
                end if; 
            when READVCCAUX =>
                if(drdy_out = '1') then
                    daddr_in <= "0000110"; --0x06, vccbram address
                    vccaux_s <= do_out(15 downto 4);
                    state <= READVCCBRAM;
                    den_in <= '1';
                end if;
            when READVCCBRAM =>
                if(drdy_out = '1') then
                    vccbram_s <= do_out(15 downto 4);
                    state <= IDLE;
                end if;
            when others => -- @suppress "Case statement contains all choices explicitly. You can safely remove the redundant 'others'"
                state <= IDLE;
        end case;
    end if;
end process;

temp    <= temp_s;
vccint  <= vccint_s;
vccaux  <= vccaux_s;  
vccbram <= vccbram_s;




  
end architecture;
