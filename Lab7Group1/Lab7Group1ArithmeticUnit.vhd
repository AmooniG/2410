----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:50:47 11/13/2023 
-- Design Name: 
-- Module Name:    Lab7Group1ArithmeticUnit - Behavioral 
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

entity Lab7Group1ArithmeticUnit is
    Port ( A, B, CIN: in  STD_LOGIC;
           S : in STD_LOGIC_VECTOR(1 downto 0);
           ArithOUT, COUT : out  STD_LOGIC);
end Lab7Group1ArithmeticUnit;

architecture Behavioral of Lab7Group1ArithmeticUnit is

    signal TempSum : STD_LOGIC;
    signal TempCout : STD_LOGIC;
    signal BBar : STD_LOGIC;

component Lab7Group1FA is
    Port ( AFA, BFA, CINFA : in  STD_LOGIC;
           SFA, COUTFA : out  STD_LOGIC);
end component;

component Lab7Group1BINLOGIC is
    Port ( BIN : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           BOUT : out  STD_LOGIC);
end component;

    signal Bout : STD_LOGIC;

begin
	BLogic: Lab7Group1BINLOGIC port map (B, S, Bout);
   FullAdder1: Lab7Group1FA port map (A, Bout,Cin ,ArithOUT, COUT);

end Behavioral;

