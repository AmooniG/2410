----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:01:41 11/13/2023 
-- Design Name: 
-- Module Name:    Lab7Group1ONESTAGEALU - Behavioral 
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

entity Lab7Group1ONESTAGEALU is
    Port ( Cin : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           S2 : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           G : out  STD_LOGIC);
end Lab7Group1ONESTAGEALU;

architecture Behavioral of Lab7Group1ONESTAGEALU is
component Lab7Group1ArithmeticUnit is
    Port ( A, B, CIN : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR(1 downto 0);
           ArithOUT, COUT : out  STD_LOGIC);
end component;

component Lab7Group1LOGICUNIT is
    Port ( S : in  STD_LOGIC_VECTOR (1 downto 0);
	        LOUT : out  STD_LOGIC;
			  A : in  STD_LOGIC;
           B : in  STD_LOGIC);
end component;

component Lab7Group1MUX is
    Port ( M : in  STD_LOGIC;
           N : in  STD_LOGIC;
           S : in  STD_LOGIC;
           MOUT : out  STD_LOGIC);
end component;

signal ALUOUT ,Lout : STD_LOGIC;

begin

Arithmetic: Lab7Group1ArithmeticUnit port map (A, B, CIN,S, ALUOUT,Cout);
Logic: Lab7Group1LOGICUNIT port map(S,Lout,A,B);

-- use outputs from each component as inputs into the 2 - 1 MUX. This uses 0/1 as select
Mux: Lab7Group1MUX port map (ALUOUT ,LOUT,S2,G);

end Behavioral;

