library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inv_mix is
    Port ( s1,s2,s3,s4 : in STD_LOGIC_VECTOR (7 downto 0);
           d : out STD_LOGIC_VECTOR (7 downto 0));
end inv_mix;

architecture Behavioral of inv_mix is
component mul_2 is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : out STD_LOGIC_VECTOR (7 downto 0));
end component;
signal x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19:std_logic_vector(7 downto 0);
begin
u1:mul_2 port map(s1,x1);
x2<=x1 xor s1;
u2:mul_2 port map(x2,x3);
x4<=x3 xor s1;
u3:mul_2 port map(x4,x5);

u4:mul_2 port map(s2,x6);
u5:mul_2 port map(x6,x7);
x8<=x7 xor s2;
u6:mul_2 port map(x8,x9);
x19<=x9 xor s2;


u7:mul_2 port map(s3,x10);
x11<=x10 xor s3;
u8:mul_2 port map(x11,x12);
u9:mul_2 port map(x12,x13);
x14<=x13 xor s3;


u10:mul_2 port map(s4,x15);
u11:mul_2 port map(x15,x16);
u12:mul_2 port map(x16,x17);
x18<=x17 xor s4;

d<=x5 xor x19 xor x14 xor x18;
end Behavioral;