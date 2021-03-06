library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--this entity is designed to take in a 50MHz clock and output a 1Hz en-out signal
entity g05_clock_divider is 
	port(enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			en_out: out std_logic := '0'--divided clock signal
			);
end entity;

architecture a0 of g05_clock_divider is
signal count : unsigned(25 downto 0) := to_unsigned(49999999, 26);--50 million possible values
begin
--clock divider work by downcounting
process(clk, reset)
	begin
		if(reset = '0') then
			count <= to_unsigned(49999999, 26);
			en_out <= '0';
		elsif(rising_edge(clk)) then
			if(enable = '1') then 
				--downcount
				count <= count - 1;
			else count<=count;
			end if;
			if(count = 0) then
				count <= to_unsigned(49999999, 26);
				en_out <= '1';
			else en_out <= '0';
			end if;
			
			
		end if;
	
	end process;
end a0;

