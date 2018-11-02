library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.light52_pkg.all;
use work.obj_code_pkg.all;

entity light52_modelsim_top is
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
end light52_modelsim_top;

architecture behavioral of light52_modelsim_top is

  component light52_mcu is
    generic (
        CODE_ROM_SIZE              : natural;
        XDATA_RAM_SIZE             : natural;
        OBJ_CODE                   : t_obj_code;
        USE_BRAM_FOR_XRAM          : boolean;
        IMPLEMENT_BCD_INSTRUCTIONS : boolean;
        SEQUENTIAL_MULTIPLIER      : boolean;
        UART_HARDWIRED             : boolean;
        UART_BAUD_RATE             : natural;
        CLOCK_RATE                 : natural;
        TIMER0_COUNT_RATE          : natural
    );
    port(
        clk                        : in  std_logic;
        reset                      : in  std_logic;
        rxd                        : in  std_logic;
        txd                        : out std_logic;
        external_irq               : in  std_logic_vector(7 downto 0);
        p0_out                     : out std_logic_vector(7 downto 0);
        p1_out                     : out std_logic_vector(7 downto 0);
        p2_in                      : in  std_logic_vector(7 downto 0);
        p3_in                      : in  std_logic_vector(7 downto 0)                       
    );
  end component;

  signal clk50                     : std_logic := '0';
  signal mcu_rst                   : std_logic := '0';
  signal p0_o                      : std_logic_vector(7 downto 0) := ( others => '0' );
  signal p0                        : std_logic_vector(7 downto 0) := ( others => '0' );

  constant sysclk_period_c         : time      := 20 ns;  -- 50MHz

begin 

  -- Erzeuge sysclk-Signal 
  system_pll : process 
  begin 
    clk50 <= '1'; 
    wait for sysclk_period_c/2; 
    clk50 <= '0'; 
    wait for sysclk_period_c/2; 
  end process; 

  mcu_rst <= rst_in;
  
  process(mcu_rst)
  begin 
    if rising_edge(mcu_rst) then 
        report "Reset beginnt!";
    end if;
    if falling_edge(mcu_rst) then
        report "Reset beendet!"; 
    end if;
  end process; 

  p0_o(0) <= p0(0);
  p0_o(1) <= rst_in;
  p0_o(3) <= mcu_rst;
  p0_o(4) <= '0';
  p0_o(5) <= '1';
  p0_o(7) <= not rst_in;  

  p0_out <= p0_o;

  socket_light52_mcu : light52_mcu
    generic map (
        CODE_ROM_SIZE              => 32*1024,
        XDATA_RAM_SIZE             => 8*1024,
        OBJ_CODE                   => object_code,
        USE_BRAM_FOR_XRAM          => false,
        IMPLEMENT_BCD_INSTRUCTIONS => false,
        SEQUENTIAL_MULTIPLIER      => false,
        UART_HARDWIRED             => false,
        UART_BAUD_RATE             => 19200,
        CLOCK_RATE                 => 50e6,
        TIMER0_COUNT_RATE          => 50e3
    )
    port map (
        clk                        => clk50,
        reset                      => mcu_rst,
        rxd                        => rxd_in,
        txd                        => txd_out,
        external_irq               => ( others => '0' ), --irq_vec_in, 
        p0_out                     => open,
        p1_out                     => p0,
        p2_in                      => ( others => '0' ),
        p3_in                      => ( others => '0' )
    );  

end behavioral;
