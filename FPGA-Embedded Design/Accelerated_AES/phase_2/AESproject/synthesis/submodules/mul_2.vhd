----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2018 01:23:15
-- Design Name: 
-- Module Name: mul_2 - Behavioral
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

entity mul_2 is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : out STD_LOGIC_VECTOR (7 downto 0));
end mul_2;

architecture Behavioral of mul_2 is

begin
b(7)<=a(6);
b(6)<=a(5);
b(5)<=a(4);
b(4)<=a(7) xor a(3);
b(3)<=a(7) xor a(2);
b(2)<=a(1);
b(1)<=a(7) xor a(0);
b(0)<=a(7);


end Behavioral;
