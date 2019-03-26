library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity g05_clock_divider is 
	port(enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			en_out: out std_logic
			);
end entity;

architecture a0 of g05_clock_divider is
signal count : unsigned(18 downto 0) := to_unsigned(499999, 19);
begin

process(clk, reset)
	begin
		if(reset = '0') then
			count <= to_unsigned(499999, 19);
			en_out <= '0';
		elsif(rising_edge(clk)) then
			if(count = 0) then
				count <= to_unsigned(499999, 19);
				en_out <= '1';
			else en_out <= '0';
			end if;
			if(enable = '1') then 
				count <= count - 1;
			else count<=count;
			end if;
			
		end if;
	end process;
end a0;
