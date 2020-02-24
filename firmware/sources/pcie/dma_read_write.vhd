
--!------------------------------------------------------------------------------
--!                                                             
--!           NIKHEF - National Institute for Subatomic Physics 
--!
--!                       Electronics Department                
--!                                                             
--!-----------------------------------------------------------------------------
--! @class dma_read_write
--! 
--!
--! @author      Andrea Borga    (andrea.borga@nikhef.nl)<br>
--!              Frans Schreuder (frans.schreuder@nikhef.nl)
--!
--!
--! @date        07/01/2015    created
--!
--! @version     1.0
--!
--! @brief 
--! dma_read_write contains the actual DMA state machines, it processes the descriptors
--! and reads from and writes to the PC memory if there is data in the fifo.
--! 
--! 
--! @detail
--!
--!-----------------------------------------------------------------------------
--! @TODO
--!  
--!
--! ------------------------------------------------------------------------------
--! Virtex7 PCIe Gen3 DMA Core
--! 
--! \copyright GNU LGPL License
--! Copyright (c) Nikhef, Amsterdam, All rights reserved. <br>
--! This library is free software; you can redistribute it and/or
--! modify it under the terms of the GNU Lesser General Public
--! License as published by the Free Software Foundation; either
--! version 3.0 of the License, or (at your option) any later version.
--! This library is distributed in the hope that it will be useful,
--! but WITHOUT ANY WARRANTY; without even the implied warranty of
--! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
--! Lesser General Public License for more details.<br>
--! You should have received a copy of the GNU Lesser General Public
--! License along with this library.
--! 
-- 
--! @brief ieee



library ieee, UNISIM;
use ieee.numeric_std.all;
use UNISIM.VCOMPONENTS.all;
use ieee.std_logic_unsigned.all; -- @suppress "Deprecated package"
use ieee.std_logic_1164.all;
use work.pcie_package.all;

entity dma_read_write is
  generic(
    NUMBER_OF_DESCRIPTORS : integer := 3;
    DATA_WIDTH            : integer := 512
    );
  port (
    clk                     : in     std_logic;
    dma_descriptors         : in     dma_descriptors_type(0 to (NUMBER_OF_DESCRIPTORS-1));
    dma_soft_reset          : in     std_logic;
    dma_status              : out    dma_statuses_type(0 to (NUMBER_OF_DESCRIPTORS-1));
    fromHostFifoIndex       : out    integer range 0 to 0;
    fromHostFifo_din        : out    std_logic_vector(DATA_WIDTH-1 downto 0);
    fromHostFifo_prog_full  : in     std_logic;
    fromHostFifo_we         : out    std_logic;
    m_axis_r_rq             : in     axis_r_type;
    m_axis_rq               : out    axis_type;
    reset                   : in     std_logic;
    s_axis_r_rc             : out    axis_r_type;
    s_axis_rc               : in     axis_type;
    toHostFifoIndex         : out    integer range 0 to NUMBER_OF_DESCRIPTORS-2;
    toHostFifo_dout         : in     std_logic_vector(DATA_WIDTH-1 downto 0);
    toHostFifo_empty_thresh : out    std_logic_vector(11 downto 0);
    toHostFifo_prog_empty   : in     std_logic_vector(NUMBER_OF_DESCRIPTORS-2 downto 0);
    toHostFifo_re           : out    std_logic);
end entity dma_read_write;



