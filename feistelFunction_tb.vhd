library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity feistelFunction_tb is
end entity ; -- feistelFunction_tb

architecture arch of feistelFunction_tb is
	COMPONENT feistelFunction is
	  port (
			fIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			K : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
			fOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	  ) ;
	end COMPONENT;
	
	SIGNAL b_check : boolean := false;
	SHARED VARIABLE sv_check_value : std_logic_vector(31 downto 0);
	SIGNAL fin : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL key : STD_LOGIC_VECTOR(47 DOWNTO 0);
	SIGNAL fout : STD_LOGIC_VECTOR(31 DOWNTO 0);
begin

end architecture ; -- arch