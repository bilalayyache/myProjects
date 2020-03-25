library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mul is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           q : out STD_LOGIC_VECTOR (3 downto 0));
end mul;

architecture Behavioral of mul is
component  mul2 is
   Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
          b : in STD_LOGIC_VECTOR (1 downto 0);
          q : out STD_LOGIC_VECTOR (1 downto 0));
end component;
component con2 is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           q : out STD_LOGIC_VECTOR (1 downto 0));
end component;
signal hh,lh,hl,ll,hhq : STD_LOGIC_VECTOR (1 downto 0):="00";
begin

m1 : mul2 port map(a=>a(1 downto 0),b=> b(1 downto 0),q=>ll);
m2 : mul2 port map(a=>a(1 downto 0),b=> b(3 downto 2),q=>lh);
m3 : mul2 port map(a=>a(3 downto 2),b=> b(1 downto 0),q=>hl);
m4 : mul2 port map(a=>a(3 downto 2),b=> b(3 downto 2),q=>hh);
m5 : con2 port map(a=>hh,q=>hhq);
q<=((hh xor lh xor hl)&(hhq xor ll));
end Behavioral;

