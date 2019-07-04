----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instructionRegister is
port (
		registerIn: in std_logic_vector (3 downto 0);
		en,CLK: in std_logic;
		registerOut: out std_logic_vector (3 downto 0)
);
end instructionRegister;

architecture Behavioral of instructionRegister is

begin
process(registerIn)
begin
	--if (en = '1') then
			registerOut <= registerIn;
	--end if;
end process;

end Behavioral;

