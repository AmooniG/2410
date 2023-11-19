----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:36:19 11/13/2023 
-- Design Name: 
-- Module Name:    Lab7Group1LOGICUNIT - Behavioral 
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

entity Lab7Group1LOGICUNIT is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           LOUT : out  STD_LOGIC);
end Lab7Group1LOGICUNIT;

architecture Behavioral of Lab7Group1LOGICUNIT is
begin
	up: process (A,B, S0, S1)
		begin
		if (S0 = '0' and S1 = '0') then
			LOUT <= A AND B;
		elsif (S0 = '1' AND S1 = '0') then
			LOUT <= A OR B;
		elsif (S0 = '0' AND S1 = '1') then
			LOUT <= A XOR B;
		else
			LOUT <= (NOT A);
		end if;
		end process;
end Behavioral;

