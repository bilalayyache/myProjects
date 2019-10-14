library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port ( in1 : in  std_logic_vector(3 downto 0);
           in2 : in  std_logic_vector(3 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           cin : in  STD_LOGIC;
           Alu_out : out std_logic_vector(3 downto 0);
           cout : out  STD_LOGIC);
end ALU;

architecture Structural of ALU is

component fourBitAdder
    port (
		in1, in2 : in std_logic_vector(3 downto 0);
		mode : in std_logic;
		adder_out : out std_logic_vector(3 downto 0);
		carryOutAdder : out std_logic
	);
end component;

signal a: std_logic_vector(3 downto 0):= (others => '0');
signal b: std_logic_vector(3 downto 0):= (others => '0');
signal carryIn: STD_LOGIC := '0';



begin
   process(sel,in1,in2,cin)
    begin
        case sel is
			when "00" =>
			    a <= in1;
		        b <= in2;
		        carryIn <=cin;
			when "01" =>
			    if(cin = '0') then
			        a <= not(in1);
			        b <= in2;
			        carryIn <=cin;
			    else
			        a <= not(in1);
			        b <= not(in2);
			        carryIn <=cin;
			    end if;
			when "10" =>
			    if(cin = '0') then
			        a <= in1;
			        b <= "0001";
			        carryIn <='1';
			    else
			        a <= in1;
			        b <= "0001";
			        carryIn <='0';
			    end if;
			when "11" =>
			    if(cin = '0') then
			        a <= not(in1);
			        b <= "0000";
			        carryIn <='0';
			    else
			        a <= not(in1);
			        b <= "0001";
			        carryIn <='0';
			    end if;
			 when others =>
			     a <= "0000";
			     b <= "0000";
			     carryIn <= '0';
		end case;
   end process;
   
   bitAdder: fourBitAdder
   port map(a,b,carryIn,Alu_out,cout);

end Structural;