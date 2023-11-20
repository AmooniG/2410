----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:54:50 11/13/2023 
-- Design Name: 
-- Module Name:    to1mux - Behavioral 
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

entity Lab7Group1MUX is
    Port ( M : in  STD_LOGIC;
           N : in  STD_LOGIC;
           S : in  STD_LOGIC;
           MOUT : out  STD_LOGIC);
end Lab7Group1MUX;

architecture Behavioral of Lab7Group1MUX is

begin
 process (M,N,S) is
            begin
                if (S ='0') then
                   MOUT <= M;
                else
                    MOUT <= N;
                end if;
        end process;
end Behavioral;

