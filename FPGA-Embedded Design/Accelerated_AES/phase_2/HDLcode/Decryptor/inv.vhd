----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.04.2018 23:34:42
-- Design Name: 
-- Module Name: inv - Behavioral
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

entity inv is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           q : out STD_LOGIC_VECTOR (3 downto 0));
end inv;

architecture Behavioral of inv is

begin

q(3)<= a(3) xor (a(3) and a(2) and a(1)) xor (a(3) and a(0)) xor a(2);
q(2)<= a(2) xor (a(3) and a(2) and a(1)) xor (a(3) and a(0)) xor (a(3) and a(2) and a(0)) xor (a(2) and a(1));
q(1)<= a(3) xor (a(3) and a(2) and a(1)) xor a(2) xor (a(3) and a(1) and a(0)) xor (a(2) and a(0)) xor a(1);
q(0)<= a(2) xor a(0) xor a(1) xor  (a(3) and a(2) and a(1)) xor (a(3) and a(1)) xor (a(3) and a(2) and a(0)) xor (a(2) and a(1) and a(0)) xor(a(3) and a(1) and a(0)) xor (a(3) and a(0)) xor (a(2) and a(1));

end Behavioral;