architecture rtl of dma_read_write is
  constant NUMBER_OF_DESCRIPTORS_TOHOST: integer := NUMBER_OF_DESCRIPTORS -1;
  --constant NUMBER_OF_DESCRIPTORS_FROMHOST: integer := 1;

  type rw_state_type is(IDLE, START_WRITE, CONT_WRITE, END_WRITE, START_READ, CONT_READ, END_READ);
  signal rw_state: rw_state_type := IDLE;
  
  signal rw_state_slv: std_logic_vector(2 downto 0);
  attribute dont_touch : string;
  attribute dont_touch of rw_state_slv : signal is "true";
  
  constant IDLE_SLV                           : std_logic_vector(2 downto 0) := "000";
  constant START_WRITE_SLV                    : std_logic_vector(2 downto 0) := "001";
  constant CONT_WRITE_SLV                     : std_logic_vector(2 downto 0) := "010";
  --constant END_WRITE_SLV                      : std_logic_vector(2 downto 0) := "011";
  constant START_READ_SLV                     : std_logic_vector(2 downto 0) := "100";
  --constant CONT_READ_SLV                      : std_logic_vector(2 downto 0) := "101";
  --constant END_READ_SLV                       : std_logic_vector(2 downto 0) := "110";
  
  type strip_state_type is(IDLE, PUSH_DATA);
  signal strip_state: strip_state_type := IDLE;
  
  signal strip_state_slv: std_logic_vector(2 downto 0);
  attribute dont_touch of strip_state_slv : signal is "true";
  
  constant PUSH_DATA_SLV                      : std_logic_vector(2 downto 0) := "001";
  
  signal current_descriptor: dma_descriptor_type;
  signal toHostFifo_dout_pipe: std_logic_vector(127 downto 0); --pipe part of the fifo data 1 clock cycle for 256 bit alignment
  signal fromHostFifo_dout_pipe: std_logic_vector(DATA_WIDTH-97 downto 0);  --pipe part of the fifo data 1 clock cycle for 256 bit alignment
  constant req_tc: std_logic_vector (2 downto 0) := "000";
  constant req_attr: std_logic_vector(2 downto 0) := "000"; --ID based ordering, Relaxed ordering, No Snoop (should be "001"?)
  signal s_axis_rc_tlast_pipe, s_axis_rc_tvalid_pipe: std_logic;
  signal receive_word_count: std_logic_vector(10 downto 0);
  signal active_descriptor_s: integer range 0 to (NUMBER_OF_DESCRIPTORS-1);
  --signal next_active_descriptor_s: integer range 0 to (NUMBER_OF_DESCRIPTORS-1);
  signal current_dword_count_s: std_logic_vector(10 downto 0);
  signal toHostFifoIndex_s    :   integer range 0 to NUMBER_OF_DESCRIPTORS_TOHOST-1;
  
  signal s_m_axis_rq : axis_type;
  signal evencycle_dma_s: std_logic_vector(NUMBER_OF_DESCRIPTORS-1 downto 0);
  signal dma_wait_s: std_logic_vector(NUMBER_OF_DESCRIPTORS-1 downto 0);
  type slv64_arr is array(0 to (NUMBER_OF_DESCRIPTORS -1)) of std_logic_vector(63 downto 0);
  signal next_address_s           : slv64_arr;
  signal current_address_s           : slv64_arr;
  signal address_wrapped_s: std_logic_vector(NUMBER_OF_DESCRIPTORS-1 downto 0);
  --signal current_address: std_logic_vector(63 downto 0);
  
