library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- What this traffic generator does:
-- Beginning with a start address, it writes blocks of data to the downstream avalon bus
-- After writing a block, it is reading the same block again and checks, if it is the same
-- value, as written before. If this is not the case, the coe_export_error output is set to 1
-- and stays 1 until a reset occurs.
-- writes occur in words of length DATA_WIDTH
-- each block consists of BLOCK_WIDH words

entity traffic_gen_master is
  
  generic (SLAVE_ADDR_WIDTH : integer := 26;
           DATA_WIDTH : integer := 32;
           MASTER_ADDR_WIDTH : integer := 28;
           BYTE_ENABLE_BITS  : integer := 4;
           -- maximum WORD address:
           MAX_WORD_NUMBER : integer := 1024;
           START_ADDRESS  : integer := 0;
           -- initial data value (will be incremented by 1 after each write)
           START_DATA     : integer := 0;
           -- how many WORDs should be written until they are read again:
           BLOCK_WIDTH    : integer := 8);
  port (
         csi_clockreset_CLK : in std_logic;
         csi_clockreset_RESET_n : in std_logic;
         coe_export_error    : out std_logic;

         -- Avalon Master:
         -- MASTER interface
         AVM_M1_ADDRESS            : OUT STD_LOGIC_VECTOR((MASTER_ADDR_WIDTH - 1) DOWNTO 0) := (others => '0'); --because of the byte addresibility
         AVM_M1_READ               : OUT STD_LOGIC := '0';
         AVM_M1_WRITE              : OUT STD_LOGIC := '0';
         AVM_M1_WRITEDATA          : OUT STD_LOGIC_VECTOR ((DATA_WIDTH - 1) DOWNTO 0) := (others => '0');
         AVM_M1_BYTEENABLE         : OUT std_logic_vector((BYTE_ENABLE_BITS - 1) downto 0) := (others => '0');
         AVM_M1_READDATA           : IN  STD_LOGIC_VECTOR ((DATA_WIDTH - 1) DOWNTO 0);
         AVM_M1_WAITREQUEST        : IN  STD_LOGIC;
         AVM_M1_READDATAVALID      : IN  STD_LOGIC
       );
end entity;


architecture behave of traffic_gen_master is
  
  type state_type is (WRITE, READ, IDLE);

  type reg_type is record
    state         : state_type;
    err           : std_logic;
    read          : std_logic;
    write         : std_logic;
    writedata     : integer range 0 to MAX_WORD_NUMBER;
    blockcount    : integer range 0 to BLOCK_WIDTH;
    receive_block_count : integer range 0 to BLOCK_WIDTH;
    address       : integer range 0 to MAX_WORD_NUMBER;
    cycle_address : integer range 0 to MAX_WORD_NUMBER;
    cycle_writedata : integer range 0 to MAX_WORD_NUMBER;

  end record;

  signal r, rin: reg_type;
  signal outerror : std_logic;

begin

  comb  : process(r, AVM_M1_WAITREQUEST, AVM_M1_READDATA, AVM_M1_READDATAVALID)
    variable v : reg_type;
    variable avalon_wait_state : std_logic;
  begin
    v := r; --default assignment. Avoid latches
    outerror <= '0';
    avalon_wait_state := AVM_M1_WAITREQUEST and (r.write or r.read);
    if (avalon_wait_state = '0') then
      -- now we are allowed to issue a command in the next cycle :)
      case r.state is
        when WRITE =>
          v.read  := '0';
          v.write := '1';
          v.blockcount := r.blockcount + 1;
          v.address := r.cycle_address + r.blockcount;
          v.writedata := r.cycle_writedata + r.blockcount;
          if (r.blockcount = BLOCK_WIDTH - 1) then
            v.state := READ;
            v.blockcount := 0;
            v.receive_block_count := 0;
          end if;
          
        when READ =>
          v.read := '1';
          v.write := '0';
          v.blockcount := r.blockcount + 1;
          v.address := r.cycle_address + r.blockcount;
          if (r.blockcount = BLOCK_WIDTH - 1) then
            v.state := IDLE;
            v.blockcount := 0;
            v.cycle_address := (r.cycle_address + BLOCK_WIDTH) mod MAX_WORD_NUMBER;
          end if;
        when others =>
          v.read := '0';
          v.write := '0';
      end case;
    end if;

    if (AVM_M1_READDATAVALID = '1') then
      if (AVM_M1_READDATA /= std_logic_vector(to_unsigned(r.cycle_writedata + r.receive_block_count, AVM_M1_READDATA'length)) ) then
        outerror <= '1';
        v.err := '1';
      end if;
      v.receive_block_count := r.receive_block_count + 1;
      if (v.receive_block_count = BLOCK_WIDTH) then
        v.receive_block_count := 0;
        v.state := WRITE;
        v.cycle_writedata := (r.cycle_writedata + BLOCK_WIDTH) mod MAX_WORD_NUMBER;
      end if;
    end if;

    AVM_M1_READ <= r.read;
    AVM_M1_WRITE <= r.write;
    AVM_M1_ADDRESS <= std_logic_vector(to_unsigned(r.address, AVM_M1_ADDRESS'length - 2)) & "00";
    AVM_M1_WRITEDATA <= std_logic_vector(to_unsigned(r.writedata, AVM_M1_WRITEDATA'length));
    AVM_M1_BYTEENABLE <= (others => '1');

    coe_export_error <= rin.err;

    rin <= v; -- drive register inputs (will go out in next clock cycle)
  end process;


  regs  : process(csi_clockreset_CLK, csi_clockreset_RESET_n)
  begin
    if (csi_clockreset_RESET_n = '0') then
      r.err <= '0';
      r.read <= '0';
      r.write <= '0';
      r.blockcount <= 0;
      r.address <= START_ADDRESS;
      r.cycle_address <= START_ADDRESS;
      r.cycle_writedata <= START_DATA;
      r.receive_block_count <= 0;
      r.state <= WRITE;
    elsif (rising_edge(csi_clockreset_CLK)) then
      r <= rin;
    end if;
  end process;
end;

