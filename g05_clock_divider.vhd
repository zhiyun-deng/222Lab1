library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity g05_clock_divider is 
	port(enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			en_out: out std_logic := '0'
			);
end entity;

architecture a0 of g05_clock_divider is
signal count : unsigned(18 downto 0) := to_unsigned(499999, 19); --start current count at the max value
begin

process(clk, reset)	--update when clock changes, and when resetting
	begin
		if(reset = '0') then
			count <= to_unsigned(499999, 19); --reset current count to the max value
			en_out <= '0';
		elsif(rising_edge(clk)) then
			if(enable = '1') then 
				count <= count - 1; --decrement count
			else count<=count; --when not enabled, count doesn't change 
			end if;
			if(count = 0) then 
				count <= to_unsigned(499999, 19); 	--if at min value, return to max value
				en_out <= '1'; 				--and set the output to 1
			else en_out <= '0';				--if not at min value, make sure the output is 0
			end if;
		end if;
	end process;
end a0;
