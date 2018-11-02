library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
  
entity light52_isim_tb is 
end light52_isim_tb; 
  
architecture behavioral of light52_isim_tb is 
  
component light52_top is
  port ( 
    clk_in                         : in  std_logic;
    rst_in                       : in  std_logic;
    rxd_in                         : in  std_logic;
    txd_out                        : out std_logic;
 --   irq_vec_in                     : in  std_logic_vector(7 downto 0); 
    p0_out                         : out std_logic_vector(7 downto 0)
--    p1_out                         : out std_logic_vector(7 downto 0);
--    p2_in                          : in  std_logic_vector(7 downto 0);
--    p3_in                          : in  std_logic_vector(7 downto 0)
  );
end component;
  
  constant sysclk_period_c     : time      := 10 ns;  -- 100 MHz
  
  signal   sysclk              : std_logic := '0'; 
  signal   rst                 : std_logic := '0'; 
  
begin  
  
  -- Erzeuge sysclk-Signal 
  system_clock : process 
  begin 
    sysclk <= '1'; 
    wait for sysclk_period_c/2; 
    sysclk <= '0'; 
    wait for sysclk_period_c/2; 
  end process; 
  
  -- Erzeuge rst_n-Signal 
  system_reset : process 
  begin 
    rst   <= '0'; 
    wait for 70 ms; 
    rst   <= '1'; 
    wait for sysclk_period_c*10; 
    rst   <= '0'; 
    wait; 
  end process; 
  
socket_light52 : light52_top 
  port map ( 
    clk_in                       => sysclk,
    rst_in                       => rst,
    rxd_in                       => '1',
    txd_out                      => open,
    p0_out                       => open
  );
  
end behavioral; 
