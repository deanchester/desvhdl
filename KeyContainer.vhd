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

	process(clock)
	begin 
		if (clock'EVENT AND clock='1' AND load='1') then
			sr1Out <= key1Out;
			sr2Out <= key2Out;
			sr3Out <= key3Out;
			sr4Out <= key4Out;
			sr5Out <= key5Out;
			sr6Out <= key6Out;
			sr7Out <= key7Out;
			sr8Out <= key8Out;
			sr9Out <= key9Out;
			sr10Out <= key10Out;
			sr11Out <= key11Out;
			sr12Out <= key12Out;
			sr13Out <= key13Out;
			sr14Out <= key14Out;
			sr15Out <= key15Out;
			sr16Out <= key16Out;
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