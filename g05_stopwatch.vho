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
 signal enable : std_logic;
 signal countreset : std_logic_vector(5 downto 0);
 signal countenable : std_logic_vector(4 downto 0);
 signal countOut0,countOut1,countOut2,countOut3,countOut4,countOut5 : std_logic_vector(3 downto 0);

begin
  clock_divider1 : g05_clock_divider port map(enable, reset, clk, stopwatchclock);
  counter0 : g05_counter port map(enable, countreset(0), stopwatchclock, countOut0);
  counter1 : g05_counter port map(countenable(0), countreset(1), stopwatchclock, countOut1);
  counter2 : g05_counter port map(countenable(1), countreset(2), stopwatchclock, countOut2);
  counter3 : g05_counter port map(countenable(2), countreset(3), stopwatchclock, countOut3);
  counter4 : g05_counter port map(countenable(3), countreset(4), stopwatchclock, countOut4);
  counter5 : g05_counter port map(countenable(4), countreset(5), stopwatchclock, countOut5);
 
  countenable(0) <= countOut0(3) and not countOut0(2) and not countOut0(1) and countOut0(0);
  countenable(1) <= countOut1(3) and not countOut1(2) and not countOut1(1) and countOut1(0);
  countenable(2) <= countOut2(3) and not countOut2(2) and not countOut2(1) and countOut2(0);
  countenable(3) <= not countOut3(3) and countOut3(2) and not countOut3(1) and countOut3(0);
  countenable(4) <= countOut4(3) and not countOut4(2) and not countOut4(1) and countOut4(0);
	  
  countreset(0) <= not countenable(0) and reset;
  countreset(1) <= not countenable(1) and reset;
  countreset(2) <= not countenable(2) and reset;
  countreset(3) <= not countenable(3) and reset;
  countreset(4) <= not countenable(4) and reset;
  countreset(5) <= not (not countOut5(3) and countOut5(2) and not countOut5(1) and countOut5(0)) and reset;
 
  decode0: vhdl1 port map (countOut0, HEX0);	
  decode1: vhdl1 port map (countOut1, HEX1);	
  decode2: vhdl1 port map (countOut2, HEX2);	
  decode3: vhdl1 port map (countOut3, HEX3);	
  decode4: vhdl1 port map (countOut4, HEX4);	
  decode5: vhdl1 port map (countOut5, HEX5);
  
  
  
  process(start, stop)
  begin
    if(stop = '0') then
     enable <= '0';
    elsif(start = '0') then
     enable <= '1';
    end if;
  end process;
end a0;
