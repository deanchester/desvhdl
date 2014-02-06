library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity rotLeft is
  port (
  	rotIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
  	rotOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  ) ;
end entity ; -- rotLeft

architecture arch of rotLeft is

begin
	rotOut(31 DOWNTO 1) <= rotIn(30 DOWNTO 0);
	rotOut(0) <= rotIn(31);
end architecture ; -- arch