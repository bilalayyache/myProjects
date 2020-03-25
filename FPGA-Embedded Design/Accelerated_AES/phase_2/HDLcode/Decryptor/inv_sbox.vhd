library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inv_sbox is
    Port ( s : in STD_LOGIC_VECTOR (7 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0));
end inv_sbox;

architecture Behavioral of inv_sbox is
signal sq,t7,sq1,t8,t : std_logic_vector(7 downto 0):="00000000";
signal temp1,t1,t4,t5,t6,t3: std_logic_vector(3 downto 0):="0000";
signal temp2,t2,ad2: std_logic_vector(3 downto 0):="0000";
component add is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           q : out STD_LOGIC_VECTOR (3 downto 0));
end component;
component  mul is
   Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
          b : in STD_LOGIC_VECTOR (3 downto 0);
          q : out STD_LOGIC_VECTOR (3 downto 0));
end component;
component square is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           q : out STD_LOGIC_VECTOR (3 downto 0));
end component;
component inv is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           q : out STD_LOGIC_VECTOR (3 downto 0));
end component;
component invcomp is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0));
end component;
component inv_affine is
    Port ( x : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (7 downto 0));
end component;
component comp is
    Port ( s : in STD_LOGIC_VECTOR (7 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0));
end component;
begin
x0:inv_affine port map(x=>s,y=>t);
x1: comp port map (s=>t,q=>sq);
temp1<= sq(7 downto 4);
temp2<= sq(3 downto 0);
x2: add port map(a=>temp1,b=>temp2,q=>ad2);
x3: mul port map(a=>ad2,b=>temp2,q=>t2);
x4: square port map(a=>temp1,q=>t1);
x5: add port map(a=>t1,b=>t2,q=>t3);
x6: inv port map(a=>t3,q=>t4);
x7: mul port map(a=>t4,b=>temp1,q=>t5);
x8: mul port map(a=>t4,b=>ad2,q=>t6);
t7(7 downto 0)<= t5&t6;
x9: invcomp port map(a=>t7,q=>t8);

q<=t8;
end Behavioral;

