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
	type STATETYPE is (START_STATE, SCHEDULE_KEYS, LOAD_KEYS, R1Load, R1Save, R2Load, R2Save,
		R3Load, R3Save, R4Load, R4Save, R5Load, R5Save, R6Load, R6Save, R7Load,
		R7Save, R8Load, R8Save, R9Load, R9Save, R10Load, R10Save, R11Load,
		R11Save, R12Load, R12Save, R13Load, R13Save, R14Load, R14Save, R15Load,
		R15Save, R16Load, R16Save, Result);
	signal State : STATETYPE;
begin
	select1 <= '1' when State = R2Load OR State = R2Save OR State = R3Load 
		OR State = R3Save OR State = R4Load OR State = R4Save OR State = R5Load 
		OR State = R5Save OR State = R6Load OR State = R6Save OR State = R7Load 
		OR State = R7Save OR State = R8Load OR State = R8Save OR State = R9Load 
		OR State = R9Save OR State = R10Load OR State = R10Save OR State = R11Load 
		OR State = R11Save OR State = R12Load OR State = R12Save OR State = R13Load 
		OR State = R13Save OR State = R14Load OR State = R14Save OR State = R15Load 
		OR State = R15Save OR State = R16Load OR State = R16Save else '0';
		
	select2 <= '1' when State = R2Load OR State = R2Save OR State = R3Load 
		OR State = R3Save OR State = R4Load OR State = R4Save OR State = R5Load 
		OR State = R5Save OR State = R6Load OR State = R6Save OR State = R7Load 
		OR State = R7Save OR State = R8Load OR State = R8Save OR State = R9Load 
		OR State = R9Save OR State = R10Load OR State = R10Save OR State = R11Load 
		OR State = R11Save OR State = R12Load OR State = R12Save OR State = R13Load 
		OR State = R13Save OR State = R14Load OR State = R14Save OR State = R15Load 
		OR State = R15Save OR State = R16Load OR State = R16Save else '0';
		
	load <= '1' when State = LOAD_KEYS else '0';
	
	done <= '1' when State = Result else '0';
	
	process(clock, reset) 
	begin
		if reset = '1' then state <= START_STATE;
		elsif clock'EVENT and clock = '1' then
			case State is
				when START_STATE => 
					if start = '1' then 
						state <= SCHEDULE_KEYS;
					end if;
				when SCHEDULE_KEYS => state <= LOAD_KEYS; 
				when LOAD_KEYS => state <= R1Load;
				when R1Load => state <=  R1Save;
				when R1Save => state <=  R2Load;
				when R2Load => state <=  R2Save;
				when R2Save => state <=  R3Load;
				when R3Load => state <=  R3Save;
				when R3Save => state <=  R4Load;
				when R4Load => state <=  R4Save;
				when R4Save => state <=  R5Load;
				when R5Load => state <=  R5Save;
				when R5Save => state <=  R6Load;
				when R6Load => state <=  R6Save;
				when R6Save => state <=  R7Load;
				when R7Load => state <=  R7Save;
				when R7Save => state <=  R8Load;
				when R8Load => state <=  R8Save;
				when R8Save => state <=  R9Load;
				when R9Load => state <=  R9Save;
				when R9Save => state <=  R10Load;
				when R10Load => state <=  R10Save;
				when R10Save => state <=  R11Load;
				when R11Load => state <=  R11Save;
				when R11Save => state <=  R12Load;
				when R12Load => state <=  R12Save;
				when R12Save => state <=  R13Load;
				when R13Load => state <=  R13Save;
				when R13Save => state <=  R14Load;
				when R14Load => state <=  R14Save;
				when R14Save => state <=  R15Load;
				when R15Load => state <=  R15Save;
				when R15Save => state <=  R16Load;
				when R16Load => state <=  R16Save;
				when R16Save => state <=  result;
				when others => state <= START_STATE;
			end case;
		end if;
	end process;
end architecture ; -- arch