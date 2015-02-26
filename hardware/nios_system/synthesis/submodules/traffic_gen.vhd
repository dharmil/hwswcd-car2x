
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity traffic_gen is
  generic (SLAVE_ADDR_WIDTH : integer := 26;
           DATA_WIDTH : integer := 32;
		       MASTER_ADDR_WIDTH : integer := 28;
		       BYTE_ENABLE_BITS  : integer := 4;
		       BURST_COUNT_BITS : integer := 4;
		       BURST_LENGTH     : integer := 8;
		       NUM_OF_MASTERS   : integer := 4;
		       master_index     : integer := 0;
		       sopc_enable      : integer := 1);
  port (
  iCLOCK : in std_logic;
  iRESET : in std_logic;

  
  -- Avalon Master:
  -- MASTER interface
  MASTER_ADDRES_AVM             : OUT STD_LOGIC_VECTOR((MASTER_ADDR_WIDTH - 1) DOWNTO 0) := (others => '0'); --because of the byte addresibility
  MASTER_READ_AVM               : OUT STD_LOGIC := '0';
  MASTER_WRITE_AVM              : OUT STD_LOGIC := '0';
  MASTER_WRITEDATA_AVM          : OUT STD_LOGIC_VECTOR ((DATA_WIDTH - 1) DOWNTO 0) := (others => '0');
  MASTER_BYTEENABLE_AVM         : OUT std_logic_vector((BYTE_ENABLE_BITS - 1) downto 0) := (others => '1');
  MASTER_BURSTCOUNT_AVM         : OUT std_logic_vector((BURST_COUNT_BITS - 1) downto 0) := "1000";
  
  MASTER_READ_DATA_AVM          : IN  STD_LOGIC_VECTOR ((DATA_WIDTH - 1) DOWNTO 0);
  MASTER_WAITREQUEST_AVM        : IN  STD_LOGIC;
  MASTER_READDATAVALID_AVM      : IN  STD_LOGIC;
  
  ENABLE                        : IN STD_LOGIC := '1';
  precharge                     : out std_logic;
  refresh                       : out std_logic
   );
end entity;

