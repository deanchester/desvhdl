library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity KeyContainer is
  port (
	clock, load : IN STD_LOGIC;
	key1In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key2In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key3In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key4In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key5In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key6In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key7In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key8In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key9In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key10In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key11In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key12In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key13In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key14In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key15In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key16In : IN STD_LOGIC_VECTOR(47 DOWNTO 0)
	
	keyOut : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  ) ;
end entity ; -- KeyContainer

architecture arch of KeyContainer is
	signal sr1Out, sr2Out, sr3Out, sr4Out, sr5Out, sr6Out, sr7Out, sr8Out, sr9Out,
	sr10Out, sr11Out, sr12Out, sr13Out, sr14Out, sr15Out,
	sr16Out : STD_LOGIC_VECTOR(47 DOWNTO 0);
begin

	process(clock)
	begin 
		if (clock'EVENT AND clock='1' AND load='1') then
			sr1Out <= key1In;
			sr2Out <= key2In;
			sr3Out <= key3In;
			sr4Out <= key4In;
			sr5Out <= key5In;
			sr6Out <= key6In;
			sr7Out <= key7In;
			sr8Out <= key8In;
			sr9Out <= key9In;
			sr10Out <= key10In;
			sr11Out <= key11In;
			sr12Out <= key12In;
			sr13Out <= key13In;
			sr14Out <= key14In;
			sr15Out <= key15In;
			sr16Out <= key16In;
			keyOut <= sr1Out;
		elsif (clock'EVENT AND clock='1' AND load='0') then
			sr1Out <= sr2Out;
			sr2Out <= sr3Out;
			sr3Out <= sr4Out;
			sr4Out <= sr5Out;
			sr5Out <= sr6Out;
			sr6Out <= sr7Out;
			sr7Out <= sr8Out;
			sr8Out <= sr9Out;
			sr9Out <= sr10Out;
			sr10Out <= sr11Out;
			sr11Out <= sr12Out;
			sr12Out <= sr13Out;
			sr13Out <= sr14Out;
			sr14Out <= sr15Out;
			sr15Out <= sr16Out;
			keyOut <= sr1Out;
		end if;
	end process;
end architecture ; -- arch