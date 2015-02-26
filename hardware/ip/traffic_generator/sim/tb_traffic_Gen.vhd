library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_traffic_gen is
end entity;

architecture behave of tb_traffic_gen is

component traffic_gen is
  generic (SLAVE_ADDR_WIDTH : integer := 26;
           DATA_WIDTH : integer := 32;
		       MASTER_ADDR_WIDTH : integer := 28;
		       BYTE_ENABLE_BITS  : integer := 4;
		       BURST_COUNT_BITS : integer := 4;
		       BURST_LENGTH     : integer := 8;
		       NUM_OF_MASTERS   : integer := 4);
  port (
  iCLOCK : in std_logic;
  iRESET : in std_logic;

  
  -- Avalon Master:
  -- MASTER interface
  MASTER_ADDRES_AVM             : OUT STD_LOGIC_VECTOR((MASTER_ADDR_WIDTH - 1) DOWNTO 0) := (others => '0'); --because of the byte addresibility
  MASTER_READ_AVM               : OUT STD_LOGIC := '0';
  MASTER_WRITE_AVM              : OUT STD_LOGIC := '0';
  MASTER_WRITEDATA_AVM          : OUT STD_LOGIC_VECTOR ((DATA_WIDTH - 1) DOWNTO 0) := (others => '0');
  MASTER_BYTEENABLE_AVM         : OUT std_logic_vector((BYTE_ENABLE_BITS - 1) downto 0) := (others => '0');
  
  MASTER_READ_DATA_AVM          : IN  STD_LOGIC_VECTOR ((DATA_WIDTH - 1) DOWNTO 0);
  MASTER_WAITREQUEST_AVM        : IN  STD_LOGIC;
  MASTER_READDATAVALID_AVM      : IN  STD_LOGIC
   );
end component;

signal iCLOCK, iRESET : std_logic := '0';
signal MASTER_ADDRES_AVM             :  STD_LOGIC_VECTOR((MASTER_ADDR_WIDTH - 1) DOWNTO 0) := (others => '0'); --because of the byte addresibility
signal MASTER_READ_AVM               :  STD_LOGIC := '0';
signal MASTER_WRITE_AVM              :  STD_LOGIC := '0';
signal MASTER_WRITEDATA_AVM          :  STD_LOGIC_VECTOR ((DATA_WIDTH - 1) DOWNTO 0) := (others => '0');
signal MASTER_BYTEENABLE_AVM         :  std_logic_vector((BYTE_ENABLE_BITS - 1) downto 0) := (others => '0');
 
signal MASTER_READ_DATA_AVM          :   STD_LOGIC_VECTOR ((DATA_WIDTH - 1) DOWNTO 0);
signal MASTER_WAITREQUEST_AVM        :   STD_LOGIC;
signal MASTER_READDATAVALID_AVM      :   STD_LOGIC;
begin
  iRESET <= '1' after 100 ms;
  iCLOCK <= not iCLOCK after 20 ms;
  
  
  
end architecture
