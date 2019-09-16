library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fourBitAdder is
	generic (
		Dwidth : integer := 4
	);
    port (
		in1, in2 : in std_logic_vector(Dwidth - 1 downto 0);
		mode : in std_logic;
		adder_out : out std_logic_vector(Dwidth - 1 downto 0);
		carryOutAdder : out std_logic
	);
end fourBitAdder;

architecture Structural of fourBitAdder is

	Component FullAdder
	   Port ( CarryIn : in STD_LOGIC;
            P : in STD_LOGIC;
            Q : in STD_LOGIC;
            SUM : out STD_LOGIC;
            CarryOut : out STD_LOGIC);
   end component; 
	 

	signal tempFour: std_logic_vector(4 downto 0);
	signal XORoutput: std_logic_vector(Dwidth-1 downto 0);

	begin

		XORoutput(0) <= in2(0) xor mode;
		XORoutput(1) <= in2(1) xor mode;
		XORoutput(2) <= in2(2) xor mode;
		XORoutput(3) <= in2(3) xor mode;
		tempFour(0) <= mode;
    
		FA1: FullAdder
		port map(tempFour(0), in1(0), XORoutput(0), adder_out(0),tempFour(1));
		
		FA2: FullAdder
		port map(tempFour(1), in1(1), XORoutput(1), adder_out(1),tempFour(2));
		
		FA3: FullAdder
		port map(tempFour(2), in1(2), XORoutput(2), adder_out(2),tempFour(3));
		
		FA4: FullAdder
		port map(tempFour(3), in1(3), XORoutput(3), adder_out(3),tempFour(4));
		
	 
		---GEN_Adder:
		---for i in 0 to Dwidth-1 generate
			----	sbitAdder : FullAdder
			----	port map (tempFour(i) ,in1(i), XORoutput(i), adder_out(i),tempFour(i+1));
		----end generate GEN_Adder;
	
	---OVERFLOW GOES HERE IF NEEDED
	
		carryOutAdder <= tempFour(4);

end Structural;