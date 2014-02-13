library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity KeyContainer is
  port (
	clock, load : IN STD_LOGIC;
	key1Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key2Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key3Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key4Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key5Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key6Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key7Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key8Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key9Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key10Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key11out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key12Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key13Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key14Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key15Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key16Out : IN STD_LOGIC_VECTOR(47 DOWNTO 0)
	
	keyOut : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  ) ;
end entity ; -- KeyContainer

architecture arch of KeyContainer is
	signal sr1Out, sr2Out, sr3Out, sr4Out, sr5Out, sr6Out, sr7Out, sr8Out, sr9Out,
	sr10Out, sr11Out, sr12Out, sr13Out, sr14Out, sr15Out,
	sr16Out : STD_LOGIC_VECTOR(47 DOWNTO 0);
begin

end architecture ; -- arch