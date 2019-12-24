----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:35:35 03/14/2019 
-- Design Name: 
-- Module Name:    Mux4to1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux4to1 is
    Port ( din1 : in  STD_LOGIC_VECTOR (15 downto 0);
           din3 : in  STD_LOGIC_VECTOR (15 downto 0);
           din4 : in  STD_LOGIC_VECTOR (15 downto 0);
           dout : out  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end Mux4to1;

architecture Structural of Mux4to1 is

begin

process(sel, din1, din3, din4)
begin
	if sel = "00" then
		dout <= din1;
	elsif sel = "01" then
		dout <= "0000000000000001";
	elsif sel = "10" then
		dout <= din3;
	else
		dout <= din4;
	end if;
end process;

end Structural;

