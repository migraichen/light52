library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

use work.light52_pkg.all;
use work.obj_code_pkg.all;

entity light52_top is
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
end light52_top;

architecture behavioral of light52_top is

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

  signal clkfb : std_logic := '0';
  signal clk50 : std_logic := '0';
  signal clk50_ub : std_logic := '0';
  signal locked : std_logic := '0';
  signal rst : std_logic := '0';
  signal mcu_rst : std_logic := '0';
  signal sys_rst : std_logic := '0';
  signal p0 : std_logic_vector(7 downto 0) := ( others => '0' );
  signal p0_o : std_logic_vector(7 downto 0) := ( others => '1' );

begin 

  socket_pll_base : PLL_BASE
    generic map (
      BANDWIDTH                    => "OPTIMIZED", 
      CLKFBOUT_MULT                => 4,
      CLKFBOUT_PHASE               => 0.0,
      CLKIN_PERIOD                 => 10.0,
      CLKOUT0_DIVIDE               => 8,
      CLKOUT1_DIVIDE               => 1,
      CLKOUT2_DIVIDE               => 1,
      CLKOUT3_DIVIDE               => 1,
      CLKOUT4_DIVIDE               => 1,
      CLKOUT5_DIVIDE               => 1,
      CLKOUT0_DUTY_CYCLE           => 0.5,
      CLKOUT1_DUTY_CYCLE           => 0.5,
      CLKOUT2_DUTY_CYCLE           => 0.5,
      CLKOUT3_DUTY_CYCLE           => 0.5,
      CLKOUT4_DUTY_CYCLE           => 0.5,
      CLKOUT5_DUTY_CYCLE           => 0.5,
      CLKOUT0_PHASE                => 0.0,
      CLKOUT1_PHASE                => 0.0,
      CLKOUT2_PHASE                => 0.0,
      CLKOUT3_PHASE                => 0.0,
      CLKOUT4_PHASE                => 0.0,
      CLKOUT5_PHASE                => 0.0,
      CLK_FEEDBACK                 => "CLKFBOUT",
      COMPENSATION                 => "SYSTEM_SYNCHRONOUS",
      DIVCLK_DIVIDE                => 1,
      REF_JITTER                   => 0.1,
      RESET_ON_LOSS_OF_LOCK        => false
    )
    port map (
      CLKFBOUT                     => clkfb,
      CLKOUT0                      => clk50_ub,
      CLKOUT1                      => open,
      CLKOUT2                      => open,
      CLKOUT3                      => open,
      CLKOUT4                      => open,
      CLKOUT5                      => open,
      LOCKED                       => locked,
      CLKFBIN                      => clkfb,
      CLKIN                        => clk_in,
      RST                          => sys_rst
    );

   BUFG_inst : BUFG
   port map (
      O => clk50,
      I => clk50_ub
   );

  sys_rst <= rst_in;
  mcu_rst <= sys_rst or not locked;
  
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
  p0_o(2) <= sys_rst;
  p0_o(3) <= mcu_rst;
  p0_o(4) <= '0';
  p0_o(5) <= '1';
  p0_o(6) <= locked;
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
