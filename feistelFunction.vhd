library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity feistelFunction is
  port (
		fIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		K : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
		fOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  ) ;
end entity ; -- 

architecture arch of feistelFunction is
	component XORBIT48 is: 
		port (
			R : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
			Key : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
			RES : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
		) ;
	end component;
	
	component s8_box is
		port (
			sIN: IN std_logic_VECTOR(5 downto 0);
			sOUT: OUT std_logic_VECTOR(3 downto 0))
		) ;
	end component;
	
	component s7_box is
		port (
			sIN: IN std_logic_VECTOR(5 downto 0);
			sOUT: OUT std_logic_VECTOR(3 downto 0))
		) ;
	end component;
	
	component s6_box is
		port (
			sIN: IN std_logic_VECTOR(5 downto 0);
			sOUT: OUT std_logic_VECTOR(3 downto 0))
		) ;
	end component;
	
	component s5_box is
		port (
			sIN: IN std_logic_VECTOR(5 downto 0);
			sOUT: OUT std_logic_VECTOR(3 downto 0))
		) ;
	end component;
	
	component s4_box is
		port (
			sIN: IN std_logic_VECTOR(5 downto 0);
			sOUT: OUT std_logic_VECTOR(3 downto 0))
		) ;
	end component;
	
	component s3_box is
		port (
			sIN: IN std_logic_VECTOR(5 downto 0);
			sOUT: OUT std_logic_VECTOR(3 downto 0))
		) ;
	end component;
	
	component s2_box is
		port (
			sIN: IN std_logic_VECTOR(5 downto 0);
			sOUT: OUT std_logic_VECTOR(3 downto 0))
		) ;
	end component;

	component s1_box is
		port (
			sIN: IN std_logic_VECTOR(5 downto 0);
			sOUT: OUT std_logic_VECTOR(3 downto 0))
		) ;
	end component;
	
	component  eFunction is
		port (
			eIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			eOUT : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
		) ;
	end component;
	
	component permutationFunction is
		port (
			permIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);	
			permOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		) ;
	end
	begin
	
	signal e, xorOUT : std_LOGIC_VECTOR(47 DOWNTO 0);
	signal sBoxesOUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
	eFunc : eFunction port map (fIn, e);
	xorBIT : XORBIT48 port map (e, K, xorOUT); 
	
	s1 : s1_box port map (xorOUT(47 DOWNTO 42), sBoxesOUT(31 DOWNTO 28));
	s2 : s2_box port map (xorOUT(41 DOWNTO 36), sBoxesOUT(27 DOWNTO 24));
	s3 : s3_box port map (xorOUT(35 DOWNTO 30), sBoxesOUT(23 DOWNTO 20));
	s4 : s4_box port map (xorOUT(29 DOWNTO 24), sBoxesOUT(19 DOWNTO 16));
	s5 : s5_box port map (xorOUT(23 DOWNTO 18), sBoxesOUT(15 DOWNTO 12));
	s6 : s6_box port map (xorOUT(17 DOWNTO 12), sBoxesOUT(11 DOWNTO 8));
	s7 : s7_box port map (xorOUT(11 DOWNTO 6), sBoxesOUT(7 DOWNTO 4));
	s8 : s8_box port map (xorOUT(5 DOWNTO 0), sBoxesOUT(3 DOWNTO 0));
	
	pFunc : permutationFunction PORT MAP (sBoxesOUT, fOut);
end architecture ; -- arch