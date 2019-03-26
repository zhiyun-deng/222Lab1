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
end gNN_stopwatch;

 architecture a0 of g05_stopwatch is
 signal counting : std_logic:='1';

begin
  process(start, stop, reset, clk)
  begin
    if(reset = '0')
    elsif(stop = '0')
    elsif(start = '0')
    elsif(rising_edge(clk))
    end if;
  end process;
end a0;
