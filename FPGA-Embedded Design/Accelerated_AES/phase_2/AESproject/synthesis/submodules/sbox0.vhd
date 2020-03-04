----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.04.2018 22:00:04
-- Design Name: 
-- Module Name: sbox - Behavioral
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

entity sbox0 is
    Port ( s : in STD_LOGIC_VECTOR (7 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0));
end sbox0;

architecture Behavioral of sbox0 is
signal sq,t7,sq1,t8 : std_logic_vector(7 downto 0):="00000000";
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
component affine is
    Port ( x : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (7 downto 0));
end component;
component comp is
    Port ( s : in STD_LOGIC_VECTOR (7 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0));
end component;
begin

x0: comp port map (s=>s,q=>sq);
temp1<= sq(7 downto 4);
temp2<= sq(3 downto 0);
x1 : add port map(a=>temp1,b=>temp2,q=>ad2);
x2 : mul port map(a=>ad2,b=>temp2,q=>t2);
x3 : square port map(a=>temp1,q=>t1);
x4 : add port map(a=>t1,b=>t2,q=>t3);
x5 : inv port map(a=>t3,q=>t4);
x6 : mul port map(a=>t4,b=>temp1,q=>t5);
x7 : mul port map(a=>t4,b=>ad2,q=>t6);
t7(7 downto 0)<= t5&t6;
x8 : invcomp port map(a=>t7,q=>t8);
x9 : affine port map(x=>t8,y=>sq1);
q<=sq1;
end Behavioral;

