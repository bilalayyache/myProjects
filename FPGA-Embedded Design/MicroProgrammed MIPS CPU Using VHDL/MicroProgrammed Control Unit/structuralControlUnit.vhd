library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity structuralControlUnit is
	port (
		switches: in std_logic_vector (3 downto 0);
		outputFromMem: out std_logic_vector (14 downto 0);
		reset,clk: in std_logic
	);
end structuralControlUnit;

architecture Structural of structuralControlUnit is


component instructionRegister is
    port (
		registerIn: in std_logic_vector (3 downto 0);
		en,CLK: in std_logic;
		registerOut: out std_logic_vector (3 downto 0)
	);
end component;

component adder is
	port (
		a1: in std_logic_vector (3 downto 0);
		o1: out std_logic_vector (3 downto 0);
		reset: in std_logic
	);
end component;

component memory is
	port (
			addr: in std_logic_vector(3 downto 0);
			dout: out std_logic_vector(14 downto 0);
			sel: out std_logic_vector(1 downto 0);
			en: out std_logic);
end component;

component logicMapping is
	port (
		in1: in std_logic_vector (3 downto 0);
		out1: out std_logic_vector (3 downto 0)
	);
end component;

component microcounter is 
	port (
		registerIn: in std_logic_vector (3 downto 0);
		reset,CLK: in std_logic;
		registerOut: out std_logic_vector (3 downto 0)
	);
end component;

component mux is 
	port (
		din1,din2: in std_logic_vector (3 downto 0);
		sel: in std_logic_vector (1 downto 0);
		dout: out std_logic_vector (3 downto 0)
	);
end component;

signal selOut: std_logic_vector (1 downto 0) := "01";
signal muxOut: std_logic_vector (3 downto 0) := "0000";
signal counterOut: std_logic_vector (3 downto 0) := "0000";
signal memOut: std_logic_vector (15 downto 0) := "0000000000000000";
signal temp: std_logic := '1';
signal lmOut: std_logic_vector (3 downto 0) := "0000";
signal adderOut: std_logic_vector (3 downto 0) := "0000";
signal segOut: std_logic_vector (15 downto 0) := "0000000000000000";
signal regOut: std_logic_vector (3 downto 0) :="0000";
begin

one: instructionRegister
port map(switches, temp, clk,regOut );

two: logicMapping
port map (regOut,lmOut);

three: mux
port map (lmOut,adderOut,selOut,muxOut);

four: microcounter
port map (muxOut,reset,clk,counterOut);

five: adder 
port map (counterOut, adderOut, reset);

six: memory
port map (counterOut,outputFromMem, selOut, temp);

end Structural;
