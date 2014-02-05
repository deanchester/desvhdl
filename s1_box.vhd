library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity S1Box is
  port (
  	sIN: IN std_logic_VECTOR(5 downto 0);
  	sOUT: OUT std_logic_VECTOR(3 downto 0));
  ) ;
end entity ; -- S1Box

architecture arch of S1Box is

begin
	case sIN is: 
		when to_unsigned(0,6) => sOUT <= to_unsigned(14, 4);
		when to_unsigned(1,6) => sOUT <= to_unsigned(0, 4);
		when to_unsigned(2,6) => sOUT <= to_unsigned(4, 4);
		when to_unsigned(3,6) => sOUT <= to_unsigned(15, 4);
		when to_unsigned(4,6) => sOUT <= to_unsigned(13, 4);
		when to_unsigned(5,6) => sOUT <= to_unsigned(7, 4);
		when to_unsigned(6,6) => sOUT <= to_unsigned(1, 4);
		when to_unsigned(7,6) => sOUT <= to_unsigned(4, 4);
		when to_unsigned(8,6) => sOUT <= to_unsigned(2, 4);
		when to_unsigned(9,6) => sOUT <= to_unsigned(14, 4);
		when to_unsigned(10,6) => sOUT <= to_unsigned(15, 4);
		when to_unsigned(11,6) => sOUT <= to_unsigned(2, 4);
		when to_unsigned(12,6) => sOUT <= to_unsigned(11, 4);
		when to_unsigned(13,6) => sOUT <= to_unsigned(13, 4);
		when to_unsigned(14,6) => sOUT <= to_unsigned(8, 4);
		when to_unsigned(15,6) => sOUT <= to_unsigned(1, 4);
		when to_unsigned(16,6) => sOUT <= to_unsigned(3, 4);
		when to_unsigned(17,6) => sOUT <= to_unsigned(10, 4);
		when to_unsigned(18,6) => sOUT <= to_unsigned(10, 4);
		when to_unsigned(19,6) => sOUT <= to_unsigned(6, 4);
		when to_unsigned(20,6) => sOUT <= to_unsigned(6, 4);
		when to_unsigned(21,6) => sOUT <= to_unsigned(12, 4);
		when to_unsigned(22,6) => sOUT <= to_unsigned(12, 4);
		when to_unsigned(23,6) => sOUT <= to_unsigned(11, 4);
		when to_unsigned(24,6) => sOUT <= to_unsigned(5, 4);
		when to_unsigned(25,6) => sOUT <= to_unsigned(9, 4);
		when to_unsigned(26,6) => sOUT <= to_unsigned(9, 4);
		when to_unsigned(27,6) => sOUT <= to_unsigned(5, 4);
		when to_unsigned(28,6) => sOUT <= to_unsigned(0, 4);
		when to_unsigned(29,6) => sOUT <= to_unsigned(3, 4);
		when to_unsigned(30,6) => sOUT <= to_unsigned(7, 4);
		when to_unsigned(31,6) => sOUT <= to_unsigned(8, 4);
		when to_unsigned(32,6) => sOUT <= to_unsigned(4, 4);
		when to_unsigned(33,6) => sOUT <= to_unsigned(15, 4);
		when to_unsigned(34,6) => sOUT <= to_unsigned(1, 4);
		when to_unsigned(35,6) => sOUT <= to_unsigned(12, 4);
		when to_unsigned(36,6) => sOUT <= to_unsigned(14, 4);
		when to_unsigned(37,6) => sOUT <= to_unsigned(8, 4);
		when to_unsigned(38,6) => sOUT <= to_unsigned(8, 4);
		when to_unsigned(39,6) => sOUT <= to_unsigned(2, 4);
		when to_unsigned(40,6) => sOUT <= to_unsigned(13, 4);
		when to_unsigned(41,6) => sOUT <= to_unsigned(4, 4);
		when to_unsigned(42,6) => sOUT <= to_unsigned(6, 4);
		when to_unsigned(43,6) => sOUT <= to_unsigned(9, 4);
		when to_unsigned(44,6) => sOUT <= to_unsigned(2, 4);
		when to_unsigned(45,6) => sOUT <= to_unsigned(1, 4);
		when to_unsigned(46,6) => sOUT <= to_unsigned(11, 4);
		when to_unsigned(47,6) => sOUT <= to_unsigned(7, 4);
		when to_unsigned(48,6) => sOUT <= to_unsigned(15, 4);
		when to_unsigned(49,6) => sOUT <= to_unsigned(5;, 4);
		when to_unsigned(50,6) => sOUT <= to_unsigned(12, 4);
		when to_unsigned(51,6) => sOUT <= to_unsigned(11, 4);
		when to_unsigned(52,6) => sOUT <= to_unsigned(9, 4);
		when to_unsigned(53,6) => sOUT <= to_unsigned(3, 4);
		when to_unsigned(54,6) => sOUT <= to_unsigned(7, 4);
		when to_unsigned(55,6) => sOUT <= to_unsigned(14, 4);
		when to_unsigned(56,6) => sOUT <= to_unsigned(3, 4);
		when to_unsigned(57,6) => sOUT <= to_unsigned(10, 4);
		when to_unsigned(58,6) => sOUT <= to_unsigned(10, 4);
		when to_unsigned(59,6) => sOUT <= to_unsigned(0, 4);
		when to_unsigned(60,6) => sOUT <= to_unsigned(5, 4);
		when to_unsigned(61,6) => sOUT <= to_unsigned(6, 4);
		when to_unsigned(62,6) => sOUT <= to_unsigned(0, 4);
		when to_unsigned(63,6) => sOUT <= to_unsigned(13, 4);
end architecture ; -- arch