library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity Mux64 is
  port (
	sel : IN STD_LOGIC; 
	A, B : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  ) ;
end entity ; -- Mux64

architecture arch of Mux32 is

begin
	Y <= A when sel = '1' else B;
end architecture ; -- arch