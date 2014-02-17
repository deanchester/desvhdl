library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity DESStateMachine is
  port (
	start, clock, reset : IN STD_LOGIC;
	select1, select2, load : OUT STD_LOGIC;
	done : OUT STD_LOGIC
  ) ;
end entity ; -- DESStateMachine

architecture arch of DESStateMachine is
	type STATETYPE is (StartState, SCHEDULE_KEYS, LOAD_KEYS, R1Load, R1Save, R2Load, R2Save,
		R3Load, R3Save, R4Load, R4Save, R5Load, R5Save, R6Load, R6Save, R7Load,
		R7Save, R8Load, R8Save, R9Load, R9Save, R10Load, R10Save, R11Load,
		R11Save, R12Load, R12Save, R13Load, R13Save, R14Load, R14Save, R15Load,
		R15Save, R16Load, R16Save, Result);
	signal State : STATETYPE;
begin
	select1 <= '1' when State = R2Load OR State = R2Save ORState = R3Load 
		OR State = R3Save ORState = R4Load OR State = R4Save ORState = R5Load 
		OR State = R5Save ORState = R6Load OR State = R6Save ORState = R7Load 
		OR State = R7Save ORState = R8Load OR State = R8Save ORState = R9Load 
		OR State = R9Save ORState = R10Load OR State = R10Save ORState = R11Load 
		OR State = R11Save ORState = R12Load OR State = R12Save ORState = R13Load 
		OR State = R13Save ORState = R14Load OR State = R14Save ORState = R15Load 
		OR State = R15Save ORState = R16Load OR State = R16Save else '0';
		
	select2 <= '1' when State = R2Load OR State = R2Save ORState = R3Load 
		OR State = R3Save ORState = R4Load OR State = R4Save ORState = R5Load 
		OR State = R5Save ORState = R6Load OR State = R6Save ORState = R7Load 
		OR State = R7Save ORState = R8Load OR State = R8Save ORState = R9Load 
		OR State = R9Save ORState = R10Load OR State = R10Save ORState = R11Load 
		OR State = R11Save ORState = R12Load OR State = R12Save ORState = R13Load 
		OR State = R13Save ORState = R14Load OR State = R14Save ORState = R15Load 
		OR State = R15Save ORState = R16Load OR State = R16Save else '0';
		
	load <= '1' when State = LOAD_KEYS else '0';
	
	done <= '1' when State = Result else '0';
	
	process(clock, reset) 
	begin
		if reset = '1' then state <= StartState;
		elsif CLK'EVENT and CLK = '1' then
			case State is
				when StartState => state <= SCHEDULE_KEYS;
			end case;
		end if;
	end process;
end architecture ; -- arch