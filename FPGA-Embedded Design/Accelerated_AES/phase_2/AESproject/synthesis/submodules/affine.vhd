----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.04.2018 22:08:05
-- Design Name: 
-- Module Name: affine - Behavioral
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

entity affine is
    Port ( x : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (7 downto 0));
end affine;

architecture Behavioral of affine is
signal a : std_logic_vector(7 downto 0):="01100011";
begin
    process(x)
    begin
        for i in 0 to 7 loop
            y(i)<= x(i) xor x((i+4)mod 8) xor x((i+5) mod 8) xor x((i+6) mod 8) xor x((i+7) mod 8) xor a(i);
        end loop;
    end process;
end Behavioral;

