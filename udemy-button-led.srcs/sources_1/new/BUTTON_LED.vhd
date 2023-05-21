----------------------------------------------------------------------------------
-- Company: SpeQtral
-- Engineer: O Hung Lun
-- 
-- Create Date: 21.05.2023 15:59:02
-- Design Name: 
-- Module Name: BUTTON_LED - Behavioral
-- Project Name: 
-- Target Devices: cmod-s7
-- Tool Versions: 
-- Description: a learning project to light up LED in response to button click
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BUTTON_LED is
  generic (
    NUM_BUTTONS : integer := 4
  );
  Port ( 
    button : in std_logic_vector( NUM_BUTTONS - 1 downto 0);
    enable : in std_logic_vector ( NUM_BUTTONS - 1 downto 0);
    led: out std_logic_vector ( NUM_BUTTONS - 1 downto 0)
  );

end BUTTON_LED;

architecture Behavioral of BUTTON_LED is

begin

    led <= button and enable;

end Behavioral;