begin

  toHostFifoIndex <= toHostFifoIndex_s;
  fromHostFifoIndex <= 0; --constant for now, keep it to 1 fromHost descriptor.
  

  m_axis_rq <= s_m_axis_rq;

  s_m_axis_rq.tuser <= (others => '0');

  re: process(rw_state, m_axis_r_rq, dma_descriptors, active_descriptor_s, toHostFifo_prog_empty, current_descriptor, dma_wait_s)
  	variable toHostFifo_prog_empty_v: std_logic_vector(NUMBER_OF_DESCRIPTORS-1 downto 0);
  begin
    toHostFifo_re <= '0';
  	if(m_axis_r_rq.tready = '1') then
    case(rw_state) is
    when IDLE =>
    	toHostFifo_prog_empty_v(NUMBER_OF_DESCRIPTORS-2 downto 0) := toHostFifo_prog_empty;
    	toHostFifo_prog_empty_v(NUMBER_OF_DESCRIPTORS-1) := '1';
        if((toHostFifo_prog_empty_v(active_descriptor_s) = '0') and (m_axis_r_rq.tready = '1') and active_descriptor_s < NUMBER_OF_DESCRIPTORS_TOHOST) then
          if((dma_descriptors(active_descriptor_s).enable = '1') and (dma_descriptors(active_descriptor_s).read_not_write = '0') and dma_wait_s(active_descriptor_s) = '0') then
            toHostFifo_re <= '1';
          end if;
        end if;
      when START_WRITE =>
          if(current_descriptor.dword_count > 8) then
            toHostFifo_re <= '1';
          end if;
      when CONT_WRITE =>
          if(current_descriptor.dword_count > DATA_WIDTH/16) then
            toHostFifo_re <= '1';
          end if;
      when others =>
    end case;
    end if;  
  end process;
  
  thresh: process(current_dword_count_s)
    variable wc: std_logic_vector(10 downto 0);
    variable th: std_logic_vector(7 downto 0);
  begin
    wc := current_dword_count_s-1;
    th := wc(10 downto 3);
    toHostFifo_empty_thresh <= "0000"&th;
  end process;
  
  add_header: process(clk)
    variable next_active_descriptor_v: integer range 0 to (NUMBER_OF_DESCRIPTORS-1);
    variable read_idle_counter: integer range 0 to 255;
    --variable dma_wait_v : std_logic_vector(NUMBER_OF_DESCRIPTORS-1 downto 0);
    --variable evencycle_dma_v: std_logic_vector(NUMBER_OF_DESCRIPTORS-1 downto 0);
    variable start_transfer : std_logic := '0';
    variable advance_address : std_logic;
    variable current_address_v : slv64_arr;
    variable toHostFifo_prog_empty_v : std_logic_vector(NUMBER_OF_DESCRIPTORS-1 downto 0);
  begin
    if(rising_edge(clk)) then
      if(reset = '1') or (dma_soft_reset = '1') then
        rw_state <= IDLE;
        current_descriptor <= ( start_address     => (others => '0'),
                                  dword_count => (others => '0'),
                                  read_not_write    => '1',
                                  enable            => '0',
                                  end_address       => (others => '0'),
                                  wrap_around       => '0',
                                  evencycle_pc      => '0',
                                  pc_pointer        => (others => '0'));
        evencycle_dma_s <= (others => '0');
        active_descriptor_s <= 0;
        current_dword_count_s <= "00001000000"; --256 bytes
        read_idle_counter := 0;
        current_address_v := (others=> (others => '0'));
        --current_address <= (others => '0');
        next_address_s <= (others=> (others => '0'));
        toHostFifoIndex_s <= 0;
      else
        --defaults:
        current_descriptor  <= current_descriptor; --keep the same, only change if idle
        --rw_state            <= IDLE;
        toHostFifo_dout_pipe  <= toHostFifo_dout(DATA_WIDTH-1 downto DATA_WIDTH-128);
        active_descriptor_s <= active_descriptor_s;
        if(read_idle_counter > 0) then
            read_idle_counter := read_idle_counter -1;
        end if;
        

        for i in 0 to (NUMBER_OF_DESCRIPTORS-1) loop
          if i < NUMBER_OF_DESCRIPTORS_TOHOST then
            toHostFifo_prog_empty_v (i) := toHostFifo_prog_empty(i);
          else
            toHostFifo_prog_empty_v (i) := '1';
          end if;
          next_active_descriptor_v := active_descriptor_s;
          if((i /= active_descriptor_s) and (dma_descriptors(i).enable='1')) then
            if(dma_descriptors(i).read_not_write = '0') then
                if (toHostFifo_prog_empty_v(i) = '0') then
                    next_active_descriptor_v := i; --find another active descriptor, else just continue with the current descriptor. 0 has priority above 1 and so on.
                    exit;
                end if;
            end if;
            if(((dma_descriptors(i).read_not_write = '1') and (fromHostFifo_prog_full = '0'))) then
              next_active_descriptor_v := i; --find another active descriptor, else just continue with the current descriptor. 0 has priority above 1 and so on.
              exit;
            end if;
          end if;
          
        end loop;
        for i in 0 to NUMBER_OF_DESCRIPTORS-1 loop
          next_address_s(i) <= (current_address_s(i) + (dma_descriptors(i).dword_count&"00"));

          address_wrapped_s(i) <= '0'; 
          
        end loop;
        if(m_axis_r_rq.tready = '1') then
        case(rw_state) is
          when IDLE =>
            start_transfer := '0';
            active_descriptor_s <= next_active_descriptor_v;
              m_axis_rq.state <= IDLE_SLV;
              s_m_axis_rq.tvalid  <= '0';
            if(next_active_descriptor_v < NUMBER_OF_DESCRIPTORS_TOHOST) then
                toHostFifoIndex_s <= next_active_descriptor_v;
            end if;
            rw_state_slv <= IDLE_SLV;
            current_descriptor <= dma_descriptors(active_descriptor_s);
            if(dma_descriptors(active_descriptor_s).read_not_write = '0' and dma_descriptors(active_descriptor_s).dword_count>0) then
                current_dword_count_s <= dma_descriptors(active_descriptor_s).dword_count; --assign dword count to a signal to calculate the prog_empty threshold.
            end if;
            if dma_descriptors(active_descriptor_s).enable = '1' then
              if (dma_wait_s(active_descriptor_s) = '0') then
                if(((dma_descriptors(active_descriptor_s).read_not_write = '0') and (toHostFifo_prog_empty_v(active_descriptor_s) = '0'))) then
                  rw_state <= START_WRITE;
                  start_transfer := '1';
                end if;
                if(((dma_descriptors(active_descriptor_s).read_not_write = '1') and (fromHostFifo_prog_full = '0')) and (read_idle_counter = 0)) then
                  rw_state <= START_READ;
                  start_transfer := '1';
                end if;
                if start_transfer = '1' then
                  active_descriptor_s <= active_descriptor_s;
                  --current_address <= current_address_s(active_descriptor_s);
                  toHostFifoIndex_s <= toHostFifoIndex_s;
                end if;
              end if;
            end if;  
          when START_WRITE =>
              m_axis_rq.state <= START_WRITE_SLV;

              current_descriptor.dword_count <= current_descriptor.dword_count - ((DATA_WIDTH/32)-4);
              
                                  -----DW 7-4
              s_m_axis_rq.tdata(DATA_WIDTH-1 downto 0)  <= toHostFifo_dout(DATA_WIDTH-129 downto 0) & --128 bits data
                                  -----DW 3
                                  '0'&       --31 - 1 bit reserved	        127
                                  req_attr & --30-28 3 bits Attr	        124-126
                                  req_tc &   -- 27-25 3- bits	        121-123
                                  '0'&       -- 24 req_id enable	        120
                                  x"0000" &  --xcompleter_id_bus,    -- 23-16 Completer Bus number - selected if Compl ID    = 1  104-119
                                             --completer_id_dev_func, --15-8 Compl Dev / Func no - sel if Compl ID = 1
                                  x"00" &    -- 7-0 Client Tag	96-103
                                  --DW 2	
                                  x"0000" &  --req_rid,       -- 31-16 Requester ID - 16 bits    80-95
                                  '0' &      -- poisoned request 1'b0,          -- 15 Rsvd		79
                                  "0001" &   -- memory WRITE request			75-78
                                  current_descriptor.dword_count &  -- 10-0 DWord Count 0 - IO Write completions -64-74
                                  --DW 1-0
                                  current_address_s(active_descriptor_s)(63 downto 2) & "00";  --62 bit word address address + 2 bit Address type (0, untranslated)
              if(current_descriptor.dword_count <= 4) then
                s_m_axis_rq.tlast <= '1';
                rw_state <= IDLE;
                if(next_active_descriptor_v < NUMBER_OF_DESCRIPTORS_TOHOST) then
                    toHostFifoIndex_s <= next_active_descriptor_v;
                end if;
                advance_address := '1';
                active_descriptor_s <= next_active_descriptor_v;
                            
                current_descriptor.dword_count <= (others => '0');
                s_m_axis_rq.tkeep <= (others => '1');
              else
                s_m_axis_rq.tkeep <= (others => '1');
                rw_state <= CONT_WRITE;
                s_m_axis_rq.tlast <= '0';
              end if;
              s_m_axis_rq.tvalid <= '1';
          when CONT_WRITE  =>
              m_axis_rq.state <= CONT_WRITE_SLV;
            rw_state <= CONT_WRITE; --default
              current_descriptor.dword_count <= current_descriptor.dword_count - (DATA_WIDTH/32);
              s_m_axis_rq.tdata(DATA_WIDTH-1 downto 0)  <= toHostFifo_dout(DATA_WIDTH-129 downto 0) & --DATAWIDTH-129 bits data
                                toHostFifo_dout_pipe; --128 bits data from last clock cycle
              if(current_descriptor.dword_count <= (DATA_WIDTH/32)) then
                s_m_axis_rq.tlast <= '1';
                rw_state <= IDLE;
                advance_address := '1';
                active_descriptor_s <= next_active_descriptor_v;
                            
                current_descriptor.dword_count <= (others => '0');
                s_m_axis_rq.tkeep <= (others => '0'); --for 16 bit tkeep
                s_m_axis_rq.tkeep(7 downto 0) <= x"0F";
                if(next_active_descriptor_v < NUMBER_OF_DESCRIPTORS_TOHOST) then
                    toHostFifoIndex_s <= next_active_descriptor_v;
                end if;
              
            else
              s_m_axis_rq.tlast <= '0';
                s_m_axis_rq.tkeep  <= (others => '1');
            end if;
            s_m_axis_rq.tvalid <= '1';
          when START_READ  =>
              m_axis_rq.state <= START_READ_SLV;
                                  -----DW 7-4
              s_m_axis_rq.tdata(DATA_WIDTH-1 downto 128) <= (others => '0');
              s_m_axis_rq.tdata(127 downto 0)  <= 
                                  -----DW 3
                                  '0' &      --31 - 1 bit reserved
                                  req_attr & --30-28 3 bits Attr
                                  req_tc &   -- 27-25 3- bits
                                  '0' &      -- 24 req_id enable
                                  x"0000" &  --xcompleter_id_bus,    -- 23-16 Completer Bus number - selected if Compl ID    = 1
                                             --completer_id_dev_func, --15-8 Compl Dev / Func no - sel if Compl ID = 1
                                  x"00" &    -- 7-0 Client Tag
                                  --DW 2
                                  x"0000" &  --req_rid,       -- 31-16 Requester ID - 16 bits
                                  '0' &      -- poisoned request 1'b0,          -- 15 Rsvd
                                  "0000" &   -- memory READ request
                                  current_descriptor.dword_count&  -- 10-0 DWord Count 0 - IO Write completions
                                  --DW 1-0
                                  current_address_s(active_descriptor_s)(63 downto 2)&"00"; --62 bit word address address + 2 bit Address type (0, untranslated)
              s_m_axis_rq.tlast <= '1';
              rw_state <= IDLE;
              if(next_active_descriptor_v < NUMBER_OF_DESCRIPTORS_TOHOST) then
                  toHostFifoIndex_s <= next_active_descriptor_v;
              end if;
              advance_address := '1';
              active_descriptor_s <= next_active_descriptor_v;
                          
              s_m_axis_rq.tkeep  <= (others => '0'); --for 16 bit tkeep 
              s_m_axis_rq.tkeep(7 downto 0)  <= x"0F";
              s_m_axis_rq.tvalid <= '1';
              read_idle_counter := to_integer(unsigned(current_descriptor.dword_count(10 downto 3)));

          when others =>
              m_axis_rq.state <= "111";
            rw_state <= IDLE;
            advance_address := '1';
            active_descriptor_s <= next_active_descriptor_v;
                        
        end case;
        end if;
        dma_wait_s <= (others => '0');
               
        --dma_wait_s <= dma_wait_v;
        if advance_address = '1'  then
          current_address_v(active_descriptor_s) := next_address_s(active_descriptor_s);
        end if;
        
        for i in 0 to NUMBER_OF_DESCRIPTORS-1 loop
          if (dma_descriptors(i).enable = '0' ) then
            evencycle_dma_s(i) <= '0';
          end if;
          if(dma_descriptors(i).wrap_around = '1' and (evencycle_dma_s(i) xor dma_descriptors(i).read_not_write) /= dma_descriptors(i).evencycle_pc) then
            if(current_address_v(i)=dma_descriptors(i).pc_pointer) then
              dma_wait_s(i) <= '1'; --the PC is not ready to accept data, so we have to wait. dma_wait will clear the enable flag of the descriptors towards dma_read_write
            end if;
          end if;
          
        end loop;
        
        if advance_address = '1' and next_address_s(active_descriptor_s) = dma_descriptors(active_descriptor_s).end_address then
          evencycle_dma_s(active_descriptor_s) <= not evencycle_dma_s(active_descriptor_s);
          address_wrapped_s(active_descriptor_s) <= '1'; --tell dma_control that we wrapped around
          dma_wait_s(active_descriptor_s) <= '1'; --give dma_control one extra clock cycle to disable it.
          current_address_v(active_descriptor_s) := dma_descriptors(active_descriptor_s).start_address;
        end if;
        for i in 0 to NUMBER_OF_DESCRIPTORS-1 loop
          if dma_descriptors(i).enable = '0' then
            current_address_v(i) := dma_descriptors(i).start_address;
          end if;
        end loop;           
        advance_address := '0';
              
        current_address_s <= current_address_v;
        
      end if; --clk
    end if; --reset
  end process;

  g0: for i in 0 to (NUMBER_OF_DESCRIPTORS-1) generate
    dma_status(i).evencycle_dma <= evencycle_dma_s(i);
    dma_status(i).current_address <= current_address_s(i);
    dma_status(i).address_wrapped <= address_wrapped_s(i);
  end generate;
   

  s_axis_r_rc.tready <= '1';  --not fromHostFifo_prog_full;

  strip_hdr: process(clk)
    --variable receive_word_count_v: std_logic_vector(10 downto 0);
  begin
    if(rising_edge(clk)) then
      if(reset = '1') or (dma_soft_reset = '1') then
        strip_state <= IDLE;
      fromHostFifo_we <= '0';
      else
        --defaults:
        strip_state <= IDLE;
        fromHostFifo_we <= '0';
        s_axis_rc_tlast_pipe <= s_axis_rc.tlast;
        s_axis_rc_tvalid_pipe <= s_axis_rc.tvalid;
        receive_word_count <= receive_word_count;
        case (strip_state) is
          when IDLE =>
            strip_state_slv <= IDLE_SLV;
            strip_state <= IDLE;  --stay in idle if no data with a valid tag is found
            if(s_axis_rc.tvalid = '1') then
              fromHostFifo_dout_pipe <= s_axis_rc.tdata(DATA_WIDTH-1 downto 96); --pipeline 160 bits of data
              receive_word_count <= s_axis_rc.tdata(42 downto 32);
              strip_state <= PUSH_DATA;
            end if;
          when PUSH_DATA =>
            strip_state_slv <= PUSH_DATA_SLV;
            strip_state <= PUSH_DATA;
            if((s_axis_rc.tvalid='1' or s_axis_rc_tlast_pipe = '1')) then
              fromHostFifo_we <= '1';
              fromHostFifo_dout_pipe <= s_axis_rc.tdata(DATA_WIDTH-1 downto 96); --pipeline 160 bits of data
              fromHostFifo_din <= s_axis_rc.tdata(95 downto 0) & fromHostFifo_dout_pipe;
              if(receive_word_count <= (DATA_WIDTH/32) or (s_axis_rc_tlast_pipe = '1')) then
                receive_word_count <= (others => '0');
                strip_state <= IDLE;
              else
                receive_word_count <= receive_word_count - (DATA_WIDTH/32);
              end if;
            else
              fromHostFifo_dout_pipe <= fromHostFifo_dout_pipe;
            end if;
        end case;
      end if; --clk
    end if; --reset
  end process;

end architecture rtl ; -- of dma_read_write