architecture behave of traffic_gen is
  constant RANDOM_TRAFFIC : std_logic := '0';
  constant CONSTANT_TRAFFIC : std_logic := '1';
  constant SDRAM_TEST       : std_logic := '0';
  constant SDRAM_CALIBRATION : integer := 64132; -- got this number from simulation
  constant tRFC              : integer := 45; -- got this number from simulation
  constant RANDOM_WAITS   : integer := 512;
  type state_type is (idle, requesting, writting, refresh_state);
  signal c_s, n_s : state_type := idle;
  type wait_count_type is array (0 to RANDOM_WAITS - 1) of integer;
  CONSTANT wait_counts_1 : wait_count_type := (5, 1, 9, 12, 4, 8, 9, 13, 17, 8, 19, 12, 19, 11, 4, 13, 10, 4, 10, 18, 12, 16, 23, 10, 11, 22, 14, 14, 10, 14, 4, 10, 13, 7, 5, 6, 10, 19, 16, 21, 6, 16, 7, 15, 12, 2, 19, 21, 21, 19, 17, 
18, 2, 15, 16, 13, 5, 1, 22, 21, 23, 5, 1, 11, 22, 11, 15, 17, 18, 21, 5, 18, 16, 1, 15, 19, 12, 22, 22, 4, 9, 19, 22, 1, 22, 9, 5, 15, 5, 6, 10, 16, 22, 3, 19, 16, 20, 8, 2, 16, 21, 
22, 3, 3, 17, 7, 23, 7, 2, 18, 20, 17, 15, 18, 14, 1, 6, 3, 4, 13, 5, 3, 14, 10, 11, 18, 22, 6, 6, 22, 10, 17, 1, 14, 9, 16, 4, 7, 8, 7, 10, 21, 2, 21, 15, 3, 19, 8, 6, 10, 14, 
10, 15, 1, 1, 5, 20, 7, 17, 1, 12, 19, 1, 23, 6, 4, 11, 13, 7, 15, 17, 19, 20, 13, 16, 3, 2, 16, 18, 10, 5, 17, 10, 11, 22, 4, 19, 21, 23, 17, 22, 23, 8, 18, 23, 23, 15, 4, 6, 7, 8, 
5, 2, 14, 11, 8, 17, 17, 3, 19, 16, 23, 10, 21, 6, 15, 10, 23, 23, 8, 1, 19, 7, 14, 12, 3, 23, 6, 14, 8, 11, 1, 6, 23, 20, 21, 20, 10, 1, 16, 6, 20, 4, 4, 2, 19, 5, 22, 16, 6, 11, 
18, 14, 5, 2, 6, 18, 4, 1, 16, 5, 14, 8, 21, 17, 4, 23, 14, 8, 5, 20, 5, 12, 19, 7, 14, 5, 8, 15, 2, 9, 22, 8, 16, 14, 21, 20, 22, 7, 1, 20, 18, 10, 5, 11, 22, 2, 11, 14, 23, 2, 
3, 22, 11, 5, 14, 5, 16, 23, 13, 20, 15, 14, 18, 5, 2, 7, 13, 10, 13, 9, 20, 17, 14, 16, 9, 14, 22, 12, 15, 4, 21, 17, 23, 8, 1, 3, 3, 7, 8, 21, 18, 12, 5, 17, 2, 10, 12, 19, 17, 18, 
18, 21, 14, 17, 7, 20, 12, 10, 13, 15, 16, 5, 5, 23, 12, 7, 16, 9, 17, 10, 11, 11, 9, 13, 17, 17, 16, 23, 15, 13, 7, 16, 13, 1, 18, 20, 16, 8, 16, 5, 19, 11, 14, 14, 23, 22, 3, 13, 13, 9, 
22, 1, 6, 22, 3, 18, 6, 15, 13, 13, 9, 19, 4, 21, 6, 2, 14, 18, 20, 19, 15, 10, 23, 12, 1, 3, 7, 23, 23, 17, 15, 5, 12, 12, 4, 4, 6, 19, 17, 20, 1, 3, 3, 3, 8, 22, 4, 15, 17, 2, 
6, 22, 12, 10, 22, 14, 23, 20, 4, 20, 4, 15, 7, 2, 23, 9, 9, 20, 8, 8, 20, 2, 17, 17, 1, 4, 21, 15, 17, 23, 7, 4, 12, 18, 18, 10, 11, 23, 18, 20, 20, 7, 10, 2, 13, 12, 11, 1, 2, 14, 
2, 20, 13, 20, 16, 12, 22, 7, 2, 13, 15);
CONSTANT wait_counts_2 : wait_count_type := (12, 10, 1, 1, 23, 13, 17, 12, 6, 14, 21, 7, 19, 23, 19, 7, 2, 6, 12, 11, 3, 11, 18, 1, 1, 3, 3, 19, 2, 14, 16, 7, 19, 19, 14, 20, 10, 9, 11, 17, 16, 22, 12, 22, 10, 22, 19, 3, 14, 16, 14, 
7, 11, 2, 10, 20, 16, 7, 20, 8, 21, 6, 20, 2, 9, 8, 7, 6, 22, 13, 7, 12, 21, 15, 18, 6, 13, 22, 4, 3, 20, 2, 14, 5, 3, 14, 10, 9, 21, 3, 23, 16, 7, 19, 17, 9, 6, 1, 16, 16, 22, 
16, 13, 12, 20, 22, 8, 17, 14, 11, 23, 11, 5, 16, 2, 13, 4, 20, 17, 7, 10, 20, 9, 5, 21, 9, 22, 16, 6, 12, 8, 1, 5, 21, 15, 16, 13, 13, 2, 10, 1, 22, 13, 3, 10, 14, 20, 5, 20, 1, 15, 
14, 16, 3, 22, 12, 5, 8, 5, 9, 15, 8, 13, 19, 11, 12, 10, 8, 4, 19, 2, 12, 3, 7, 1, 18, 17, 1, 8, 16, 17, 20, 9, 14, 7, 12, 8, 23, 8, 22, 22, 2, 8, 1, 4, 18, 17, 2, 16, 18, 19, 
8, 7, 14, 12, 20, 13, 19, 17, 19, 16, 23, 4, 5, 4, 10, 23, 4, 11, 20, 14, 11, 5, 23, 13, 9, 16, 1, 10, 6, 5, 5, 7, 3, 10, 23, 16, 18, 21, 11, 16, 12, 3, 6, 15, 17, 15, 18, 19, 7, 21, 
14, 7, 9, 23, 16, 22, 22, 23, 13, 21, 2, 17, 23, 2, 17, 10, 6, 11, 21, 11, 23, 15, 16, 8, 8, 1, 12, 7, 12, 12, 22, 23, 11, 23, 20, 12, 19, 16, 21, 5, 6, 16, 16, 11, 17, 21, 5, 20, 17, 20, 
8, 12, 13, 19, 20, 4, 4, 15, 19, 11, 9, 19, 12, 16, 8, 5, 9, 22, 17, 2, 5, 19, 18, 19, 16, 5, 13, 20, 16, 15, 3, 6, 9, 18, 20, 9, 20, 5, 15, 16, 13, 19, 22, 8, 23, 9, 2, 17, 17, 6, 
23, 8, 12, 22, 18, 9, 15, 1, 8, 5, 13, 9, 4, 1, 19, 12, 23, 5, 22, 6, 3, 15, 2, 23, 5, 11, 16, 13, 14, 2, 12, 19, 8, 16, 22, 22, 11, 16, 23, 17, 4, 4, 14, 13, 1, 1, 5, 6, 18, 21, 
4, 20, 3, 17, 7, 12, 6, 22, 15, 4, 9, 21, 3, 4, 21, 18, 13, 21, 14, 9, 2, 20, 6, 2, 22, 15, 17, 6, 19, 20, 6, 17, 2, 18, 6, 6, 11, 4, 2, 10, 13, 12, 14, 15, 5, 18, 10, 20, 14, 23, 
17, 14, 4, 22, 22, 2, 2, 3, 13, 5, 2, 19, 2, 13, 1, 15, 5, 1, 6, 7, 23, 15, 7, 17, 14, 4, 6, 10, 14, 23, 13, 5, 21, 23, 17, 1, 6, 10, 16, 18, 9, 2, 12, 17, 8, 2, 19, 7, 6, 7, 
4, 18, 18, 10, 23, 9, 16, 14, 13, 19, 18);
CONSTANT wait_counts_0 : wait_count_type := (4, 3, 17, 4, 18, 13, 16, 2, 2, 15, 5, 16, 10, 3, 5, 18, 9, 17, 8, 23, 8, 11, 21, 7, 6, 4, 9, 10, 18, 17, 9, 4, 8, 4, 14, 22, 20, 20, 23, 20, 7, 17, 16, 1, 7, 16, 10, 12, 10, 7, 15, 
10, 17, 17, 1, 22, 11, 18, 1, 13, 6, 23, 6, 5, 13, 18, 9, 8, 19, 10, 2, 2, 4, 23, 2, 6, 8, 1, 22, 22, 14, 5, 6, 13, 6, 10, 6, 21, 23, 21, 3, 9, 6, 16, 17, 8, 2, 15, 13, 3, 3, 
17, 7, 16, 12, 20, 6, 2, 22, 22, 3, 3, 11, 14, 21, 20, 17, 16, 23, 14, 5, 7, 9, 7, 11, 5, 9, 19, 17, 12, 23, 3, 11, 16, 16, 8, 3, 19, 23, 15, 16, 14, 23, 22, 2, 23, 4, 10, 19, 19, 20, 
20, 3, 1, 10, 3, 22, 11, 22, 10, 8, 14, 13, 8, 1, 1, 2, 2, 2, 23, 16, 17, 17, 11, 22, 6, 12, 23, 21, 1, 5, 8, 13, 12, 7, 17, 7, 6, 12, 20, 4, 21, 5, 16, 8, 11, 12, 8, 15, 6, 10, 
19, 14, 19, 23, 20, 3, 5, 2, 18, 6, 20, 19, 13, 4, 16, 3, 1, 8, 20, 22, 3, 16, 5, 18, 23, 5, 16, 10, 14, 7, 6, 1, 7, 9, 21, 7, 2, 1, 20, 20, 11, 17, 8, 19, 9, 8, 18, 6, 10, 14, 
15, 2, 23, 22, 4, 7, 13, 9, 4, 14, 21, 20, 22, 23, 11, 22, 22, 22, 13, 1, 17, 8, 16, 11, 3, 4, 18, 6, 14, 11, 8, 12, 13, 1, 2, 18, 4, 11, 4, 16, 18, 13, 2, 4, 14, 20, 11, 9, 13, 1, 
2, 18, 3, 4, 2, 18, 16, 15, 16, 15, 22, 4, 13, 17, 20, 22, 21, 22, 3, 8, 7, 12, 22, 13, 1, 16, 4, 19, 19, 12, 14, 6, 18, 16, 1, 11, 22, 17, 19, 17, 2, 17, 23, 11, 10, 10, 17, 21, 14, 23, 
1, 18, 4, 13, 7, 18, 16, 20, 10, 11, 11, 3, 11, 6, 13, 20, 17, 15, 23, 15, 3, 4, 8, 6, 2, 11, 1, 13, 6, 9, 11, 13, 8, 4, 20, 16, 20, 3, 5, 7, 18, 6, 20, 23, 15, 8, 13, 12, 2, 6, 
12, 4, 5, 15, 8, 19, 17, 8, 23, 23, 7, 11, 16, 5, 19, 18, 21, 10, 22, 23, 3, 23, 3, 10, 12, 13, 10, 2, 16, 21, 3, 13, 7, 19, 17, 2, 6, 22, 15, 9, 15, 1, 15, 10, 18, 21, 23, 15, 8, 12, 
13, 4, 2, 10, 22, 16, 14, 22, 9, 22, 7, 8, 21, 4, 11, 3, 9, 10, 2, 14, 3, 23, 19, 13, 16, 11, 22, 14, 1, 5, 21, 21, 1, 9, 14, 22, 16, 7, 17, 18, 9, 23, 22, 18, 7, 19, 11, 5, 7, 12, 
18, 14, 3, 16, 6, 10, 17, 1, 21, 23, 20);
  signal wait_count_index : integer range 0 to RANDOM_WAITS - 1 := 0;
  signal transfers_done : integer range 0 to (BURST_LENGTH - 1) := 0;
  signal wait_for : integer := 0;
  signal wait_counts : wait_count_type;
  signal count, count2, count2_reg, raddr, waddr : integer := 0;
  signal MASTER_READ_AVM_sig, MASTER_WRITE_AVM_sig, internal_sopc_enable : std_logic := '0';
