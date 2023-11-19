----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:01:38 11/13/2023 
-- Design Name: 
-- Module Name:    Lab7Group1HA - Behavioral 
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

entity Lab7Group1HA is 
	Port( AHA: in STD_LOGIC;
			BHA: in STD_LOGIC;
			SHA: out STD_LOGIC;
			CHA: out STD_LOGIC);
end Lab7Group1HA;

architecture Behavioral of Lab7Group1HA is
begin
	SHA <= (AHA xor BHA);
	CHA <= (AHA and BHA);
end behavioral;
			
