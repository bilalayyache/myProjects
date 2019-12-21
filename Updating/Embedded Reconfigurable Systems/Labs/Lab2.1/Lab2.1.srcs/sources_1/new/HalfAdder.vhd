library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HalfAdder is
    Port (  Ain : in STD_LOGIC;
            Bin : in STD_LOGIC;
            AdderOut : out STD_LOGIC;  
            carry : out STD_LOGIC);
end HalfAdder;

architecture Behavioral of HalfAdder is

begin
    AdderOut <= Ain xor Bin;
    carry <= Ain and Bin;
    
end Behavioral;