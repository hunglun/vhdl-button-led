----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2023 22:35:28
-- Design Name: 
-- Module Name: test_button_led - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_button_led is
--  Port ( );
end test_button_led;

architecture test of test_button_led is

component BUTTON_LED
  generic (
  NUM_BUTTONS : integer := 2
  );
  Port ( 
    button : in std_logic_vector( NUM_BUTTONS - 1 downto 0);
    led: out std_logic_vector ( NUM_BUTTONS - 1 downto 0)
  );
end component;

signal button0 : std_logic := '0';
signal button1 : std_logic := '0';

signal led0 : std_logic := '0';
signal led1 : std_logic := '0';

begin
    dev_to_test: BUTTON_LED
    port map( button(0) => button0, button(1) => button1, led(0) => led0, led(1) => led1);

    button_stimulus : process
    begin
     wait for 1 ms;
     button0 <= not button0;
     wait for 1 ms;
     button1 <= not button1;
    end process button_stimulus;
end test;
