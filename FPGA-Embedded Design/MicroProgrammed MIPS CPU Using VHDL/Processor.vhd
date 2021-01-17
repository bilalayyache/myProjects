----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:43:23 03/14/2019 
-- Design Name: 
-- Module Name:    Processor - Behavioral 
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

entity Processor is
    Port ( switches: in std_logic_vector(15 downto 0);
			  clk,reset : in  STD_LOGIC;
			  outData: out STD_LOGIC_VECTOR(15 downto 0));
end Processor;

architecture Structural of Processor is

component ALU16bit is
	generic (
		Dwidth : integer := 16
	);
	port (
		in1, in2 : in std_logic_vector(Dwidth - 1 downto 0);
		Alu_out : out std_logic_vector(Dwidth - 1 downto 0);
		sel : in std_logic_vector (2 downto 0);
		cin: in std_logic;
		zero, OVF : out std_logic
	);
end component;

component alureg is
    Port ( din : in  STD_LOGIC_VECTOR (15 downto 0);
           dout : out  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC);
end component;

component PCRegister is
    Port ( PCadded : in  STD_LOGIC_VECTOR (15 downto 0);
           PCold : out  STD_LOGIC_VECTOR (15 downto 0);
           switches : in  STD_LOGIC_VECTOR (15 downto 0);
			  clk, reset: in std_logic;
			  we: in std_logic);
end component;

component ALUControlUnit is
    Port ( ALUOpControl : in  STD_LOGIC_VECTOR (1 downto 0);
           RTypeSel : in  STD_LOGIC_VECTOR (2 downto 0);
           ALUSelect : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component MemoryInstrAndData is
    generic (
       Dwidth : integer := 16; -- Each location is 16 bits
       Awidth : integer := 16); -- 4 Address lines (i.e., 16 locations)
    port (
       we, re, clk: in std_logic;
       addr: in std_logic_vector(Awidth-1 downto 0);
       din: in std_logic_vector(Dwidth-1 downto 0);
       dout: out std_logic_vector(Dwidth-1 downto 0)
    );
end component;

component Mux2to1 is
    Port ( din1 : in  STD_LOGIC_VECTOR (15 downto 0);
           din2 : in  STD_LOGIC_VECTOR (15 downto 0);
           dout : out  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC);
end component;

component Mux4bits2to1 is
    Port ( din1 : in  STD_LOGIC_VECTOR (3 downto 0);
           din2 : in  STD_LOGIC_VECTOR (3 downto 0);
           dout : out  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC);
end component;

component Mux4to1 is
    Port ( din1 : in  STD_LOGIC_VECTOR (15 downto 0);
           din3 : in  STD_LOGIC_VECTOR (15 downto 0);
           din4 : in  STD_LOGIC_VECTOR (15 downto 0);
           dout : out  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end component;

component RegisterFile is
    Port ( readA1 : in  STD_LOGIC_VECTOR (3 downto 0);
           readA2 : in  STD_LOGIC_VECTOR (3 downto 0);
           writeA : in  STD_LOGIC_VECTOR (3 downto 0);
           writeData : in  STD_LOGIC_VECTOR (15 downto 0);
           we : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           dout1 : out  STD_LOGIC_VECTOR (15 downto 0);
           dout2 : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component RegisterWithEnable is
    Port ( din : in  STD_LOGIC_VECTOR (15 downto 0);
           dout : out  STD_LOGIC_VECTOR (15 downto 0);
           IRWrite : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end component;

component holdRegister is
    Port ( din : in  STD_LOGIC_VECTOR (15 downto 0);
           dout : out  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC);
end component;

component structuralControlUnit is
	port (
		switches: in std_logic_vector (3 downto 0);
		outputFromMem: out std_logic_vector (14 downto 0);
		reset,clk: in std_logic
	);
end component;

signal PCMuxOut : std_logic_vector (15 downto 0);
signal PCOut: std_logic_vector (15 downto 0);
signal ALURegOut: std_logic_vector (15 downto 0);
signal ALUOut: std_logic_vector (15 downto 0);
signal MemMuxOut: std_logic_vector(15 downto 0);
signal BOut: std_logic_vector(15 downto 0);
signal AOut: std_logic_vector(15 downto 0);
signal MemoryOut: std_logic_vector(15 downto 0);
signal Instruction: std_logic_vector(15 downto 0);
signal MemoryRegisterOut: std_logic_vector(15 downto 0);
signal Controls: std_logic_vector(14 downto 0);
signal WriteData: std_logic_vector(15 downto 0);
signal WriteAddress: std_logic_vector(3 downto 0);
signal RegisterOut1: std_logic_vector(15 downto 0);
signal RegisterOut2: std_logic_vector(15 downto 0);
signal OP1: std_logic_vector(15 downto 0);
signal OP2: std_logic_vector(15 downto 0);
signal SignExtended: std_logic_vector(15 downto 0);
signal ALUControlSignals: std_logic_vector(2 downto 0);
signal zeroBit: std_logic;
signal overflow: std_logic;
signal PCControl: std_logic;

begin

PCControl <= (Controls(14) and zeroBit) or Controls(13);

PCReg: PCRegister
port map(PCMuxOut, PCOut, switches, clk, reset, PCControl);

InstructionOrDataMux: Mux2to1
port map(PCOut, ALURegOut, MemMuxOut, Controls(12));

Memory: MemoryInstrAndData
port map(Controls(10) , Controls(11),clk, MemMuxOut, BOut, MemoryOut);

InstructionRegister: RegisterWithEnable
port map(MemoryOut, Instruction, Controls(8), clk);

MemoryRegister: holdRegister
port map(MemoryOut, MemoryRegisterOut, clk);

ControlUnit: StructuralControlUnit
port map(Instruction(15 downto 12), Controls, reset, clk);

ALUControl: ALUControlUnit
port map(Controls(2 downto 1), Instruction (14 downto 12), ALUControlSignals);

WriteAddressMux: Mux4bits2to1
port map(Instruction(7 downto 4), Instruction(3 downto 0), WriteAddress, Controls(7));

WriteDataMux: Mux2to1
port map(ALURegOut, MemoryRegisterOut, WriteData, Controls(9));
 
RegisterFiles: RegisterFile
port map(Instruction(11 downto 8), Instruction(7 downto 4), writeAddress, writeData, Controls(6), clk, RegisterOut1, RegisterOut2); 

A: holdRegister
port map(RegisterOut1, AOut, clk);

B: holdRegister
port map(RegisterOut2, BOut, clk);

OP1Mux: Mux2to1
port map(PCOut, Aout, OP1, Controls(5));

SignExtended <= "000000000000" & Instruction(3 downto 0);
OP2Mux: Mux4to1
port map(BOut, SignExtended, SignExtended, OP2, Controls(4 downto 3));

ALU: ALU16Bit
port map(OP1, OP2, ALUOut, ALUControlSignals, '0', zeroBit, overflow);

ALURegister: alureg
port map(ALUOut, ALURegOut, clk);

PCMux: Mux2to1
port map(ALUOut, ALURegOut, PCMuxOut, Controls(0));

outData <= ALUOut;

--Control Signals
--pcwritecond 14
--pcwrite 13
--iord 12
--memread 11
--memwrite 10
--memtoreg 9
--irwrite 8
--regdst 7
--regwrite 6
--alusrca 5
--alusrcb 4,3
--aluop 2,1
--pcsrc 0

end Structural;