begin
  wait_counts <= wait_counts_0 when (master_index = 0) else
                 wait_counts_1 when (master_index = 1) else
                 wait_counts_2;
  internal_sopc_enable <= '1' when (sopc_enable = 1) else '0';
                 
agr:if (CONSTANT_TRAFFIC = '1') generate

   MASTER_ADDRES_AVM             <= std_logic_vector(to_unsigned(count2, MASTER_ADDR_WIDTH)); --(others => '0'); --because of the byte addresibility
   --MASTER_ADDRES_AVM             <=(others => '0');
  MASTER_WRITEDATA_AVM          <= std_logic_vector(to_unsigned(count2, DATA_WIDTH));
  MASTER_BYTEENABLE_AVM         <= (others => '1');
  MASTER_BURSTCOUNT_AVM         <= "1000";
  MASTER_READ_AVM <= MASTER_READ_AVM_sig;
  MASTER_WRITE_AVM <= MASTER_WRITE_AVM_sig;
  --MASTER_WRITE_AVM <= '0';
  process(iCLOCK, iRESET)
    begin
      if (iRESET = '0') then
        MASTER_READ_AVM_sig <= '0';
        MASTER_WRITE_AVM_sig <= '0';
		    count <= 0;
		    count2 <= 0;
      elsif (rising_edge(iCLOCK)) then
        count2 <= count2_reg;
        if (master_index = 0) then
		      MASTER_WRITE_AVM_sig <= '1';
		      MASTER_READ_AVM_sig <= '0';
		    else
		      MASTER_READ_AVM_sig <= ENABLE or internal_sopc_enable;  
		      count <= 0;
		      MASTER_WRITE_AVM_sig <= '0';
		    end if;
		
		  if (master_index = 0) then
		    if (MASTER_WAITREQUEST_AVM = '0' and MASTER_WRITE_AVM_sig = '1') then
		      if (count = 7) then
			      count <= 0;
			      count2 <= count2 + 32;
			    else
			      count <= count + 1;
			   end if;
		   end if;
		  else
		    if (MASTER_WAITREQUEST_AVM = '0' and MASTER_READ_AVM_sig = '1') then 
		      count2 <= count2 + 32;
		    end if;  
		  end if;
		  
      end if;
    end process;
    count2_reg <= count2;
