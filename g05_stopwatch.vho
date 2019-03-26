library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity g05_stopwatch is
Port (start : in std_logic;
stop : in std_logic;
reset : in std_logic;
clk : in std_logic;
HEX0 : out std_logic_vector(6 downto 0);
HEX1 : out std_logic_vector(6 downto 0);
HEX2 : out std_logic_vector(6 downto 0);
HEX3 : out std_logic_vector(6 downto 0);
HEX4 : out std_logic_vector(6 downto 0);
HEX5 : out std_logic_vector(6 downto 0));
end g05_stopwatch;

 architecture a0 of g05_stopwatch is
  component vhdl1 is
   port( code : in std_logic_vector( 3 downto 0); --4 bit input
			segments: out std_logic_vector (6 downto 0) --7 bit output
		);
  end component;
  component g05_clock_divider is
   port(enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			en_out: out std_logic
			);
  end component;
  component g05_counter is
   port(enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			count : out std_logic_vector(3 downto 0)
			);
  end component;
 signal enable : std_logic:='0';

begin
  clock_divider1 : g05_clock_divider port map();
 
  process(start, stop)
  begin
    if(stop = '0') then
     enable <= '0';
    elsif(start = '0') then
     enable <= '1';
    end if;
  end process;
end a0;
