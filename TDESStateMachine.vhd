library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity TDESStateMachine is
  port (
	start, clock, reset : IN STD_LOGIC;
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
	
	signal State : STATETYPE;
	
begin
	done <= '1' when State = s108 else '0';
	if reset = '1' then state <= s0;
	elsif clock'EVENT and clock = '1' then
		CASE
			case State is
				when s0 => 
					if start = '1' then 
						state <= s1;
					end if;
				when s0 => state <= s1;
				when s1 => state <= s2;
				when s2 => state <= s3;
				when s3 => state <= s4;
				when s4 => state <= s5;
				when s5 => state <= s6;
				when s6 => state <= s7;
				when s7 => state <= s8;
				when s8 => state <= s9;
				when s9 => state <= s10;
				when s10 => state <= s11;
				when s11 => state <= s12;
				when s12 => state <= s13;
				when s13 => state <= s14;
				when s14 => state <= s15;
				when s15 => state <= s16;
				when s16 => state <= s17;
				when s17 => state <= s18;
				when s18 => state <= s19;
				when s19 => state <= s20;
				when s20 => state <= s21;
				when s21 => state <= s22;
				when s22 => state <= s23;
				when s23 => state <= s24;
				when s24 => state <= s25;
				when s25 => state <= s26;
				when s26 => state <= s27;
				when s27 => state <= s28;
				when s28 => state <= s29;
				when s29 => state <= s30;
				when s30 => state <= s31;
				when s31 => state <= s32;
				when s32 => state <= s33;
				when s33 => state <= s34;
				when s34 => state <= s35;
				when s35 => state <= s36;
				when s36 => state <= s37;
				when s37 => state <= s38;
				when s38 => state <= s39;
				when s39 => state <= s40;
				when s40 => state <= s41;
				when s41 => state <= s42;
				when s42 => state <= s43;
				when s43 => state <= s44;
				when s44 => state <= s45;
				when s45 => state <= s46;
				when s46 => state <= s47;
				when s47 => state <= s48;
				when s48 => state <= s49;
				when s49 => state <= s50;
				when s50 => state <= s51;
				when s51 => state <= s52;
				when s52 => state <= s53;
				when s53 => state <= s54;
				when s54 => state <= s55;
				when s55 => state <= s56;
				when s56 => state <= s57;
				when s57 => state <= s58;
				when s58 => state <= s59;
				when s59 => state <= s60;
				when s60 => state <= s61;
				when s61 => state <= s62;
				when s62 => state <= s63;
				when s63 => state <= s64;
				when s64 => state <= s65;
				when s65 => state <= s66;
				when s66 => state <= s67;
				when s67 => state <= s68;
				when s68 => state <= s69;
				when s69 => state <= s70;
				when s70 => state <= s71;
				when s71 => state <= s72;
				when s72 => state <= s73;
				when s73 => state <= s74;
				when s74 => state <= s75;
				when s75 => state <= s76;
				when s76 => state <= s77;
				when s77 => state <= s78;
				when s78 => state <= s79;
				when s79 => state <= s80;
				when s80 => state <= s81;
				when s81 => state <= s82;
				when s82 => state <= s83;
				when s83 => state <= s84;
				when s84 => state <= s85;
				when s85 => state <= s86;
				when s86 => state <= s87;
				when s87 => state <= s88;
				when s88 => state <= s89;
				when s89 => state <= s90;
				when s90 => state <= s91;
				when s91 => state <= s92;
				when s92 => state <= s93;
				when s93 => state <= s94;
				when s94 => state <= s95;
				when s95 => state <= s96;
				when s96 => state <= s97;
				when s97 => state <= s98;
				when s98 => state <= s99;
				when s99 => state <= s100;
				when s100 => state <= s101;
				when s101 => state <= s102;
				when s102 => state <= s103;
				when s103 => state <= s104;
				when s104 => state <= s105;
				when s105 => state <= s106;
				when s106 => state <= s107;
				when s107 => state <= s108;
				when s108 => state <= s109;
			end case;
	end if;
end architecture ; -- arch