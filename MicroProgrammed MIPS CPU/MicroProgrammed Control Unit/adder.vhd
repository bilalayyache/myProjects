----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity adder is
	port (
		a1: in std_logic_vector (3 downto 0);
		o1: out std_logic_vector (3 downto 0);
		reset: in std_logic
		);
	
end adder;

architecture Behavioral of adder is

begin
process(reset , a1)
begin
if reset = '1' then
	o1 <= "0001";
else
	o1 <= a1 + "0001";
end if;
end process;

end Behavioral;