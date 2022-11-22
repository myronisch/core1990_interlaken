library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
library XPM;
use XPM.VCOMPONENTS.ALL;

use work.axi_stream_package.ALL;

entity Axis64Fifo is
    generic (
        DEPTH : integer:=2048;
        CLOCKING_MODE : string := "independent_clock";
        RELATED_CLOCKS : integer range 0 to 1 := 0;
        FIFO_MEMORY_TYPE : string := "auto";
        PACKET_FIFO : string := "false"
    );
    port (
        -- axi stream slave
        s_axis_aresetn : in std_logic;
        s_axis_aclk : in std_logic;
        s_axis : in axis_64_type;
        s_axis_tready : out std_logic;

		-- axi stream master
        m_axis_aclk : in std_logic;
        m_axis : out axis_64_type;
        m_axis_tready : in std_logic;
		
		--Indication that the FIFO contains a block of data (for MUX).
        m_axis_prog_empty : out std_logic
    );
end Axis64Fifo;

architecture rtl of Axis64Fifo is
begin
    fifo: xpm_fifo_axis
        generic map (
            CLOCKING_MODE => CLOCKING_MODE,
            FIFO_MEMORY_TYPE => FIFO_MEMORY_TYPE,
            PACKET_FIFO => PACKET_FIFO,
            FIFO_DEPTH => DEPTH,
            TDATA_WIDTH => 64,
            TID_WIDTH => 8,
            TDEST_WIDTH => 1,
            TUSER_WIDTH => 4,
            ECC_MODE => "no_ecc",
            RELATED_CLOCKS => RELATED_CLOCKS,
            USE_ADV_FEATURES => "1200", --"1200" to enable prog_empty
            WR_DATA_COUNT_WIDTH => 1,
            RD_DATA_COUNT_WIDTH => 1,
            PROG_FULL_THRESH => 7,
            PROG_EMPTY_THRESH => 126,
            CDC_SYNC_STAGES => 2
        )
        port map (
            s_aresetn => s_axis_aresetn,
            m_aclk => m_axis_aclk,
            s_aclk => s_axis_aclk,
            s_axis_tvalid => s_axis.tvalid,
            s_axis_tready => s_axis_tready,
            s_axis_tdata => s_axis.tdata,
            s_axis_tstrb => (others => '1'),
            s_axis_tkeep => s_axis.tkeep,
            s_axis_tlast => s_axis.tlast,
            s_axis_tid => s_axis.tid,
            s_axis_tdest => (others => '0'),
            s_axis_tuser => s_axis.tuser,
            m_axis_tvalid => m_axis.tvalid,
            m_axis_tready => m_axis_tready,
            m_axis_tdata => m_axis.tdata,
            m_axis_tstrb => open,
            m_axis_tkeep => m_axis.tkeep,
            m_axis_tlast => m_axis.tlast,
            m_axis_tid => m_axis.tid,
            m_axis_tdest => open,
            m_axis_tuser => m_axis.tuser,
            prog_full_axis => open,
            wr_data_count_axis => open,
            almost_full_axis => open,
            prog_empty_axis => m_axis_prog_empty,
            rd_data_count_axis => open,
            almost_empty_axis => open,
            injectsbiterr_axis => '0',
            injectdbiterr_axis => '0',
            sbiterr_axis => open,
            dbiterr_axis => open
        );
end architecture;
