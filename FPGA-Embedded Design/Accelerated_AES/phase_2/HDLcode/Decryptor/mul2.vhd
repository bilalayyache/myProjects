library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mul2 is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           b : in STD_LOGIC_VECTOR (1 downto 0);
           q : out STD_LOGIC_VECTOR (1 downto 0));
end mul2;

architecture Behavioral of mul2 is

begin

q(1)<= (a(1) and b(1)) xor (a(0)and b(1)) xor (a(1)and b(0));
q(0)<= (a(1) and b(1)) xor (a(0)and b(0));

end Behavioral;

