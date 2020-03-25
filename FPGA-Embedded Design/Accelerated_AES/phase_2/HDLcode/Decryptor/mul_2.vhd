library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mul_2 is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : out STD_LOGIC_VECTOR (7 downto 0));
end mul_2;

architecture Behavioral of mul_2 is

begin
b(7)<=a(6);
b(6)<=a(5);
b(5)<=a(4);
b(4)<=a(7) xor a(3);
b(3)<=a(7) xor a(2);
b(2)<=a(1);
b(1)<=a(7) xor a(0);
b(0)<=a(7);


end Behavioral;
