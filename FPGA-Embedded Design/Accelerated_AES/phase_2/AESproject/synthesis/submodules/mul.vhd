----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.04.2018 23:31:43
-- Design Name: 
-- Module Name: mul - Behavioral
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

