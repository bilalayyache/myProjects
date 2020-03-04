----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.04.2018 23:37:06
-- Design Name: 
-- Module Name: square - Behavioral
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

entity square is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           q : out STD_LOGIC_VECTOR (3 downto 0));
end square;

architecture Behavioral of square is
signal sq,sq2: std_logic_vector(3 downto 0):="0000";
begin
  
        sq(3)<= a(3);
        sq(2)<= a(3) xor a(2);
        sq(1)<= a(2) xor a(1);
        sq(0)<= a(3) xor a(1) xor a(0);
 

        sq2(3)<= sq(2) xor sq(0);
        sq2(2)<= sq(3) xor sq(2) xor sq(1) xor sq(0);
        sq2(1)<= sq(3);
        sq2(0)<= sq(2);

q<=sq2; 
end Behavioral;

