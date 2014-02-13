library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity DESStateMachine is
  port (
	clock, reset : IN STD_LOGIC;
	select1, select2 : OUT STD_LOGIC;
	key_select : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
  ) ;
end entity ; -- DESStateMachine

architecture arch of DESStateMachine is
	type STATETYPE is (A,B,C,D,E,F,G,H,I,J,K,L);
	signal State : STATETYPE;
begin
	select1 <= '1' when (State = C, D, E, G, H, I)
end architecture ; -- arch