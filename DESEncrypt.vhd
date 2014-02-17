library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity DESEncrypt is
	port (
		clock, start : IN STD_LOGIC; 
		plainText, key : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	
		ciperText : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	) ;
end entity ; -- DESEncrypt

architecture arch of DESEncrypt is
	COMPONENT DESStateMachine is
	  port (
		start, clock, reset : IN STD_LOGIC;
		select1, select2, load : OUT STD_LOGIC;
		done : OUT STD_LOGIC
	  ) ;
	end COMPONENT; 
	
	COMPONENT Mux32 is
	  port (
		sel : IN STD_LOGIC; 
		A, B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		Y : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	  ) ;
	end COMPONENT; 
	
	COMPONENT initialPermutation is
		port (
			plain : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
			left, right : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	end COMPONENT;
	
	COMPONENT PIPOShift32 is
		port (
			clock : IN STD_LOGIC;
			dataIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			dataOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		) ;
	end COMPONENT;
	
	COMPONENT KeyContainer is
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
	end COMPONENT;
	
	COMPONENT feistelFunction is
		port (
			fIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			K : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
			fOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		) ;
	end COMPONENT;
	
	COMPONENT keyscheduling is
		port (
			keyIn : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
			key1Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key2Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key3Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key4Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key5Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key6Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key7Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key8Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key9Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key10Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key11out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key12Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key13Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key14Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key15Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			key16Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
		) ;
	end COMPONENT;
	
	COMPONENT XORBit32 is
	  port (
		R : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		K : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		RES : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	  ) ;
	end COMPONENT;
	
	COMPONENT inversePermutation is
		port (
			left, right : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			inverseOut : Out STD_LOGIC_VECTOR(63 DOWNTO 0)
		) ;
	end COMPONENT;
begin

end architecture ; -- arch