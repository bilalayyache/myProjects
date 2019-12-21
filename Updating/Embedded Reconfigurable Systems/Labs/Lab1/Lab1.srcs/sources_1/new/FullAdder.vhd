
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    Port ( CarryIn : in STD_LOGIC;
           P : in STD_LOGIC;
           Q : in STD_LOGIC;
           SUM : out STD_LOGIC;
           CarryOut : out STD_LOGIC);
end FullAdder;

architecture Structural of FullAdder is

Component HalfAdder
    Port (  Ain : in STD_LOGIC;
            Bin : in STD_LOGIC;
            AdderOut : out STD_LOGIC;  
            carry : out STD_LOGIC);
end component;

signal CarryToOr1: STD_LOGIC;
signal CarryToOr2: STD_LOGIC;
signal SumToQ: STD_LOGIC;

begin
    HA1: HalfAdder
    port map(CarryIn, SumToQ, SUM, CarryToOr1);
    
    HA2: HalfAdder
    port map(P,Q,SumToQ,CarryToOr2);
    
    CarryOut <= CarryToOr1 or CarryToOr2;

end Structural;
