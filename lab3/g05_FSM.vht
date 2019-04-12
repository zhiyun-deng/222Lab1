
                                                            
-- Vhdl Test Bench template for design  :  g05_FSM
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g05_FSM_vhd_tst IS
END g05_FSM_vhd_tst;
ARCHITECTURE g05_FSM_arch OF g05_FSM_vhd_tst IS
-- constants  
constant Clockfrequency : integer := 50e6;      --50Mhz
constant clockperiod: time := 1000 ms / clockfrequency;                                                   
-- signals                                                   
SIGNAL clk : STD_LOGIC:='0';
SIGNAL count : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL direction : STD_LOGIC:='0';
SIGNAL enable : STD_LOGIC:='1';
SIGNAL reset : STD_LOGIC:='1';
COMPONENT g05_FSM
	PORT (
	clk : IN STD_LOGIC;
	count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	direction : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g05_FSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	count => count,
	direction => direction,
	enable => enable,
	reset => reset
	);
--varying input values
clk <= not clk after  clockperiod / 2;
direction <= not direction after 20*clockperiod;
enable <= not enable after 100 * clockperiod;
reset <= not reset after 350 * clockperiod;
                                      
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END g05_FSM_arch;
