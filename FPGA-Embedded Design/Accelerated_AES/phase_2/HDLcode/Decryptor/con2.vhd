library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity con2 is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           q : out STD_LOGIC_VECTOR (1 downto 0));
end con2;

architecture Behavioral of con2 is

begin

q(1)<= a(1) xor a(0);
q(0)<= a(1);

end Behavioral;

