----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu_1 is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           cin : in  STD_LOGIC;
           Alu_out : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end alu_1;

architecture Behavioral of alu_1 is

SIGNAL t1: std_logic;

begin
	process(sel,in1,in2,cin, t1)
	begin
		case sel is
			when "000" =>
				t1 <= '0';
				cout <= '0';
				Alu_out <= in1 and in2;
			when "001" =>
				t1 <= '0';
				cout <= '0';
				Alu_out <= in1 or in2;
			when "010" =>
				t1 <= '0';
				cout <= (in1 and in2) or (in1 and cin) or (in2 and cin);
				Alu_out <= (in1 and in2 and cin) or (in1 and (not in2) and (not cin)) or ((not in1) and in2 and (not cin)) or ((not in1) and (not in2) and cin);
			when "011" =>
				t1 <= '0';
				cout <= '0';
				Alu_out <= in1 xor in2;
			when "100" =>
				t1 <= '0';
				cout <= (in1 and in2) or (in1 and cin) or (in2 and cin);
				Alu_out <= (in1 and in2 and cin) or (in1 and (not in2) and (not cin)) or ((not in1) and in2 and (not cin)) or ((not in1) and (not in2) and cin);
			when "101" => 
				t1 <= not in2;
				cout <= (in1 and t1) or (in1 and cin) or (t1 and cin);
				Alu_out <= (in1 and t1 and cin) or (in1 and (not t1) and (not cin)) or ((not in1) and t1 and (not cin)) or ((not in1) and (not t1) and cin);
			when "110" =>
				t1 <= '0';
				cout <= (in1 and in2) or (in1 and cin) or (in2 and cin);
				Alu_out <= (in1 and in2 and cin) or (in1 and (not in2) and (not cin)) or ((not in1) and in2 and (not cin)) or ((not in1) and (not in2) and cin);
			when others =>
				t1 <= not in2;
				cout <= (in1 and t1) or (in1 and cin) or (t1 and cin);
				Alu_out <= (in1 and t1 and cin) or (in1 and (not t1) and (not cin)) or ((not in1) and t1 and (not cin)) or ((not in1) and (not t1) and cin);
		end case;
	end process;
end Behavioral;