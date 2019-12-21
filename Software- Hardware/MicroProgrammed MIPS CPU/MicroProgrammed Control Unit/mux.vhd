----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux is
	port (
		din1,din2: in std_logic_vector (3 downto 0);
		sel: in std_logic_vector (1 downto 0);
		dout: out std_logic_vector (3 downto 0)
	);
end mux;

architecture Behavioral of mux is

begin

process(sel,din1,din2)
begin
	if sel = "00" then 
		dout <= din1;
	elsif sel = "01" then
		dout <= "0000";
	elsif sel = "10" then
		dout <= din2;
	else
		dout <= "0000";
	end if;
end process;

end Behavioral;

