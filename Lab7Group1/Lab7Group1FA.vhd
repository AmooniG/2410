----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:03:24 11/13/2023 
-- Design Name: 
-- Module Name:    Lab7Group1FA - Behavioral 
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

entity Lab7Group1FA is
    Port ( AFA, BFA, CINFA : in  STD_LOGIC;
           SFA, COUTFA : out  STD_LOGIC);
end Lab7Group1FA;

architecture Behavioral of Lab7Group1FA is

signal hs: STD_LOGIC;
signal tc: STD_LOGIC;
signal hc: STD_LOGIC;

component Lab7Group1HA is
	Port (AHA: in STD_LOGIC;
			BHA: in STD_LOGIC;
			SHA: out STD_LOGIC;
			CHA: out STD_LOGIC);
end component;

begin
	HA1: Lab7Group1HA
		port map (AFA, BFA, hs, hc);
	HA2: Lab7Group1HA
		port map (hs, CINFA, SFA, tc);
	COUTFA <= tc or hc;

end Behavioral;
