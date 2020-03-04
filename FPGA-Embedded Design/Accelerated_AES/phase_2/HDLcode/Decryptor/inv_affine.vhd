----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2018 19:48:33
-- Design Name: 
-- Module Name: inv_affine - Behavioral
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

entity inv_affine is
    Port ( x : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (7 downto 0));
end inv_affine;

architecture Behavioral of inv_affine is
signal a : std_logic_vector(7 downto 0):="00000101";
begin
    process(x)
    begin
        for i in 0 to 7 loop
            y(i)<=x((i+2)mod 8) xor x((i+5)mod 8) xor x((i+7)mod 8) xor a(i);
        end loop;
    end process;
end Behavioral;
