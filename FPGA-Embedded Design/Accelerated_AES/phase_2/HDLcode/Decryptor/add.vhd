library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           q : out STD_LOGIC_VECTOR (3 downto 0));
end add;

architecture Behavioral of add is

begin

--q(3 downto 0) <= a(3 downto 0) xor b(3 downto 0);
q(3) <= a(3) xor b(3);
q(2) <= a(2) xor b(2);
q(1) <= a(1) xor b(1);
q(0) <= a(0) xor b(0);

end Behavioral;

