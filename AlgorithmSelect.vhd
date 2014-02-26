library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity AlgorithmSelect is
  port (
	clock : IN STD_LOGIC;
	algorithmSelect : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	tMode, 	encryptionMode : OUT STD_LOGIC
  ) ;
end entity ; -- AlgorithmSelect

architecture arch of AlgorithmSelect is
	COMPONENT AlgorithmDecode is
		port (
			clock : IN STD_LOGIC;
			algorithmSelect : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			mode, mode1, mode2, mode3: OUT STD_LOGIC
		) ;
	end COMPONENT;
	
	COMPONENT ModeStore is
		port (
			clock : IN STD_LOGIC;
			modeIn : IN STD_LOGIC;
			modeOut : OUT STD_LOGIC
	) ;
	end COMPONENT;
	
	SIGNAL modeStateStore1, modeStateStore2, modeStateStore3, modeStateStore4 : STD_LOGIC;
begin
	as : AlgorithmDecode PORT MAP(clock, algorithmSelect, tMode, modeStateStore1, modeStateStore2, modeStateStore3);
	ms1 : ModeStore PORT MAP (clock, modeStateStore1, encryptionMode);
	ms2 : ModeStore PORT MAP (clock, modeStateStore2, modeStateStore1);
	ms3 : ModeStore PORT MAP (clock, modeStateStore3, modeStateStore2);
end architecture ; -- arch