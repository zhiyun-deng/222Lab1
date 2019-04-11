library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity g05_counter is 
	port(enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			count : out std_logic_vector(3 downto 0)
			);
end entity;

architecture a0 of g05_counter is
signal intcount : unsigned(3 downto 0) := "0000"; --start count at 0
begin
	
	process(clk, reset, intcount)	--update when clock changes, resetting, when internal count settles in order to set the output
	begin
		if(reset = '0') then 
			intcount <= "0000";	--when resetting, start count at 0
		elsif(rising_edge(clk)) then
			if(enable = '1') then 
				intcount <= intcount + 1; 	--if enabled, increment by 1
			else intcount<=intcount;		--else keep the current count
			end if;
		end if;
	count<=std_logic_vector(intcount);			--set the output to the internal count
	end process;
end a0;

