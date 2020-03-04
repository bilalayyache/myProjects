----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2018 20:31:27
-- Design Name: 
-- Module Name: roundkeys - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity roundkeys is
    Port ( key : in STD_LOGIC_VECTOR (127 downto 0);
           r1,r2,r3,r4,r5,r6,r7,r8,r9,r10 : out STD_LOGIC_VECTOR (127 downto 0));
end roundkeys;

architecture Behavioral of roundkeys is
signal rcon1:std_logic_vector(7 downto 0):=x"01";
signal rcon2:std_logic_vector(7 downto 0):=x"02";
signal rcon3:std_logic_vector(7 downto 0):=x"04";
signal rcon4:std_logic_vector(7 downto 0):=x"08";
signal rcon5:std_logic_vector(7 downto 0):=x"10";
signal rcon6:std_logic_vector(7 downto 0):=x"20";
signal rcon7:std_logic_vector(7 downto 0):=x"40";
signal rcon8:std_logic_vector(7 downto 0):=x"80";
signal rcon9:std_logic_vector(7 downto 0):=x"1b";
signal rcon10:std_logic_vector(7 downto 0):=x"36";

signal x1,x2,x3,x4,x5,x6,x7,x8,x9,x10 :STD_LOGIC_VECTOR (127 downto 0);
signal p1,p2,p3,p4,p5,p6,p7,p8,p9,p10:std_logic_vector(127 downto 0);
component keyexpansion is
    Port ( a : in std_logic_vector(127 downto 0);
           rcon : in std_logic_vector(7 downto 0);
           k : out std_logic_vector(127 downto 0));
end component;
begin
u1:keyexpansion port map(key,rcon1,x1);
p1<=x1;
u2:keyexpansion port map(p1,rcon2,x2);
p2<=x2;
u3:keyexpansion port map(p2,rcon3,x3);
p3<=x3;
u4:keyexpansion port map(p3,rcon4,x4);
p4<=x4;
u5:keyexpansion port map(p4,rcon5,x5);
p5<=x5;
u6:keyexpansion port map(p5,rcon6,x6);
p6<=x6;
u7:keyexpansion port map(p6,rcon7,x7);
p7<=x7;
u8:keyexpansion port map(p7,rcon8,x8);
p8<=x8;
u9:keyexpansion port map(p8,rcon9,x9);
p9<=x9;
u10:keyexpansion port map(p9,rcon10,x10);
p10<=x10;

r1<=x1;
r2<=x2;
r3<=x3;
r4<=x4;
r5<=x5;
r6<=x6;
r7<=x7;
r8<=x8;
r9<=x9;
r10<=x10;

end Behavioral;
