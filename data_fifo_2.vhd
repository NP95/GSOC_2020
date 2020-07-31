-- VHDL netlist generated by SCUBA Diamond (64-bit) 3.11.0.396.4
-- Module  Version: 5.8
--C:\lscc\diamond\3.11_x64\ispfpga\bin\nt64\scuba.exe -w -n data_fifo_2 -lang vhdl -synth lse -bus_exp 7 -bb -arch xo2c00 -type ebfifo -depth 256 -width 16 -rwidth 16 -no_enable -pe 10 -pf 250 

-- Tue Jul 21 09:20:47 2020

library IEEE;
use IEEE.std_logic_1164.all;
-- synopsys translate_off
library MACHXO2;
use MACHXO2.components.all;
-- synopsys translate_on

entity data_fifo_2 is
    port (
        Data: in  std_logic_vector(15 downto 0); 
        WrClock: in  std_logic; 
        RdClock: in  std_logic; 
        WrEn: in  std_logic; 
        RdEn: in  std_logic; 
        Reset: in  std_logic; 
        RPReset: in  std_logic; 
        Q: out  std_logic_vector(15 downto 0); 
        Empty: out  std_logic; 
        Full: out  std_logic; 
        AlmostEmpty: out  std_logic; 
        AlmostFull: out  std_logic);
end data_fifo_2;

architecture Structure of data_fifo_2 is

    -- internal signal declarations
    signal scuba_vhi: std_logic;
    signal Empty_int: std_logic;
    signal Full_int: std_logic;
    signal scuba_vlo: std_logic;

    -- local component declarations
    component VHI
        port (Z: out  std_logic);
    end component;
    component VLO
        port (Z: out  std_logic);
    end component;
    component FIFO8KB
        generic (FULLPOINTER1 : in String; FULLPOINTER : in String; 
                AFPOINTER1 : in String; AFPOINTER : in String; 
                AEPOINTER1 : in String; AEPOINTER : in String; 
                ASYNC_RESET_RELEASE : in String; RESETMODE : in String; 
                GSR : in String; CSDECODE_R : in String; 
                CSDECODE_W : in String; REGMODE : in String; 
                DATA_WIDTH_R : in Integer; DATA_WIDTH_W : in Integer);
        port (DI0: in  std_logic; DI1: in  std_logic; DI2: in  std_logic; 
            DI3: in  std_logic; DI4: in  std_logic; DI5: in  std_logic; 
            DI6: in  std_logic; DI7: in  std_logic; DI8: in  std_logic; 
            DI9: in  std_logic; DI10: in  std_logic; DI11: in  std_logic; 
            DI12: in  std_logic; DI13: in  std_logic; 
            DI14: in  std_logic; DI15: in  std_logic; 
            DI16: in  std_logic; DI17: in  std_logic; 
            CSW0: in  std_logic; CSW1: in  std_logic; 
            CSR0: in  std_logic; CSR1: in  std_logic; 
            FULLI: in  std_logic; EMPTYI: in  std_logic; 
            WE: in  std_logic; RE: in  std_logic; ORE: in  std_logic; 
            CLKW: in  std_logic; CLKR: in  std_logic; RST: in  std_logic; 
            RPRST: in  std_logic; DO0: out  std_logic; 
            DO1: out  std_logic; DO2: out  std_logic; 
            DO3: out  std_logic; DO4: out  std_logic; 
            DO5: out  std_logic; DO6: out  std_logic; 
            DO7: out  std_logic; DO8: out  std_logic; 
            DO9: out  std_logic; DO10: out  std_logic; 
            DO11: out  std_logic; DO12: out  std_logic; 
            DO13: out  std_logic; DO14: out  std_logic; 
            DO15: out  std_logic; DO16: out  std_logic; 
            DO17: out  std_logic; EF: out  std_logic; 
            AEF: out  std_logic; AFF: out  std_logic; FF: out  std_logic);
    end component;
    attribute syn_keep : boolean;
    attribute NGD_DRC_MASK : integer;
    attribute NGD_DRC_MASK of Structure : architecture is 1;

begin
    -- component instantiation statements
    scuba_vhi_inst: VHI
        port map (Z=>scuba_vhi);

    scuba_vlo_inst: VLO
        port map (Z=>scuba_vlo);

    data_fifo_2_0_0: FIFO8KB
        generic map (FULLPOINTER1=> "0b00111111110000", FULLPOINTER=> "0b01000000000000", 
        AFPOINTER1=> "0b00111110010000", AFPOINTER=> "0b00111110100000", 
        AEPOINTER1=> "0b00000010110000", AEPOINTER=> "0b00000010100000", 
        ASYNC_RESET_RELEASE=> "SYNC", GSR=> "DISABLED", RESETMODE=> "ASYNC", 
        REGMODE=> "NOREG", CSDECODE_R=> "0b11", CSDECODE_W=> "0b11", 
        DATA_WIDTH_R=>  18, DATA_WIDTH_W=>  18)
        port map (DI0=>Data(0), DI1=>Data(1), DI2=>Data(2), DI3=>Data(3), 
            DI4=>Data(4), DI5=>Data(5), DI6=>Data(6), DI7=>Data(7), 
            DI8=>Data(8), DI9=>Data(9), DI10=>Data(10), DI11=>Data(11), 
            DI12=>Data(12), DI13=>Data(13), DI14=>Data(14), 
            DI15=>Data(15), DI16=>scuba_vlo, DI17=>scuba_vlo, 
            CSW0=>scuba_vhi, CSW1=>scuba_vhi, CSR0=>scuba_vhi, 
            CSR1=>scuba_vhi, FULLI=>Full_int, EMPTYI=>Empty_int, 
            WE=>WrEn, RE=>RdEn, ORE=>RdEn, CLKW=>WrClock, CLKR=>RdClock, 
            RST=>Reset, RPRST=>RPReset, DO0=>Q(9), DO1=>Q(10), 
            DO2=>Q(11), DO3=>Q(12), DO4=>Q(13), DO5=>Q(14), DO6=>Q(15), 
            DO7=>open, DO8=>open, DO9=>Q(0), DO10=>Q(1), DO11=>Q(2), 
            DO12=>Q(3), DO13=>Q(4), DO14=>Q(5), DO15=>Q(6), DO16=>Q(7), 
            DO17=>Q(8), EF=>Empty_int, AEF=>AlmostEmpty, AFF=>AlmostFull, 
            FF=>Full_int);

    Empty <= Empty_int;
    Full <= Full_int;
end Structure;

-- synopsys translate_off
library MACHXO2;
configuration Structure_CON of data_fifo_2 is
    for Structure
        for all:VHI use entity MACHXO2.VHI(V); end for;
        for all:VLO use entity MACHXO2.VLO(V); end for;
        for all:FIFO8KB use entity MACHXO2.FIFO8KB(V); end for;
    end for;
end Structure_CON;

-- synopsys translate_on
