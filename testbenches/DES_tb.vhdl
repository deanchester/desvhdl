-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/12/2014 12:00:29"
                                                            
-- Vhdl Test Bench template for design  :  DES
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DES_vhd_tst IS
END DES_vhd_tst;
ARCHITECTURE DES_arch OF DES_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ciperText : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL clock : STD_LOGIC := '0';
SIGNAL decryption : STD_LOGIC;
SIGNAL done : STD_LOGIC;
SIGNAL keyIn : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL plainText : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT DES
	PORT (
	ciperText : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	clock : IN STD_LOGIC;
	decryption : IN STD_LOGIC;
	done : OUT STD_LOGIC;
	keyIn : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	plainText : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DES
	PORT MAP (
-- list connections between master ports and signals
	ciperText => ciperText,
	clock => clock,
	decryption => decryption,
	done => done,
	keyIn => keyIn,
	plainText => plainText,
	reset => reset,
	start => start
	);
   clock <= not clock after 50 ns;                                     
always : PROCESS                                              
	procedure p_test1 is
	begin
		wait for 100 ns;
		decryption <= '0';
		start <= '1';
		plainText <= "0000000100100011010001010110011110001001101010111100110111101111";
		keyIn <= "0000000100100011010001010110011110001001101010111100110111101111";
		
		wait for 5000 ns;
	end procedure p_test1;
BEGIN                                                         
	p_test1;
	
	assert false report "End of simulation" severity failure;
END PROCESS always;                                          
END DES_arch;
