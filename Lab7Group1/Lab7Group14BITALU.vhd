----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:23 11/13/2023 
-- Design Name: 
-- Module Name:    Lab7Group14BITALU - Behavioral 
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

entity Lab7Group14BITALU is
    Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           S2 : in STD_LOGIC;
           Cin : in STD_LOGIC;
           G : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end Lab7Group14BITALU;

architecture Behavioral of Lab7Group14BITALU is
-- signal from Cout to Cin of each logic unit
--signal 

component Lab7Group1DECODER is
    Port ( X : in  STD_LOGIC_VECTOR ( 3 downto 0);
           F : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component Lab7Group1ONESTAGEALU is
    Port ( Cin : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           S2 : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           G : out  STD_LOGIC);
end component;

signal X : STD_LOGIC_VECTOR (2 downto 0);

begin
	
	Alu1 : Lab7Group1ONESTAGEALU port map( Cin, A(0), B(0), S , S2, X(0), G(0));
	Alu2 : Lab7Group1ONESTAGEALU port map( X(0), A(1), B(1), S , S2, X(1), G(1));
	Alu3 : Lab7Group1ONESTAGEALU port map( X(1), A(2), B(2), S , S2, X(2), G(2));
	Alu4 : Lab7Group1ONESTAGEALU port map( X(2), A(3), B(3), S , S2, Cout, G(3));
	
	Decoder : Lab7Group1DECODER port map (G => X,
													  F => '0');
	
end Behavioral;
