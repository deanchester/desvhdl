library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity DESStateMachine is
  port (
	clock, reset : IN STD_LOGIC;
	select1, select2, load : OUT STD_LOGIC;
	complete : OUT STD_LOGIC
  ) ;
end entity ; -- DESStateMachine

architecture arch of DESStateMachine is
	type STATETYPE is (SCHEDULE_KEYS, LOAD_KEYS, R1Load, R1Save, R2Load, R2Save,
		R3Load, R3Save, R4Load, R4Save, R5Load, R5Save, R6Load, R6Save, R7Load,
		R7Save, R8Load, R8Save, R9Load, R9Save, R10Load, R10Save, R11Load,
		R11Save, R12Load, R12Save, R13Load, R13Save, R14Load, R14Save, R15Load,
		R15Save, R16Load, R16Save, Result);
	signal State : STATETYPE;
begin
	
end architecture ; -- arch