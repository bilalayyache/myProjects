----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logicMapping is
	port (
		in1: in std_logic_vector (3 downto 0);
		out1: out std_logic_vector (3 downto 0)
	);
end logicMapping;

architecture Structural of logicMapping is

begin
process(in1)
begin
if in1(3) = '0' then
	out1 <= "0010";
elsif in1 = "1000" then--lw
	out1 <= "0111";
elsif in1 = "1001" then--sw
	out1 <= "0101";
else						  --beq
	out1 <= "0100";
end if;
end process;

end Structural;
