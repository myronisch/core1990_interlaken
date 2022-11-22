--!-----------------------------------------------------------------------------
--!                                                                           --
--!                    Atlas - FELIX                                          --
--!                                                                           --
--!-----------------------------------------------------------------------------
--!
--! unit name: axi_stream_package
--!
--! author: Frans Schreuder <f.schreuder@nikhef.nl>
--!
--! date: 08/04/2019    : created
--!
--! description: Axi stream record types to be used to connect Phase II toplevel
--! blocks, especially between Decoding and Central Router
--!   
--!-----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package axi_stream_package is


--! This is a typical usage of this axi stream type is as follows:
    --! Master:
    --! entity AxisMaster is
    --! generic(
    --!   NUM_STREAMS : positive := 1
    --! );
    --! port(
    --!   m_axis : out axis_32_array_type(0 to NUM_STREAMS-1);
    --!   m_axis_tready : in axis_tready_array_type( 0 to NUM_STREAMS-1);
    --!   aclk   : in std_logic;
    --!   aresetn : in std_logic
    --! );
    --! end entity AxisMaster;
    --!
    --! Slave:
    --! entity AxisSlave is
    --! generic(
    --!   NUM_STREAMS : positive := 1
    --! );
    --! port(
    --!   s_axis : in axis_32_array_type(0 to NUM_STREAMS-1);
    --!   s_axis_tready : out axis_tready_array_type(0 to NUM_STREAMS-1);
    --!   aclk   : in std_logic;
    --!   aresetn : in std_logic
    --! );
    --! end entity AxisSlave;
    --!
    --! Instantiation template:
    --! Decoder0: entity work.AxisMaster 
    --! generic map(
    --!   NUM_STREAMS     => NUM_STREAMS
    --! )
    --! port map(
    --!   m_axis        => Decoder0_axis,
    --!   m_axis_tready => Decoder0_axis_tready,
    --!   aclk          => clk40,
    --!   aresetn       => resetn --negative reset
    --! );
    --!
    --!
    --! CRTH0: entity work.AxisSlave
    --! generic map(
    --!   NUM_STREAMS     => NUM_STREAMS
    --! )
    --! port map(
    --!   s_axis        => Decoder0_axis,
    --!   s_axis_tready => Decoder0_axis_tready,
    --!   aclk          => clk40,
    --!   aresetn       => resetn --negative reset
    --! );
    type axis_64_type is record
        tdata        : std_logic_vector(63 downto 0);  --! Data bus
        tvalid       : std_logic;                      --! Indicates valid data when tready is '1', when tready is '0' tvalid has to stay high in order to not break the packet.
        tlast        : std_logic;                      --! Indicates the last cycle of a chunk / packet.
        tkeep        : std_logic_vector(7 downto 0);   --! Serves as byte enable
        tuser        : std_logic_vector(3 downto 0);   --! Meaning of tuser bits:
        tid          : std_logic_vector(7 downto 0);   --! Converts to channel 
        --!   3: link truncation or FIFO full 
        --!   2: link BUSY 
        --!   1: Chunk error 
        --!   0: CRC error
    end record;

    type axis_64_array_type is array (natural range <>) of axis_64_type;
    --TBD: Do we need/want 2d arrays, to split at link level?
    type axis_64_2d_array_type is array (natural range <>, natural range <>) of axis_64_type;

    type axis_32_type is record
        tdata        : std_logic_vector(31 downto 0);  --! Data bus
        tvalid       : std_logic;                      --! Indicates valid data when tready is '1', when tready is '0' tvalid has to stay high in order to not break the packet.
        tlast        : std_logic;                      --! Indicates the last cycle of a chunk / packet.
        tkeep        : std_logic_vector(3 downto 0);   --! Serves as byte enable
        tuser        : std_logic_vector(3 downto 0);   --! Meaning of tuser bits: 
        --!   3: link truncation or FIFO full 
        --!   2: link BUSY 
        --!   1: Chunk error 
        --!   0: CRC error
    end record;

    type axis_32_array_type is array (natural range <>) of axis_32_type;
    --TBD: Do we need/want 2d arrays, to split at link level?
    type axis_32_2d_array_type is array (natural range <>, natural range <>) of axis_32_type; 


type axis_8_type is record
        tdata        : std_logic_vector(7 downto 0);   --! Data bus
        tvalid       : std_logic;                      --! Indicates valid data when tready is '1', when tready is '0' tvalid has to stay high in order to not break the packet.
        tlast        : std_logic;                      --! Indicates the last cycle of a chunk / packet.
    end record;

    type axis_8_array_type is array (natural range <>) of axis_8_type;
    --TBD: Do we need/want 2d arrays, to split at link level?
    type axis_8_2d_array_type is array (natural range <>, natural range <>) of axis_8_type;


--1D and 2D std_logic_vectors for slave->master port (tready).
    type axis_tready_array_type is array(natural range <>) of std_logic;
    type axis_tready_2d_array_type is array(natural range <>, natural range <>) of std_logic;
 


end package axi_stream_package ;
