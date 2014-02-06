----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:37:49 02/06/2014 
-- Design Name: 
-- Module Name:    MicroP_8086 - Behavioral 
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

entity MicroP_8086 is
    Port ( AD : inout  STD_LOGIC_VECTOR (15 downto 0);
           A : out  STD_LOGIC_VECTOR (19 downto 16);
           clk : in  STD_LOGIC;
           BHE : in  STD_LOGIC;
           ready : in  STD_LOGIC;
           NMI : in  STD_LOGIC;
           ALE : out  STD_LOGIC;
           WR : out  STD_LOGIC;
           hold : out  STD_LOGIC;
           hlda : out  STD_LOGIC);
end MicroP_8086;

architecture Behavioral of MicroP_8086 is

begin


end Behavioral;

