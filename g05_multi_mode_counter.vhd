library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL;
entity gNN_multi_mode_counter is
	port(start: in std_logic;
		stop: in std_logic;
		direction: in std_logic;
		reset: in std_logic;
		clk: in std_logic;
		HEX0: out std_logic_vector(6 downto 0);
		HEX1: out std_logic_vector(6 downto 0)
		);
end entity;

	