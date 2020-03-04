----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2018 18:06:51
-- Design Name: 
-- Module Name: inv_subbytes - Behavioral
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

entity inv_subbytes is
    Port ( a : in STD_LOGIC_VECTOR (127 downto 0);
           s : out STD_LOGIC_VECTOR (127 downto 0));
end inv_subbytes;

architecture Behavioral of inv_subbytes is
component inv_sbox is
    port(s:in std_logic_vector(7 downto 0);
         q:out std_logic_vector(7 downto 0));
end component;
begin
u1:inv_sbox port map (a(127 downto 120),s(127 downto 120)); 
u2:inv_sbox port map (a(119 downto 112),s(119 downto 112)); 
u3:inv_sbox port map (a(111 downto 104),s(111 downto 104)); 
u4:inv_sbox port map (a(103 downto 96),s(103 downto 96)); 
u5:inv_sbox port map (a(95 downto 88),s(95 downto 88)); 
u6:inv_sbox port map (a(87 downto 80),s(87 downto 80)); 
u7:inv_sbox port map (a(79 downto 72),s(79 downto 72)); 
u8:inv_sbox port map (a(71 downto 64),s(71 downto 64)); 
u9:inv_sbox port map (a(63 downto 56),s(63 downto 56)); 
u10:inv_sbox port map (a(55 downto 48),s(55 downto 48)); 
u11:inv_sbox port map (a(47 downto 40),s(47 downto 40)); 
u12:inv_sbox port map (a(39 downto 32),s(39 downto 32)); 
u13:inv_sbox port map (a(31 downto 24),s(31 downto 24)); 
u14:inv_sbox port map (a(23 downto 16),s(23 downto 16)); 
u15:inv_sbox port map (a(15 downto 8),s(15 downto 8)); 
u16:inv_sbox port map (a(7 downto 0),s(7 downto 0)); 

end Behavioral;
