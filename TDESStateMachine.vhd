library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity TDESStateMachine is
  port (
	clock : IN STD_LOGIC;
	done : OUT STD_LOGIC;
  ) ;
end entity ; -- TDESStateMachine

architecture arch of TDESStateMachine is
		type STATETYPE is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, 
			s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, 
			s27, s28, s29, s30, s31, s32, s33, s34, s35, s36, s37, s38, s39, s40, 
			s41, s42, s43, s44, s45, s46, s47, s48, s49, s50, s51, s52, s53, s54, 
			s55, s56, s57, s58, s59, s60, s61, s62, s63, s64, s65, s66, s67, s68, 
			s69, s70, s71, s72, s73, s74, s75, s76, s77, s78, s79, s80, s81, s82, 
			s83, s84, s85, s86, s87, s88, s89, s90, s91, s92, s93, s94, s95, s96, 
			s97, s98, s99, s100, s101, s102, s103, s104, s105, s106, s107, s108);
begin

end architecture ; -- arch