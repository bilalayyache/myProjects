---------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microcounter is
	port (
		registerIn: in std_logic_vector (3 downto 0);
		reset,CLK: in std_logic;
		registerOut: out std_logic_vector (3 downto 0)
		);
		
end microcounter;

architecture Behavioral of microcounter is

begin

process(reset,CLK,registerIn)
begin
	if reset = '1' then
		registerOut <= "0000";
	elsif falling_edge(CLK) then		registerOut <= registerIn;
	end if;
end process;

end Behavioral;
