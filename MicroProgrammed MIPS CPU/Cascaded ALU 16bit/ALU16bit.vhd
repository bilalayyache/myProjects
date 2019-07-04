----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU16bit is
	generic (
		Dwidth : integer := 16
	);
	port (
		in1, in2 : in std_logic_vector(Dwidth - 1 downto 0);
		Alu_out : out std_logic_vector(Dwidth - 1 downto 0);
		sel : in std_logic_vector (2 downto 0);
		cin: in std_logic;
		zero, OVF : out std_logic
	);
end ALU16bit;

architecture Structural of ALU16bit is

Component alu_1
	port (
		in1, in2: in std_logic;
		Alu_out : out std_logic;
		sel : in std_logic_vector (2 downto 0);
		cin: in std_logic;
		cout: out std_logic
	);
end component;

signal tempFour: std_logic_vector(16 downto 0);

begin
	tempFour(0) <= Cin;
	
	GEN_ALU:
	for i in 0 to Dwidth - 1 generate
		s_bit_alu : alu_1
		port map (in1(i), in2(i), Alu_out(i), sel, tempFour(i), tempFour(i+1));
	end generate GEN_ALU;
	
	OVF <= tempFour(14) xor tempFour(15);
	
	process (in1,in2)
	begin
		if in1 = in2 then
			zero <= '1';
		else
			zero <= '0';
		end if;
	end process;
end Structural;

