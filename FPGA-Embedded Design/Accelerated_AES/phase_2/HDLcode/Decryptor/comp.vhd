----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.04.2018 23:29:19
-- Design Name: 
-- Module Name: comp - Behavioral
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

entity comp is
    Port ( s : in STD_LOGIC_VECTOR (7 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0));
end comp;

architecture Behavioral of comp is
signal sq : std_logic_vector(7 downto 0);
begin
sq(7)<= s(7) xor s(5);
sq(6)<= s(7) xor s(6) xor s(4) xor s(3) xor s(2) xor s(1);
sq(5)<= s(7) xor s(5) xor s(3) xor s(2);
sq(4)<= s(7) xor s(5) xor s(3) xor s(2) xor s(1);
sq(3)<= s(7) xor s(6) xor s(2) xor s(1);
sq(2)<= s(7) xor s(4) xor s(3) xor s(2) xor s(1);
sq(1)<= s(6) xor s(4) xor s(1);
sq(0)<= s(6) xor s(0) xor s(1);

q<=sq;
end Behavioral;

