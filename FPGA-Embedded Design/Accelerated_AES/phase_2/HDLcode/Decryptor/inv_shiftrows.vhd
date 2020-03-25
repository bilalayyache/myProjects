library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inv_shiftrows is
    Port ( a : in STD_LOGIC_VECTOR (127 downto 0);
           b : out STD_LOGIC_VECTOR (127 downto 0));
end inv_shiftrows;

architecture Behavioral of inv_shiftrows is
signal t:std_logic_vector(127 downto 0);

begin
t(127 downto 120)<=a(127 downto 120);
t(95 downto 88)<=a(95 downto 88);
t(63 downto 56)<=a(63 downto 56);
t(31 downto 24)<=a(31 downto 24);
t(87 downto 80)<=a(119 downto 112);
t(55 downto 48)<=a(87 downto 80);
t(23 downto 16)<=a(55 downto 48);
t(119 downto 112)<=a(23 downto 16);
t(111 downto 104)<=a(47 downto 40);
t(79 downto 72)<=a(15 downto 8);
t(47 downto 40)<=a(111 downto 104);
t(15 downto 8)<=a(79 downto 72);
t(103 downto 96)<=a(71 downto 64);
t(71 downto 64)<=a(39 downto 32);
t(39 downto 32)<=a(7 downto 0);
t(7 downto 0)<=a(103 downto 96);

b<=t;

end Behavioral;
