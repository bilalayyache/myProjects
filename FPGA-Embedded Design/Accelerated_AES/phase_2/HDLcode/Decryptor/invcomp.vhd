library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity invcomp is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0));
end invcomp;

architecture Behavioral of invcomp is

begin

q(7)<= a(7) xor  a(6) xor a(5) xor a(1);
q(6)<= a(6) xor a(2);
q(5)<= a(5) xor a(6) xor a(1);
q(4)<= a(5) xor a(4) xor a(6) xor a(2) xor a(1);
q(3)<= a(5) xor a(4) xor a(3) xor a(2) xor a(1);
q(2)<= a(7) xor a(4) xor a(3) xor a(2) xor a(1);
q(1)<= a(5) xor a(4);
q(0)<= a(5) xor a(4) xor a(6) xor a(2) xor a(0);

end Behavioral;

