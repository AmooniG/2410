----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:53 11/13/2023 
-- Design Name: 
-- Module Name:    Lab7Group1BINLOGIC - Behavioral 
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

entity Lab7Group1BINLOGIC is
    Port ( BIN : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           BOUT : out  STD_LOGIC);
end Lab7Group1BINLOGIC;

architecture Behavioral of Lab7Group1BINLOGIC is
begin
	BOUT <= (BIN AND S(0)) OR (BIN AND S(1));
end Behavioral;
