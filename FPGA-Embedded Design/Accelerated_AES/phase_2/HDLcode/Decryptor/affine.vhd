library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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