end generate;



rand: if (RANDOM_TRAFFIC = '1') generate
  process(iCLOCK, iRESET)
    begin
      if (iRESET = '0') then
        c_s <= idle;
        transfers_done <= 0;
        wait_count_index <= 0;
        wait_for <= 0;
      elsif (rising_edge(iCLOCK)) then
        if (c_s = requesting and MASTER_WAITREQUEST_AVM = '0') then
          if (transfers_done = (BURST_LENGTH - 1) ) then
            c_s <= idle;
            transfers_done <= 0;
          else
            c_s <= requesting;
            transfers_done <= transfers_done + 1;
          end if;
        end if;
        
        if (c_s = idle) then
          if (wait_for = wait_counts(wait_count_index) - 1) then
            wait_for <= 0;
            c_s <= requesting;
            if (wait_count_index = RANDOM_WAITS - 1) then
              wait_count_index <= 0;
            else
              wait_count_index <= wait_count_index + 1;
            end if;
          else
            wait_for <= wait_for + 1;
            c_s <= idle;
          end if;
        end if;
      end if;
    end process;
    
    MASTER_READ_AVM <= '0' when (c_s = idle) else '1';
end generate;

sdram: if (SDRAM_TEST = '1') generate
  process(iCLOCK, iRESET)
    begin
      if (iRESET = '0') then
        c_s <= idle;
        transfers_done <= 0;
        wait_for <= 0;
        count <= 0;
        MASTER_READ_AVM <= '0';
        MASTER_WRITE_AVM <= '0' ;
        precharge <= '0';
        waddr <= 0;
        raddr <= 0;
        refresh <= '0';
      elsif (rising_edge(iCLOCK)) then
            refresh <= '0';
        
        if (c_s = requesting and MASTER_WAITREQUEST_AVM = '0') then -- read burst needs only one clok cycle
          c_s <= writting;
          MASTER_READ_AVM <= '0';
          MASTER_WRITE_AVM <= '1' ;
          count <= count + 1;
          --precharge <= '1';
          waddr <= waddr + 4;
          raddr <= raddr + 32;
        end if;
        
        if (c_s = writting and MASTER_WAITREQUEST_AVM = '0') then
          if (transfers_done = (BURST_LENGTH - 1) ) then
            c_s <= requesting;
            transfers_done <= 0;
            MASTER_READ_AVM <= '1';
            MASTER_WRITE_AVM <= '0' ;
            --precharge <= '1';
          else
            c_s <= writting;
            transfers_done <= transfers_done + 1;
            MASTER_READ_AVM <= '0';
            MASTER_WRITE_AVM <= '1' ;
            waddr <= waddr + 4;
            count <= count + 1;
            precharge <= '0';
          end if;
        end if;
        
        if (c_s = idle) then
          if (count = SDRAM_CALIBRATION) then
            count <= 0;
            c_s <= refresh_state;
            MASTER_READ_AVM <= '0';
            MASTER_WRITE_AVM <= '0' ;
            precharge <= '0';
            refresh <= '1';
          else
            count <= count + 1;
            MASTER_READ_AVM <= '0';
            MASTER_WRITE_AVM <= '0' ;
            precharge <= '0';
          end if;
        end if;
        
        if (c_s = refresh_state) then
          if (count = tRFC) then
            count <= 0;
            c_s <= writting;
            MASTER_READ_AVM <= '0';
            MASTER_WRITE_AVM <= '1' ;
            --precharge <= '1';
            waddr <= 0;
          else
            count <= count + 1;
            MASTER_READ_AVM <= '0';
            MASTER_WRITE_AVM <= '0' ;
            precharge <= '0';
          end if;
        end if;
        
      end if;
    end process;
MASTER_WRITEDATA_AVM <= std_logic_vector(to_unsigned (count, 32));
MASTER_ADDRES_AVM <= std_logic_vector(to_unsigned (waddr, MASTER_ADDR_WIDTH)) when (c_s = writting) else 
                     std_logic_vector(to_unsigned (raddr, MASTER_ADDR_WIDTH));
end generate;
end architecture;
