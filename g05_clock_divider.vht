-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/19/2019 14:46:30"
                                                            
-- Vhdl Test Bench template for design  :  g05_clock_divider
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g05_clock_divider_vhd_tst IS
END g05_clock_divider_vhd_tst;
ARCHITECTURE g05_clock_divider_arch OF g05_clock_divider_vhd_tst IS
-- constants                                                 
                                                  
constant Clockfrequency : integer := 50e6;      --100Mhz
constant clockperiod: time := 1000 ms / clockfrequency;                               
-- signals                                                   
SIGNAL clk : STD_LOGIC := '1';
SIGNAL enable : STD_LOGIC := '1';
SIGNAL reset : STD_LOGIC:= '1';
signal en_out : std_logic;
COMPONENT g05_clock_divider
	PORT (
	clk : IN STD_LOGIC;
	en_out : OUT STD_LOGIC;
	enable : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g05_clock_divider
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	en_out => en_out,
	enable => enable,
	reset => reset
	);

clk <= not clk after  clockperiod / 2;
                              
--enable <= not enable after 1000000 * clockperiod;
--reset <= not reset after 20000 * clockperiod;
                                    
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		  
WAIT;                                                        
END PROCESS always;                                          
END g05_clock_divider_arch;
