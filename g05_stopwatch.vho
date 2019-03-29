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

  component g05_7_segment_decoder is

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

 signal stopwatchclock : std_logic;
 signal enable : std_logic := '0';

 signal countreset : std_logic_vector(5 downto 0):="111111";

 signal countenable : std_logic_vector(4 downto 0):= "00000";

 signal countOut0,countOut1,countOut2,countOut3,countOut4,countOut5 : std_logic_vector(3 downto 0);



begin

  clock_divider1 : g05_clock_divider port map(enable, reset, clk, stopwatchclock);

  counter0 : g05_counter port map(enable, countreset(0), stopwatchclock, countOut0);

  counter1 : g05_counter port map('1', countreset(1), countenable(0), countOut1);

  counter2 : g05_counter port map('1', countreset(2), countenable(1), countOut2);

  counter3 : g05_counter port map('1', countreset(3), countenable(2), countOut3);

  counter4 : g05_counter port map('1', countreset(4), countenable(3), countOut4);

  counter5 : g05_counter port map('1', countreset(5), countenable(4), countOut5);

 
	


 

  decode0: g05_7_segment_decoder port map (countOut0, HEX0);	

  decode1: g05_7_segment_decoder port map (countOut1, HEX1);	

  decode2: g05_7_segment_decoder port map (countOut2, HEX2);	

  decode3: g05_7_segment_decoder port map (countOut3, HEX3);	

  decode4: g05_7_segment_decoder port map (countOut4, HEX4);	

  decode5: g05_7_segment_decoder port map (countOut5, HEX5);

  process (stopwatchclock, countenable, reset)
  begin
	if(reset = '0') then
		countreset<="000000";
	elsif rising_edge(stopwatchclock) then
		if(countOut0="1010") then
			countenable(0)<='1';
			countreset(0)<='0';
			
		elsif(countOut0="0000") then
			countenable(0)<='0';
			countreset(0)<='1';
		end if;
		
		if(countOut1="1010") then
			countenable(1)<='1';
			countreset(1)<='0';
			
		else 
			countenable(1)<='0';
			countreset(1)<='1';
		end if;
		if(countOut2="1010") then
			countenable(2)<='1';
			countreset(2)<='0';
			
		else 
			countenable(2)<='0';
			countreset(2)<='1';
		end if;
		if(countOut3="0110") then
			countenable(3)<='1';
			countreset(3)<='0';
			
		else 
			countenable(3)<='0';
			countreset(3)<='1';
		end if;
		if(countOut4="1010") then
			countenable(4)<='1';
			countreset(4)<='0';
			
		else 
			countenable(4)<='0';
			countreset(4)<='1';
		end if;
		if(countOut5="1010") then
			countenable(5)<='1';
			countreset(5)<='0';
			
		else 
			countenable(5)<='0';
			countreset(5)<='1';
		end if;
	end if;
	end process;
	

  

  

  process(start, stop, reset)

  begin

    if(stop = '0') then

     enable <= '0';

    elsif(start = '0') then

     enable <= '1';
	 

    end if;

  end process;

end a0;
