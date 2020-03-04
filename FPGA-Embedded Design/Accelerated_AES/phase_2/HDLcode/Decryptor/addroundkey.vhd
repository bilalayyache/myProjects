----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2018 16:26:22
-- Design Name: 
-- Module Name: addroundkey - Behavioral
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

entity addroundkey is
    Port ( r_key : in STD_LOGIC_VECTOR (127 downto 0);
           s : in STD_LOGIC_VECTOR (127 downto 0);
           s_out : out STD_LOGIC_VECTOR (127 downto 0));
end addroundkey;

architecture Behavioral of addroundkey is

begin
s_out<=s xor r_key;

end Behavioral;
