LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY feistelFunction_vhd_tst IS
END feistelFunction_vhd_tst;
ARCHITECTURE feistelFunction_arch OF feistelFunction_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL fIn : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL fOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL K : STD_LOGIC_VECTOR(47 DOWNTO 0);
COMPONENT feistelFunction
	PORT (
	fIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	fOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	K : IN STD_LOGIC_VECTOR(47 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : feistelFunction
	PORT MAP (
-- list connections between master ports and signals
	fIn => fIn,
	fOut => fOut,
	K => K
	);

stimulus : process
	
	procedure p_stable is
	begin
		wait for 50 ns;
		fIn <= x"00000000";
		K <= x"000000000000";
		wait for (100 ns);
	end procedure p_stable;


	procedure p_test1 is
	begin
		wait for 50 ns;
		fIn <= "11110000101010101111000010101010";
		K <= "000110110000001011101111111111000111000001110010";
		wait for 100 ns;
	end procedure p_test1;
	
	begin
		p_stable;
		p_test1;
		assert false report "End of simulation" severity failure;
	end process stimulus;
END feistelFunction_arch;
