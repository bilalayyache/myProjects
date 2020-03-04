----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2018 16:39:04
-- Design Name: 
-- Module Name: inv_mixcolumns - Behavioral
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

entity inv_mixcolumns is
    Port ( a : in STD_LOGIC_VECTOR (127 downto 0);
           m : out STD_LOGIC_VECTOR (127 downto 0));
end inv_mixcolumns;

architecture Behavioral of inv_mixcolumns is
signal q:std_logic_vector(127 downto 0);
component inv_mix is
    port(s1,s2,s3,s4:in std_logic_vector(7 downto 0);
         d:out std_logic_vector(7 downto 0));
end component;

begin

u1:inv_mix port map(a(127 downto 120),a(119 downto 112),a(111 downto 104),a(103 downto 96),q(127 downto 120));
u2:inv_mix port map(a(119 downto 112),a(111 downto 104),a(103 downto 96),a(127 downto 120),q(119 downto 112));
u3:inv_mix port map(a(111 downto 104),a(103 downto 96),a(127 downto 120),a(119 downto 112),q(111 downto 104));
u4:inv_mix port map(a(103 downto 96),a(127 downto 120),a(119 downto 112),a(111 downto 104),q(103 downto 96));

u5:inv_mix port map(a(95 downto 88),a(87 downto 80),a(79 downto 72),a(71 downto 64),q(95 downto 88));
u6:inv_mix port map(a(87 downto 80),a(79 downto 72),a(71 downto 64),a(95 downto 88),q(87 downto 80));
u7:inv_mix port map(a(79 downto 72),a(71 downto 64),a(95 downto 88),a(87 downto 80),q(79 downto 72));
u8:inv_mix port map(a(71 downto 64),a(95 downto 88),a(87 downto 80),a(79 downto 72),q(71 downto 64));

u9:inv_mix port map(a(63 downto 56),a(55 downto 48),a(47 downto 40),a(39 downto 32),q(63 downto 56));
u10:inv_mix port map(a(55 downto 48),a(47 downto 40),a(39 downto 32),a(63 downto 56),q(55 downto 48));
u11:inv_mix port map(a(47 downto 40),a(39 downto 32),a(63 downto 56),a(55 downto 48),q(47 downto 40));
u12:inv_mix port map(a(39 downto 32),a(63 downto 56),a(55 downto 48),a(47 downto 40),q(39 downto 32));

u13:inv_mix port map(a(31 downto 24),a(23 downto 16),a(15 downto 8),a(7 downto 0),q(31 downto 24));
u14:inv_mix port map(a(23 downto 16),a(15 downto 8),a(7 downto 0),a(31 downto 24),q(23 downto 16));
u15:inv_mix port map(a(15 downto 8),a(7 downto 0),a(31 downto 24),a(23 downto 16),q(15 downto 8));
u16:inv_mix port map(a(7 downto 0),a(31 downto 24),a(23 downto 16),a(15 downto 8),q(7 downto 0));

m<=q;
end Behavioral;

