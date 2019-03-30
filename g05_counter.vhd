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
signal intcount : unsigned(3 downto 0) := "0000";
begin
	
	process(clk, reset, intcount)
	begin
		if(reset = '0') then
			intcount <= "0000";
		elsif(rising_edge(clk)) then
			if(enable = '1') then 
				intcount <= intcount + 1;
			else intcount<=intcount;
			end if;
		end if;
	count<=std_logic_vector(intcount);
	end process;
end a0;

