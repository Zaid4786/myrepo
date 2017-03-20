-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (lin64) Build 1538259 Fri Apr  8 15:45:23 MDT 2016
-- Date        : Thu Mar 16 16:57:46 2017
-- Host        : zaid-LIFEBOOK-A555 running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/zaid/MTP/myrepo/GPS_Ver/Acq_Track_VCU108/Acq_Track_VCU108.runs/blk_mem_I_synth_1/blk_mem_I_sim_netlist.vhdl
-- Design      : blk_mem_I
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_I_bindec is
  port (
    ena_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_ena : out STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_I_bindec : entity is "bindec";
end blk_mem_I_bindec;

architecture STRUCTURE of blk_mem_I_bindec is
begin
ENOUT: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => addra(2),
      I1 => addra(3),
      I2 => addra(1),
      I3 => addra(0),
      O => ena_array(0)
    );
\ENOUT_inferred__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(2),
      I1 => addra(3),
      I2 => addra(0),
      I3 => addra(1),
      O => ena_array(1)
    );
\ENOUT_inferred__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(2),
      I1 => addra(3),
      I2 => addra(1),
      I3 => addra(0),
      O => ena_array(2)
    );
\ENOUT_inferred__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(3),
      I1 => addra(1),
      I2 => addra(2),
      I3 => addra(0),
      O => ena_array(3)
    );
\ENOUT_inferred__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(3),
      I1 => addra(1),
      I2 => addra(2),
      I3 => addra(0),
      O => ena_array(4)
    );
\ENOUT_inferred__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(3),
      I1 => addra(0),
      I2 => addra(2),
      I3 => addra(1),
      O => ena_array(5)
    );
\ENOUT_inferred__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => addra(3),
      I1 => addra(2),
      I2 => addra(1),
      I3 => addra(0),
      O => ena_array(6)
    );
\ENOUT_inferred__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(2),
      I1 => addra(1),
      I2 => addra(3),
      I3 => addra(0),
      O => ena_array(7)
    );
\ENOUT_inferred__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(2),
      I1 => addra(1),
      I2 => addra(3),
      I3 => addra(0),
      O => ram_ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_I_bindec_0 is
  port (
    enb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_enb : out STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_I_bindec_0 : entity is "bindec";
end blk_mem_I_bindec_0;

architecture STRUCTURE of blk_mem_I_bindec_0 is
begin
ENOUT: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => addrb(2),
      I1 => addrb(3),
      I2 => addrb(1),
      I3 => addrb(0),
      O => enb_array(0)
    );
\ENOUT_inferred__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addrb(2),
      I1 => addrb(3),
      I2 => addrb(0),
      I3 => addrb(1),
      O => enb_array(1)
    );
\ENOUT_inferred__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addrb(2),
      I1 => addrb(3),
      I2 => addrb(1),
      I3 => addrb(0),
      O => enb_array(2)
    );
\ENOUT_inferred__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addrb(3),
      I1 => addrb(1),
      I2 => addrb(2),
      I3 => addrb(0),
      O => enb_array(3)
    );
\ENOUT_inferred__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addrb(3),
      I1 => addrb(1),
      I2 => addrb(2),
      I3 => addrb(0),
      O => enb_array(4)
    );
\ENOUT_inferred__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addrb(3),
      I1 => addrb(0),
      I2 => addrb(2),
      I3 => addrb(1),
      O => enb_array(5)
    );
\ENOUT_inferred__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => addrb(3),
      I1 => addrb(2),
      I2 => addrb(1),
      I3 => addrb(0),
      O => enb_array(6)
    );
\ENOUT_inferred__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addrb(2),
      I1 => addrb(1),
      I2 => addrb(3),
      I3 => addrb(0),
      O => enb_array(7)
    );
\ENOUT_inferred__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addrb(2),
      I1 => addrb(1),
      I2 => addrb(3),
      I3 => addrb(0),
      O => ram_enb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_I_blk_mem_gen_mux is
  port (
    douta : out STD_LOGIC_VECTOR ( 11 downto 0 );
    p_3_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_7_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_27_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_31_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_35_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_39_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_11_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_15_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_19_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_23_out : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_I_blk_mem_gen_mux : entity is "blk_mem_gen_mux";
end blk_mem_I_blk_mem_gen_mux;

architecture STRUCTURE of blk_mem_I_blk_mem_gen_mux is
  signal \douta[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\douta[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => DOADO(0),
      I1 => sel_pipe(2),
      I2 => sel_pipe(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      O => douta(0)
    );
\douta[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[10]_INST_0_i_1_n_0\,
      I1 => sel_pipe(3),
      I2 => \douta[10]_INST_0_i_2_n_0\,
      I3 => sel_pipe(2),
      I4 => \douta[10]_INST_0_i_3_n_0\,
      O => douta(10)
    );
\douta[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe(1),
      I1 => p_3_out(7),
      I2 => sel_pipe(0),
      I3 => p_7_out(7),
      I4 => sel_pipe(2),
      O => \douta[10]_INST_0_i_1_n_0\
    );
\douta[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(7),
      I1 => p_15_out(7),
      I2 => sel_pipe(1),
      I3 => p_19_out(7),
      I4 => sel_pipe(0),
      I5 => p_23_out(7),
      O => \douta[10]_INST_0_i_2_n_0\
    );
\douta[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(7),
      I1 => p_31_out(7),
      I2 => sel_pipe(1),
      I3 => p_35_out(7),
      I4 => sel_pipe(0),
      I5 => p_39_out(7),
      O => \douta[10]_INST_0_i_3_n_0\
    );
\douta[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[11]_INST_0_i_1_n_0\,
      I1 => sel_pipe(3),
      I2 => \douta[11]_INST_0_i_2_n_0\,
      I3 => sel_pipe(2),
      I4 => \douta[11]_INST_0_i_3_n_0\,
      O => douta(11)
    );
\douta[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe(1),
      I1 => p_3_out(8),
      I2 => sel_pipe(0),
      I3 => p_7_out(8),
      I4 => sel_pipe(2),
      O => \douta[11]_INST_0_i_1_n_0\
    );
\douta[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(8),
      I1 => p_15_out(8),
      I2 => sel_pipe(1),
      I3 => p_19_out(8),
      I4 => sel_pipe(0),
      I5 => p_23_out(8),
      O => \douta[11]_INST_0_i_2_n_0\
    );
\douta[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(8),
      I1 => p_31_out(8),
      I2 => sel_pipe(1),
      I3 => p_35_out(8),
      I4 => sel_pipe(0),
      I5 => p_39_out(8),
      O => \douta[11]_INST_0_i_3_n_0\
    );
\douta[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\(0),
      I2 => sel_pipe(2),
      I3 => sel_pipe(3),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      O => douta(1)
    );
\douta[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\(1),
      I2 => sel_pipe(2),
      I3 => sel_pipe(3),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      O => douta(2)
    );
\douta[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[3]_INST_0_i_1_n_0\,
      I1 => sel_pipe(3),
      I2 => \douta[3]_INST_0_i_2_n_0\,
      I3 => sel_pipe(2),
      I4 => \douta[3]_INST_0_i_3_n_0\,
      O => douta(3)
    );
\douta[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe(1),
      I1 => p_3_out(0),
      I2 => sel_pipe(0),
      I3 => p_7_out(0),
      I4 => sel_pipe(2),
      O => \douta[3]_INST_0_i_1_n_0\
    );
\douta[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(0),
      I1 => p_15_out(0),
      I2 => sel_pipe(1),
      I3 => p_19_out(0),
      I4 => sel_pipe(0),
      I5 => p_23_out(0),
      O => \douta[3]_INST_0_i_2_n_0\
    );
\douta[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(0),
      I1 => p_31_out(0),
      I2 => sel_pipe(1),
      I3 => p_35_out(0),
      I4 => sel_pipe(0),
      I5 => p_39_out(0),
      O => \douta[3]_INST_0_i_3_n_0\
    );
\douta[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[4]_INST_0_i_1_n_0\,
      I1 => sel_pipe(3),
      I2 => \douta[4]_INST_0_i_2_n_0\,
      I3 => sel_pipe(2),
      I4 => \douta[4]_INST_0_i_3_n_0\,
      O => douta(4)
    );
\douta[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe(1),
      I1 => p_3_out(1),
      I2 => sel_pipe(0),
      I3 => p_7_out(1),
      I4 => sel_pipe(2),
      O => \douta[4]_INST_0_i_1_n_0\
    );
\douta[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(1),
      I1 => p_15_out(1),
      I2 => sel_pipe(1),
      I3 => p_19_out(1),
      I4 => sel_pipe(0),
      I5 => p_23_out(1),
      O => \douta[4]_INST_0_i_2_n_0\
    );
\douta[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(1),
      I1 => p_31_out(1),
      I2 => sel_pipe(1),
      I3 => p_35_out(1),
      I4 => sel_pipe(0),
      I5 => p_39_out(1),
      O => \douta[4]_INST_0_i_3_n_0\
    );
\douta[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[5]_INST_0_i_1_n_0\,
      I1 => sel_pipe(3),
      I2 => \douta[5]_INST_0_i_2_n_0\,
      I3 => sel_pipe(2),
      I4 => \douta[5]_INST_0_i_3_n_0\,
      O => douta(5)
    );
\douta[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe(1),
      I1 => p_3_out(2),
      I2 => sel_pipe(0),
      I3 => p_7_out(2),
      I4 => sel_pipe(2),
      O => \douta[5]_INST_0_i_1_n_0\
    );
\douta[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(2),
      I1 => p_15_out(2),
      I2 => sel_pipe(1),
      I3 => p_19_out(2),
      I4 => sel_pipe(0),
      I5 => p_23_out(2),
      O => \douta[5]_INST_0_i_2_n_0\
    );
\douta[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(2),
      I1 => p_31_out(2),
      I2 => sel_pipe(1),
      I3 => p_35_out(2),
      I4 => sel_pipe(0),
      I5 => p_39_out(2),
      O => \douta[5]_INST_0_i_3_n_0\
    );
\douta[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[6]_INST_0_i_1_n_0\,
      I1 => sel_pipe(3),
      I2 => \douta[6]_INST_0_i_2_n_0\,
      I3 => sel_pipe(2),
      I4 => \douta[6]_INST_0_i_3_n_0\,
      O => douta(6)
    );
\douta[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe(1),
      I1 => p_3_out(3),
      I2 => sel_pipe(0),
      I3 => p_7_out(3),
      I4 => sel_pipe(2),
      O => \douta[6]_INST_0_i_1_n_0\
    );
\douta[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(3),
      I1 => p_15_out(3),
      I2 => sel_pipe(1),
      I3 => p_19_out(3),
      I4 => sel_pipe(0),
      I5 => p_23_out(3),
      O => \douta[6]_INST_0_i_2_n_0\
    );
\douta[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(3),
      I1 => p_31_out(3),
      I2 => sel_pipe(1),
      I3 => p_35_out(3),
      I4 => sel_pipe(0),
      I5 => p_39_out(3),
      O => \douta[6]_INST_0_i_3_n_0\
    );
\douta[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_n_0\,
      I1 => sel_pipe(3),
      I2 => \douta[7]_INST_0_i_2_n_0\,
      I3 => sel_pipe(2),
      I4 => \douta[7]_INST_0_i_3_n_0\,
      O => douta(7)
    );
\douta[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe(1),
      I1 => p_3_out(4),
      I2 => sel_pipe(0),
      I3 => p_7_out(4),
      I4 => sel_pipe(2),
      O => \douta[7]_INST_0_i_1_n_0\
    );
\douta[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(4),
      I1 => p_15_out(4),
      I2 => sel_pipe(1),
      I3 => p_19_out(4),
      I4 => sel_pipe(0),
      I5 => p_23_out(4),
      O => \douta[7]_INST_0_i_2_n_0\
    );
\douta[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(4),
      I1 => p_31_out(4),
      I2 => sel_pipe(1),
      I3 => p_35_out(4),
      I4 => sel_pipe(0),
      I5 => p_39_out(4),
      O => \douta[7]_INST_0_i_3_n_0\
    );
\douta[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[8]_INST_0_i_1_n_0\,
      I1 => sel_pipe(3),
      I2 => \douta[8]_INST_0_i_2_n_0\,
      I3 => sel_pipe(2),
      I4 => \douta[8]_INST_0_i_3_n_0\,
      O => douta(8)
    );
\douta[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe(1),
      I1 => p_3_out(5),
      I2 => sel_pipe(0),
      I3 => p_7_out(5),
      I4 => sel_pipe(2),
      O => \douta[8]_INST_0_i_1_n_0\
    );
\douta[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(5),
      I1 => p_15_out(5),
      I2 => sel_pipe(1),
      I3 => p_19_out(5),
      I4 => sel_pipe(0),
      I5 => p_23_out(5),
      O => \douta[8]_INST_0_i_2_n_0\
    );
\douta[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(5),
      I1 => p_31_out(5),
      I2 => sel_pipe(1),
      I3 => p_35_out(5),
      I4 => sel_pipe(0),
      I5 => p_39_out(5),
      O => \douta[8]_INST_0_i_3_n_0\
    );
\douta[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[9]_INST_0_i_1_n_0\,
      I1 => sel_pipe(3),
      I2 => \douta[9]_INST_0_i_2_n_0\,
      I3 => sel_pipe(2),
      I4 => \douta[9]_INST_0_i_3_n_0\,
      O => douta(9)
    );
\douta[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe(1),
      I1 => p_3_out(6),
      I2 => sel_pipe(0),
      I3 => p_7_out(6),
      I4 => sel_pipe(2),
      O => \douta[9]_INST_0_i_1_n_0\
    );
\douta[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(6),
      I1 => p_15_out(6),
      I2 => sel_pipe(1),
      I3 => p_19_out(6),
      I4 => sel_pipe(0),
      I5 => p_23_out(6),
      O => \douta[9]_INST_0_i_2_n_0\
    );
\douta[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(6),
      I1 => p_31_out(6),
      I2 => sel_pipe(1),
      I3 => p_35_out(6),
      I4 => sel_pipe(0),
      I5 => p_39_out(6),
      O => \douta[9]_INST_0_i_3_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(0),
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(1),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(2),
      Q => sel_pipe(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(3),
      Q => sel_pipe(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_mux__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    p_2_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_6_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clkb : in STD_LOGIC;
    DOBDO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_26_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_30_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_34_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_38_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_10_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_14_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_18_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_22_out : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_mux__parameterized0\ : entity is "blk_mem_gen_mux";
end \blk_mem_I_blk_mem_gen_mux__parameterized0\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_mux__parameterized0\ is
  signal \doutb[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\ : STD_LOGIC;
begin
\doutb[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => DOBDO(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      O => doutb(0)
    );
\doutb[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \doutb[10]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      I2 => \doutb[10]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      I4 => \doutb[10]_INST_0_i_3_n_0\,
      O => doutb(10)
    );
\doutb[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I1 => p_2_out(7),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I3 => p_6_out(7),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      O => \doutb[10]_INST_0_i_1_n_0\
    );
\doutb[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_10_out(7),
      I1 => p_14_out(7),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_18_out(7),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_22_out(7),
      O => \doutb[10]_INST_0_i_2_n_0\
    );
\doutb[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_26_out(7),
      I1 => p_30_out(7),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_34_out(7),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_38_out(7),
      O => \doutb[10]_INST_0_i_3_n_0\
    );
\doutb[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \doutb[11]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      I2 => \doutb[11]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      I4 => \doutb[11]_INST_0_i_3_n_0\,
      O => doutb(11)
    );
\doutb[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I1 => p_2_out(8),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I3 => p_6_out(8),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      O => \doutb[11]_INST_0_i_1_n_0\
    );
\doutb[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_10_out(8),
      I1 => p_14_out(8),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_18_out(8),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_22_out(8),
      O => \doutb[11]_INST_0_i_2_n_0\
    );
\doutb[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_26_out(8),
      I1 => p_30_out(8),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_34_out(8),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_38_out(8),
      O => \doutb[11]_INST_0_i_3_n_0\
    );
\doutb[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\(0),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      O => doutb(1)
    );
\doutb[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\(1),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      O => doutb(2)
    );
\doutb[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \doutb[3]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      I2 => \doutb[3]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      I4 => \doutb[3]_INST_0_i_3_n_0\,
      O => doutb(3)
    );
\doutb[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I1 => p_2_out(0),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I3 => p_6_out(0),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      O => \doutb[3]_INST_0_i_1_n_0\
    );
\doutb[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_10_out(0),
      I1 => p_14_out(0),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_18_out(0),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_22_out(0),
      O => \doutb[3]_INST_0_i_2_n_0\
    );
\doutb[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_26_out(0),
      I1 => p_30_out(0),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_34_out(0),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_38_out(0),
      O => \doutb[3]_INST_0_i_3_n_0\
    );
\doutb[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \doutb[4]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      I2 => \doutb[4]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      I4 => \doutb[4]_INST_0_i_3_n_0\,
      O => doutb(4)
    );
\doutb[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I1 => p_2_out(1),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I3 => p_6_out(1),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      O => \doutb[4]_INST_0_i_1_n_0\
    );
\doutb[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_10_out(1),
      I1 => p_14_out(1),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_18_out(1),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_22_out(1),
      O => \doutb[4]_INST_0_i_2_n_0\
    );
\doutb[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_26_out(1),
      I1 => p_30_out(1),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_34_out(1),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_38_out(1),
      O => \doutb[4]_INST_0_i_3_n_0\
    );
\doutb[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \doutb[5]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      I2 => \doutb[5]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      I4 => \doutb[5]_INST_0_i_3_n_0\,
      O => doutb(5)
    );
\doutb[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I1 => p_2_out(2),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I3 => p_6_out(2),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      O => \doutb[5]_INST_0_i_1_n_0\
    );
\doutb[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_10_out(2),
      I1 => p_14_out(2),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_18_out(2),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_22_out(2),
      O => \doutb[5]_INST_0_i_2_n_0\
    );
\doutb[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_26_out(2),
      I1 => p_30_out(2),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_34_out(2),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_38_out(2),
      O => \doutb[5]_INST_0_i_3_n_0\
    );
\doutb[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \doutb[6]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      I2 => \doutb[6]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      I4 => \doutb[6]_INST_0_i_3_n_0\,
      O => doutb(6)
    );
\doutb[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I1 => p_2_out(3),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I3 => p_6_out(3),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      O => \doutb[6]_INST_0_i_1_n_0\
    );
\doutb[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_10_out(3),
      I1 => p_14_out(3),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_18_out(3),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_22_out(3),
      O => \doutb[6]_INST_0_i_2_n_0\
    );
\doutb[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_26_out(3),
      I1 => p_30_out(3),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_34_out(3),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_38_out(3),
      O => \doutb[6]_INST_0_i_3_n_0\
    );
\doutb[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \doutb[7]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      I2 => \doutb[7]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      I4 => \doutb[7]_INST_0_i_3_n_0\,
      O => doutb(7)
    );
\doutb[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I1 => p_2_out(4),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I3 => p_6_out(4),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      O => \doutb[7]_INST_0_i_1_n_0\
    );
\doutb[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_10_out(4),
      I1 => p_14_out(4),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_18_out(4),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_22_out(4),
      O => \doutb[7]_INST_0_i_2_n_0\
    );
\doutb[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_26_out(4),
      I1 => p_30_out(4),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_34_out(4),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_38_out(4),
      O => \doutb[7]_INST_0_i_3_n_0\
    );
\doutb[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \doutb[8]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      I2 => \doutb[8]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      I4 => \doutb[8]_INST_0_i_3_n_0\,
      O => doutb(8)
    );
\doutb[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I1 => p_2_out(5),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I3 => p_6_out(5),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      O => \doutb[8]_INST_0_i_1_n_0\
    );
\doutb[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_10_out(5),
      I1 => p_14_out(5),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_18_out(5),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_22_out(5),
      O => \doutb[8]_INST_0_i_2_n_0\
    );
\doutb[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_26_out(5),
      I1 => p_30_out(5),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_34_out(5),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_38_out(5),
      O => \doutb[8]_INST_0_i_3_n_0\
    );
\doutb[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \doutb[9]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      I2 => \doutb[9]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      I4 => \doutb[9]_INST_0_i_3_n_0\,
      O => doutb(9)
    );
\doutb[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I1 => p_2_out(6),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I3 => p_6_out(6),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      O => \doutb[9]_INST_0_i_1_n_0\
    );
\doutb[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_10_out(6),
      I1 => p_14_out(6),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_18_out(6),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_22_out(6),
      O => \doutb[9]_INST_0_i_2_n_0\
    );
\doutb[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_26_out(6),
      I1 => p_30_out(6),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => p_34_out(6),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I5 => p_38_out(6),
      O => \doutb[9]_INST_0_i_3_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => addrb(0),
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => addrb(1),
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => addrb(2),
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => addrb(3),
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_I_blk_mem_gen_prim_wrapper_init is
  port (
    \douta[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    \addrb[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    dinb : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_I_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end blk_mem_I_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of blk_mem_I_blk_mem_gen_prim_wrapper_init is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => addrb(14 downto 0),
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(0),
      DIBDI(31 downto 1) => B"0000000000000000000000000000000",
      DIBDI(0) => dinb(0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[0]\(0),
      DOBDO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => \doutb[0]\(0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => \addrb[15]\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 0 to 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    dinb : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_1__0_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_2__0_n_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(13 downto 0) => addra(13 downto 0),
      ADDRBWRADDR(13 downto 0) => addrb(13 downto 0),
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DIADI(15 downto 1) => B"000000000000000",
      DIADI(0) => dina(0),
      DIBDI(15 downto 1) => B"000000000000000",
      DIBDI(0) => dinb(0),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 1),
      DOADO(0) => DOADO(0),
      DOBDO(15 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 1),
      DOBDO(0) => DOBDO(0),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_1__0_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_2__0_n_0\,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(3 downto 2) => B"00",
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => addra(14),
      I1 => addra(15),
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_1__0_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => addrb(14),
      I1 => addrb(15),
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    \douta[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    \addrb[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    dinb : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"B758E3FE0472EACFE48B7F1F1DAB8F40A6C49DED72AA04386FBB42EE1323924A",
      INIT_01 => X"1E0CE4C9B55B1D0C228CEFCB5D1ED77F46C49CBAA9DC904D2D35B7C5992F1752",
      INIT_02 => X"191670B2C10D1120C33E81E22D6EB4E1AED6D5E25A4AB44125E325F5B86B5ED6",
      INIT_03 => X"231B4D8F7E7847E336BE06079D7E458BC4E3FED1E11F608B59B5C552C6297E98",
      INIT_04 => X"1696C0F3D3B20D030AE6255F376B2B87CA499B8F2BCACF8FC85CAD628D4F725D",
      INIT_05 => X"AD70448062DD8D9911F31D82D1937C711AA421634F7C5FB36282E1CD9BA305B2",
      INIT_06 => X"7F32779AA682912E3341644D99F07CC98165DA71086A5935943ACC33D0E26F01",
      INIT_07 => X"858AA753F311EEA4F2A4F5A989BFA2EFEDDA1E8B1C71B34A28B6F7D373B67603",
      INIT_08 => X"2630FF8044FB5AE52A7455FCD66F7CBA6F1A0F5E302E22858783FC1F9ED2BB88",
      INIT_09 => X"55B3C6489058AC45056A8CFE2E4A7BFD75A2ABD723FF6CA73B9F89F4063C767F",
      INIT_0A => X"94E9A08B6CA009DDBD9B75BF5FDF434A629B7DE5EDF1C28F55B4CF5DA11FD1D9",
      INIT_0B => X"28C09218317900D216EF495F26005D5F5B20228386751743AF3D5862089D5D70",
      INIT_0C => X"AA40E60A49EAA3504DF019990D3CFDEFA8535EFFA9ABFEAC6EBD467F5FB373F5",
      INIT_0D => X"39728FDEAE590FB06199F4A14A55F57E457C38C69F5BE9DA5BF1FB0E059E1576",
      INIT_0E => X"B7E53DFC010E75DCDE6F069B4E27806C6A43A90B09CBEA4CD48BC9014A66FD5F",
      INIT_0F => X"38ED0A7CEB56DE37E72ADF43C1DB36EAC8179487C18FDF02497A83FD145C9F96",
      INIT_10 => X"6E4C5A71BDA8644D56CAE30E8DFB045DBE42D45864AF8274325DC40582ACAB85",
      INIT_11 => X"8E088211F4A791BE88B76FD9E651592CCD152DF28179B1E922EB93D46660E901",
      INIT_12 => X"4DD349C7769268B4014A1D8D2A645797FE74273F2D69122F107C93516CB4A415",
      INIT_13 => X"D0FE28C4DB2AC6153CA0F3C6A81789CD92B615598AE81F276FFB5F35CECED624",
      INIT_14 => X"8250F79D04A6104D258351EFE8994A8EACB562F77FA505C5931F51CA9D180F89",
      INIT_15 => X"474594B438EA1C72DA95B6895AEBD16EE653248060B79567603D3D70C94216CD",
      INIT_16 => X"808205D905C3DD39356021B1D41722F48F548512B559D669DD52E2E1C458E4A5",
      INIT_17 => X"F673A3DC08AC465828632816D7193154F7D589F9537636D935BD74BFC7C1EA12",
      INIT_18 => X"FEF5B12C9EBACF3E09BB4E03270E9FAAED659D1B9EA1F10725C1F52E1A8500D2",
      INIT_19 => X"982BC475E1EDA606E51A84EAA6AC66908728062E210E5975C89363A79C5FD8F4",
      INIT_1A => X"4FF0D78DD4D7831DDA7F772952711B382E7D501A6DDA86060CCE17B039820834",
      INIT_1B => X"4B68A47A2FC09A36A92875F79183C2FC370804DEE6DAB8CD2A56BE0BD92932D8",
      INIT_1C => X"1E314917AE89C7F5CE81077A050233D93822E4B02CA19378F48FF5E6876F0699",
      INIT_1D => X"F90B46A954735D956E95941EFA63A849BDCD82936F52F526DD642BBCD5D1A07C",
      INIT_1E => X"1D88F12E3501FE51CFC42845263CC3F5A842C16058626DB04D94708A9614A836",
      INIT_1F => X"44DD87C22125698029C5DECC8E69108AE852A6684F78905B83C819587C1348C5",
      INIT_20 => X"E065088FB49D841BE24E48AB7B8CE5E077F4D0B840B83F8AB144255318B379FB",
      INIT_21 => X"E4ADFA7F90B8EB8E6BBB603B09CEB1E9FB86CCC2D9BF37AEAE9A8E9DD60AD22B",
      INIT_22 => X"58B4509510A53DA2C45692EF524236870A31780997B2C0C477620F8761667290",
      INIT_23 => X"70E076606EAF3444579A27EED3A9540F9FC02991961B2C39279123B5C3E9FDAE",
      INIT_24 => X"9AECBD5F0703690DEFC01172033B6BB1E528F138C3DECBBDA0C9C1CB840F33B9",
      INIT_25 => X"B73C747609AF5E5BD6BD6382D1D3D516DDC5DB6013A4BDE6D65F50DE160216DF",
      INIT_26 => X"751FE61AD46052D159BAD1B4B48784FA91A1CD0835977FAAD9FC5BBA9B7B0055",
      INIT_27 => X"663D7819663D03B6312ED279D7270C133E66738441DFAA7555E7E70F8F7884FF",
      INIT_28 => X"EB2F719E746BD4A777239295C5450C5EE55D1ED57786339A147FBD8646A8CF09",
      INIT_29 => X"06E4B2D29E02BFBB8D7C5022E7D688F15C87AD9CBA305D88E9448924425287FB",
      INIT_2A => X"9B2608CA9AF2FE62ED8190A12C9B92F1C0381B0CCD56B9E56D0379ADE17825EB",
      INIT_2B => X"A44B2CFEA708C4740E85C80281CCDF5729DDA0B251464279AACDA95C1D265B7B",
      INIT_2C => X"A147CEE6BF99FE2D3A408F37AEBB34E64E5CC0E003BB4411B7E868D515A9A341",
      INIT_2D => X"222452DEA0E4FEEDDA3533D7E006022147A37099B8848A4BDB32F0D8A82F00F3",
      INIT_2E => X"09B361CEC973B5D30541B227FFBA7A49BF19F24C6335C6D3DA8F078E318BCB2F",
      INIT_2F => X"DDC86D25BFA6AFAAFFE30B194A48540FC6DE6D2C02BCA235F0FBB94FA4F57F97",
      INIT_30 => X"8EDD88F26EFFD12961D2E455A39C79C50C7E6E1D8E51EB27554FBC669EA5578C",
      INIT_31 => X"B0C441F0C84E191159C08D6F88E106ED830AB2B7CD58C89ECD68AB0D77B9D31F",
      INIT_32 => X"AE96691C200E6FA1EE3AEBBE204DF08586445CAF50CDE7E4888E1BDC66797FD6",
      INIT_33 => X"2F7DBD8CF74B3A9D35BBA1C210FDBC32CF3D6CA937B2500CA4A727EB8B76EA58",
      INIT_34 => X"CB3C8635637A8FF0B13031A36DDB173BAC541E02138F0CEC12385C97CAA738D4",
      INIT_35 => X"8BF68B478A04B4CFE4ACA14AC9DFAA82C120FB5526AA0CE5C0F511518167FB43",
      INIT_36 => X"5A9E673A5BEC93E32C6404D03802395F6CAB3973A76218A517BCB866125AB5C7",
      INIT_37 => X"6835464F5B9A0E5276A3B33F8D4074C5131D367DB1C90D929D778CC63DE84D5B",
      INIT_38 => X"B663F2BCB0D445D4017B20603D24EA483D1E3D7BF932867E764C615C996A75D9",
      INIT_39 => X"CD8AD6754D567E3E81DB67211BB1934378CE64141CC9C19262BD8C9E0EB32728",
      INIT_3A => X"6ADACE525F49F162DA58F4B58426663BC6DB40162C83170013E9592A333186A3",
      INIT_3B => X"CF67A84AF7829FD034D3C29239A723E19F8F5FAC3B123DDBF5E065ADB70BE921",
      INIT_3C => X"926A194D21294856DB3E63056881C0EE008656B5A3DC7FD8751BAB2FA5836729",
      INIT_3D => X"5475C5F1BABA2171F8AC05D4452B15476A2A06B51C85B24345BE45FB92F5BC0F",
      INIT_3E => X"2334546D184BBA3CB7728C651A28D385DFF298D720D0D6F352263DF22DA757E0",
      INIT_3F => X"C77C4C6AEBA88769A5B1454607BC5887A71F4DC04856FABAEBFAB3291CDBE884",
      INIT_40 => X"3A8ADA3E7E579C981537E9097166DBA98F1C6D31F7B4ABEEFAF908679B39CABB",
      INIT_41 => X"DB83D33E6A1B91897B5A7E920C886A56E285136003F0D93E0D617351F763AC43",
      INIT_42 => X"FD1A5BA04D5883DA34C38F15EE6CA8AE46E1F4F279AB592AF3C20041CFCEFF60",
      INIT_43 => X"2D171C3CDA203DB693CCFF3C57B45DE71E9DEECB977B4D8C458A2FEEF3A40E65",
      INIT_44 => X"320A9BCBD05BB3B1396E131EA5C35B9511EFB392D16BA3B4A324AE557366EF12",
      INIT_45 => X"00BC62BEE92F09F9DF076C5729780206E35DEFE1B52FC370A5F7AC4252597FEF",
      INIT_46 => X"132350E19EE987FCDB91E2678C5DEA17CDB89BA71573F97CE55C8C204B66563E",
      INIT_47 => X"4BDE21AE9990F05E2E2EDCF7445FBEC08073DF71DFEECEB1B899140AD4E4B29F",
      INIT_48 => X"D37791E2D52C50C08624216F39BB93F4E6C0524605AAB59BB81402126BA384F5",
      INIT_49 => X"D30410930DF4930A0EAA07588DB9CF2C8999FB37D74EB025547C4B892B151455",
      INIT_4A => X"86BE0E92E483C46044743AC669D2257CBBB5878FA77B2A081D95D34AA6B65B7F",
      INIT_4B => X"8465F866ED22E4563B76A3376092C6EEEFC917FF6F22061933C8810EE5AE410D",
      INIT_4C => X"73276B443FEE0559A2D2C7D588D71DCDC8DA847AB71ECC42352BD9050BDA26DA",
      INIT_4D => X"AD990049AD6F7DC0254F708F617DB47A9FB66DCA1FC04367BC4A06ADA5F7053C",
      INIT_4E => X"4324328660BAF1D50E69FE2311CFFF8A4B1B7A1D5FE818174D0196B65DC18770",
      INIT_4F => X"F499267065F77A45BE97187E7173F1505B47E340BFD2567A633867C3925B2EB9",
      INIT_50 => X"08046A8F04D9321E62898A905E2741CF5C715A447196EBD81B095B4BE43AE024",
      INIT_51 => X"A2325D89B6F1066E5C68F1316CC146AC0D620C06EF499954AB72B1472536A21E",
      INIT_52 => X"CC27535F47E695BD23C0332C4C7E6013F80E0420DD45EACB3CFBA82657E965F9",
      INIT_53 => X"FA4A7493625516572A8A7FCBDD0D15E4435F2E426FC10646618E70485C4907B9",
      INIT_54 => X"4E3BE369E3E0EB05129C35A3D84D8A803FA7CB366AA6C99AA5F4505BAA48D3E4",
      INIT_55 => X"2B445D81DC5D997CA39FE5C1166CA38210AC2E6C72796023B8FC05516BC7027C",
      INIT_56 => X"F3E218025F31E583B89B9E8DE2E55EE6A0B5CFF4B6B2D0479CAAD41CF96838AA",
      INIT_57 => X"91CB7D91CF62E96AD02C0976573DED422F721B16B8AE1898A5EE0E68E5BDB099",
      INIT_58 => X"B273523CD51DBB9CA0DC3D013F093D9DFAD3C4EFACA30803285A85AD9DCFD264",
      INIT_59 => X"09D2CF76FD271FD41A5B3A4E0C7EA44FE6C79D4282B6771F9B22C8EF9AA0B9E3",
      INIT_5A => X"57941228C928A46CD3C9E07098799DA0DF5B99A2B8930EE0E0B0106851DC25E9",
      INIT_5B => X"908D5126B366A5279DB809F96EE0F53B4272AABCFC215DFDA67E49D844799767",
      INIT_5C => X"895E16C32588D8F315AD57866F1DA889D3AEC4C69843D29F791C23CC9B86F9E5",
      INIT_5D => X"24F309193BFF7A256A841CF381F4705FE276603FE35EBB19EE7C8573EE7AF1C3",
      INIT_5E => X"FD91FE6708EE3A4E70E76F6761205147C7AFC66F65CF57483A0B435E60300EA9",
      INIT_5F => X"869C3B4A1A05D2A8FA58EDB9BCD75FF540D581EE024DB07C08156A25FF17062A",
      INIT_60 => X"821BECB44963623474ACB238DC09F2FD66EA6CFEA59DB6A7D011219AE9DFC32E",
      INIT_61 => X"48E4E1DE8CDFF9645CDDF3704FBB35706B8E4072B731629DC699DD680A285003",
      INIT_62 => X"69E0BB49BD86AEE5A93443FECBD88F1BCD4A4286A8883429E35944F6CA8A3CB8",
      INIT_63 => X"E913058597DF538A687EF197BB9136FBBF9DBABEA0BD383CDE4A425032B2A9F8",
      INIT_64 => X"D7C3F76AF2DE0C28EA87531880FEAAB5699EC7A5C9D2C1BBA1C341BB1EB56F85",
      INIT_65 => X"A6182B56C29F7B725C702E2E4423C3FA88E637ED784626300426625B3B5BD162",
      INIT_66 => X"0636B5FB4A9DEE15B5219B7191BD2BB3301282E363D9CA4F9515DBA89341585C",
      INIT_67 => X"A97DD816FFA631743C7A33A22D051E44D0CC3E15B75B8F1A482FE6627FFE0E44",
      INIT_68 => X"2EBD5062C6E8EF9DCBD33E35B89D2D7EAC6227F70DACC4E901D20990DC038365",
      INIT_69 => X"2DBBE7D54908200A78AFE32A22030119C89D0EB82F4530A8B9E1C0EA17766479",
      INIT_6A => X"0CA075539C05A6DD4492BC8D61DCB7B5C1AA3E23FDFBD6675389511CC5B65191",
      INIT_6B => X"D469B789265FAFE3B024A37A39CC5A3EDBB168302A0A02E911DE6B1DDBE50682",
      INIT_6C => X"5D6DCE082B93938C8FD85A00A5C5263097807F2E6A5C311A1AEED70A295C9189",
      INIT_6D => X"BA307348D0008EA2E7DFA96BB7A0D4C9485987398C3CDBAB4195BC768949896B",
      INIT_6E => X"9FD3514195DA12F179248101F42B0B91FAAE743B1BE2F7E75161DDFF76C43A42",
      INIT_6F => X"21BEF6EABF61AF2EB6E65444E14400BAF7A399EA7B3F0A35B7F7AAD6B712DC29",
      INIT_70 => X"886466308D2B31F49B337624F523091BB69D9074FE88FCCFF2EFB79DFC85ADB7",
      INIT_71 => X"93FD1BC7E3B352FEB206F9827CD81AE1C13DCF87DCB95242FA744231B534985D",
      INIT_72 => X"CF14399BEB3A1046A9959D1F454B2F5987E79452924F12DD0C81CA13FAD3C705",
      INIT_73 => X"455EC0A5CCCD6DFCE5CFA3CB350EF1C5CE9A96B25BD2FEE33F762CCF1B7F352A",
      INIT_74 => X"954808D94F1035D76882031CADC53B8E5B7A365A1B1D0BDB246F820C85FF8DBB",
      INIT_75 => X"017F90E36C0C58D7BEF6237C46E1DDE7127022EA0B17801369ACC11985DDE878",
      INIT_76 => X"7E142EF6D99999BB34EFE7E360785C7D1CD94EE30E3B611BC3C4ED0BA8A7A5FA",
      INIT_77 => X"4017E4BEE93F9DF1F826A96095C7E207C2F19A70EFEF64446A1C853BAAF82631",
      INIT_78 => X"2C5AE5A047744DF196BB9D6109F595D677D5E908F4976BA461433B5755565A32",
      INIT_79 => X"C2884DF0305FDCFB236A721BA071535308D81578F98FB1ADA675DF1F2F6913A5",
      INIT_7A => X"B183FCFDD45DD12F60442B5F503297FD5D2D8342935A6BD4AD26CB9A9B73C4A9",
      INIT_7B => X"C132E4550F8B20400CE30319900FE5F4C4C5180384E76CCF669F2B3DEC84BB8E",
      INIT_7C => X"6AB5EB0833E9038CC39B14537EDC47677E68CEB6E0CB82EC48F2613D580187EE",
      INIT_7D => X"E44E07992A98325510FA9C351B4E2DEBE6F38854B33F620151CCAD54E08D188F",
      INIT_7E => X"01813C6C216C41D690C461B1A7AB06B057E0E8E778FDC937CD1F899419FF005E",
      INIT_7F => X"49E9766AB994C7DE667034D1D114E0413C4C9E8C0352E192925FBCCE8DBA0880",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => addrb(14 downto 0),
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(0),
      DIBDI(31 downto 1) => B"0000000000000000000000000000000",
      DIBDI(0) => dinb(0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[1]\(0),
      DOBDO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => \doutb[1]\(0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => \addrb[15]\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  port (
    p_15_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_14_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized10\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized10\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0D089810A3D00497BDFD7610C073F820F13706725AFA170C18DBF3B4FB353F12",
      INITP_01 => X"203003EE703612815FDC0EC1C83901064538FFC0EEF0BA732D9FBE30406990B0",
      INITP_02 => X"63CCB9C1B2F70722C0F2C645D3EBAC1CD688CBEC641070007F065793C3077A9C",
      INITP_03 => X"F2032E78006F0FED99908409A7609FBF3CD3605068210CFE1CC4CB91C4240C26",
      INITP_04 => X"7C44331BC18C305FAF0384C0270FF84F33DBFCE6CFE10090040CE63384B4032F",
      INITP_05 => X"00CD98CC9E078638CD1CFC810F201A859B97F8E3EF82FC9C427867739E335A12",
      INITP_06 => X"F09110F90E68C4199A04F706504CED109C1FE47BD814C68728019F798FFF5B63",
      INITP_07 => X"1CECD0342830DC77D1101DB1ECDFD824978C936247FCFDCBE5CF393E4C418242",
      INITP_08 => X"CCFDE5CCC34C260438386B3111C61B7939C8D861F9C2CFC9098903DBE0CC1EEE",
      INITP_09 => X"8351C92FD07BCA17B608BC066E0446DF1F0998F83F061804C7CE30133E7984DF",
      INITP_0A => X"9CBF7A072C99E0167A6C5A6DCBC034B3EF0959A7B7CE3D2FDF0F291C3F390671",
      INITP_0B => X"19A4E55BFFE0E3BF430F0CFF7FA3FEFC27E273BFC6918D309E27BE48FC3A591D",
      INITP_0C => X"B185AB2074A1021CC76DE419F927CFEB64A4DC202098D8C0D8BF4E026DAF3C9A",
      INITP_0D => X"FBF2073C6026031C013084800EE1FC64FC0C11BE7EB147CBE1B5301EA1F1F7A1",
      INITP_0E => X"C639815601E8F33E338CCF227A16C03390001C832E0C3109CBDED3FE67E521B6",
      INITP_0F => X"4744BBEC4FB68FD65CA7C7ACC62FDD0E41E1F86B37610D8A13C4DFCDFE024D3A",
      INIT_00 => X"FCEBFBFAFE17FDEF1611EAF102F806F8140EEEFBF8F1F2FD070502F40403F401",
      INIT_01 => X"040100FDF90A0E0AF0FF03F9F201FBF5FFF1F1F20006FDECF000FEF807FC010C",
      INIT_02 => X"0AFC0AFEFD12FF09FAECEFF8FA04F5031A0707FB01EFF6FD0F0F0707FFFD0A0A",
      INIT_03 => X"F7F5F3F2060101FD0C05F1F901F7F4FF0202081414F3FB0101F6FCFD0105FF08",
      INIT_04 => X"F9FA28201113121101F2E9EE040BFDE9F0F2E5F5FE050A131307FC06091B0B10",
      INIT_05 => X"F902FAEFFAF800F9F5F4FCF7F6FF02FA09FFE5F706F6EE08080002F702010614",
      INIT_06 => X"FF08FE0A0207F9F5E9EC06FD0A0B0A04050D120600F80711FA1D0FFF03F7F6FD",
      INIT_07 => X"05000005FEFB04FA050B1705F7011709FF0304F0F5180C0D130506FA070F0B0C",
      INIT_08 => X"08F90B0D0D09030D08FDF304EF0006F7FD0B10FB01040601F60CFDDE0D121209",
      INIT_09 => X"0801FB03FBEC01F0F10B03FAF8FFF0ECFB02F2FEFCF8F9010B01FBFA000C030E",
      INIT_0A => X"FEF2F208EFF5F800F7FAE7F008051E02FE00F0F6FA0BF80010FCF5FC0608FFFF",
      INIT_0B => X"07FC020903FD02F30001F8F9F8060E01F8F2FCF5EEEFE2F9F0EF070811080809",
      INIT_0C => X"FEF40B08F803050B0901F2FEFD151BF40913100504070AFE0412140701F8F801",
      INIT_0D => X"0BFE05FFFCF6EEFFFDFC05F7E4FD151100010205FCF4FC06F7F61509030914FF",
      INIT_0E => X"0AF8F9FC00010C0E0D01F6FA02FCEF01020C01F4130DF302F8060802061005F2",
      INIT_0F => X"0200FC180B0308020002FAF0090C04010001000D0205F9EDF5F2F501FEEEF905",
      INIT_10 => X"F8F80A020404F3FD06040A0B06F3F7FB0DF8F8F0EE04FA01FF0705FBEFF20502",
      INIT_11 => X"0AF5EEF5F8FFFCF606040A0A02F3F50909FE0CFF00F3F7FCF70807F90107F9F6",
      INIT_12 => X"07FDFA0A07F30905011804FD01060C1509F6F8FD03040006000211080806010D",
      INIT_13 => X"FDF706F60AF0ED0CF603060EFC030501FEEF0C01FE0DFDFDFFF9FB11FEF10104",
      INIT_14 => X"F2F303F2020CFCFCF7F8F605FE01FAF3FF01FD04F8FC0503080B08FFFBFA0507",
      INIT_15 => X"FEFC0401141B0E01FCF6F2EA0A0AFA00EFFE170109F4F60901FE0E170CF505FD",
      INIT_16 => X"FE02FFFE0604F904F4F2EFFB0BFFF0FE080603050BF7F6F8050AFA181809F807",
      INIT_17 => X"01F2FD101401EDF1F8F42301F7FF0915F009F1E2EC020DFFFEFE00070A0305FF",
      INIT_18 => X"FCF7151005F903130705F00400FE020405010C09F8FC00000703FD0110F2FA06",
      INIT_19 => X"030709FAEAF50B04EFFE030C08F40314FFF70007FC01FCF6FF0508F7081206F6",
      INIT_1A => X"09F5F810F900020C0809F00D0A0815FE01100703F8F10512FCFBF8FCFDF4E701",
      INIT_1B => X"0510F9F1F3F4040AF7F608FA0E0AEEF606FAF80E12000C0E09F201F3070F0905",
      INIT_1C => X"FA03FB0709F9FBF504FBF70B08031713FF0505FAF2F5F8FFFC00FDF5EAF3FBFC",
      INIT_1D => X"F11B0EF2FA0807ECF60D10ED01140E13FB040A0616F8000A0C0D140FFE0B09ED",
      INIT_1E => X"060207100B03080402FFFE0BF1E9EDFF040D1006EEF8F0F6EDF3FF08F1F401F1",
      INIT_1F => X"EFF8E9FD100DFD07080E0F000005F5F81110FD03E5FDFF0501FEF8EAF9050A0E",
      INIT_20 => X"ED041B0206FA0A06FF12F4FF08FF0917190114010D0FF3F71206FB08FCD8E9FD",
      INIT_21 => X"0F06150208F30E10000A190DF4EB0803F6F4F30A17F4EC021B00EFFF0904F3FA",
      INIT_22 => X"FBFA1501F4FDF1ECF8FDF502030701F402070D0205090C12FB050AFC08161312",
      INIT_23 => X"0404F2F3110EF7FCF9F011F9F703EAEDF1FBF8FEF2FA0706FCEFEE0902F4F706",
      INIT_24 => X"0104FB000CFFE6FD05000C07FFF9F5F3F8F1F6E2EE09060606EE0214FFF3FFFD",
      INIT_25 => X"FD06EA00FCF6FBFD0D0C0C010D01F6F0DB09040010FD0801F4EA050A01070817",
      INIT_26 => X"FEFC0703011308F2FB0A0301F7FE00071204F2F702050E0805FB01FAFCFCF7E9",
      INIT_27 => X"07F3EFEAEEF9090B02FC020701FE17081021F6F90904FCF90E000DF4FA09FFFB",
      INIT_28 => X"F50004FEFCEAF1120A08FFF40803E7F205E702F0F805F917000007FE0008FD00",
      INIT_29 => X"07FF030C100AF41B09F1FDF6FB02111B17FAF91406FEFAF00FFDF1FD120BFBF6",
      INIT_2A => X"FAEBFD02F5F4F2FCFE06011D0B03F709F2F8FEF0F3FA0608F80C0AFEECE80707",
      INIT_2B => X"F50806FCF907EFF4FF0403F500F7E7EEFDFFF6F3FB0E0F02F2F2F2131405FEED",
      INIT_2C => X"010E0401FFF2F7FB0909FF0A03040900120705F9F700F004FD07010504FD0DF9",
      INIT_2D => X"FFFB0510F0F809F6060604F9FDFA0301EDF6F4F0FDFE0110FB0B040116140FFE",
      INIT_2E => X"FA0807EAECFEFD090405020E03FBFEF5EC09020A09F5FE031513FDEFF600060B",
      INIT_2F => X"0201100907030203D3ED000EFBE304EEFA030DF9E5050E08EFFA1408FEF10A01",
      INIT_30 => X"F7170406F7F8EDEEF9FFFCFEECF7F9F400ED02E7FD0EF8ED0EF5F5050D16F9FA",
      INIT_31 => X"0404F707FE0909170F0C0B12150804F2F9110EECF0F5F2FE06FEFEF6EB0000EF",
      INIT_32 => X"FBFF00E6EA040909020300FD08EC0409F9F8021C0FFFFD0BFF0D050F0BFFFFF7",
      INIT_33 => X"F40A0AF4EAEE0413070B01EAFDFBFDF7F6F9F00C09F80E1406F7FFF1F90AFFFA",
      INIT_34 => X"10FE03FE0112081102F70009F8F81004F6ECF405F7F513F3001012F7010B0913",
      INIT_35 => X"EF0118FAF40AFD0F0504120702FE050FF6EBF9FC08FCF4F9020A0B0B05F6F514",
      INIT_36 => X"0A14120CF7EEFC0701F9FB00F6031108F2FD090509F7010D060001F6FE1012F2",
      INIT_37 => X"FCFCFDF5000E0509FF110CFA071808FE060204F517070A03FCFEF3F3EE0107FF",
      INIT_38 => X"01FF0507FFFD0B0409FD100D020F01FBFF0200110E02FD0B08F409040607FC06",
      INIT_39 => X"ECFFF81108F800FEFFF90C0CEBFCEEED0602FCEAF60A01FB1008FCF8FCFAED00",
      INIT_3A => X"04FE080703FCFFFDF6FBFBF4F1FF0503F8F8FDFEFCEE1AF8EFF90707FF01FFFE",
      INIT_3B => X"FE0000F101FFF1F2EF031007F5FF1A0EEC0606F3000CFAF60BFDFE020206F409",
      INIT_3C => X"FFECFE25FBF90B10FDEC04EBF3F5F2FFF6FC00F4E7000E0B0F06F80D06FD0A08",
      INIT_3D => X"E7FB0CFB01070EF5050B0AF500151202021012FAFCF901F5FB02EDF20D0D14F6",
      INIT_3E => X"0908F300FF0B091C1F06FCF400100908ECF601F2FEFD000406F2F8FB06FBF4F0",
      INIT_3F => X"080107FBF0FF040DFFF1F404FCFD0716FBFD08F109040E190518FEF802F7080C",
      INIT_40 => X"FCF3F40B0E080F07FBFB0101F8FD10090A0812FFFAF7F904FFF6FF0DF8E2F308",
      INIT_41 => X"0A08090BFF1605E1FF040B13FE1011FF080101060D07FAFCFFFD06FCFC07FAF9",
      INIT_42 => X"FEF9F2FAF80306FCFDF20802000AFA05FBFF0001F6FEFAF7FEFD0501F00F03FC",
      INIT_43 => X"0107EFFAFC0E05F8F6FF080CFA051009FEF616FAFD14070A05F0FC06040B0CF9",
      INIT_44 => X"090602FA010C0CFCEAFB090A04FCE7090F0306FEFD0AFCE206F6F5F2F40B12F8",
      INIT_45 => X"0605FEF7EF1408081300FBEDF20E031008F7F907FE04F5FD010FFBFF02070AF0",
      INIT_46 => X"F6FC010D0203F8F401EE0407FFFD09020A10FA110BFEF603080411000DFE1002",
      INIT_47 => X"FBFE0004FEFE0007FCEFF5FBF9ED08FDF1F8FC0604F509FFF8F30D0DF3FB0002",
      INIT_48 => X"0301F6FFF7E3EB0D03F4F5F1F51602F8ED080F1308F40101F3FD0DFEEEFCFBFB",
      INIT_49 => X"FBF6040703FEF7FCFDFC041EFEE5FA040812FFF8060C00000C070AFE0706FAF1",
      INIT_4A => X"150AF3EFEEF6FAFE0710100712FEFE05040F03F3FC0702040C06070401FB0D03",
      INIT_4B => X"100509F8FBF8EAF60603050EFB040AEFF60F08FFFD0E0C07F8F9EEE8FA091116",
      INIT_4C => X"05EDFC0AFCF5FA0E120A110300FC021204FE0B0600FAF20EFFFF08F6F2F4F8E6",
      INIT_4D => X"F502F9F705F7FC00181B1104FD11070FFA01FDFCEEF118101307000B04EFF40F",
      INIT_4E => X"FCFB0AF5080F0D0A0BFAF9FEFD04E9FEFBF60E09FF01FB010A0D07FE04EDF6ED",
      INIT_4F => X"FB060B0A0802FCEF02FF02F8070207E9F9FE020FE90706FF0300E500FDFCFAFC",
      INIT_50 => X"030AF1E3F7FAE8E6050CF0F5F20000F6030A070500F0F40C0BFFFDF9190104FC",
      INIT_51 => X"FCF70CFDE2F0FEFF01000005F4F2EFF80506FB00FA1215FE020701FAFDF00C0A",
      INIT_52 => X"FD05F3F409FEF8F8F7FA0704F5EEF00B0501FFF2F6FA0DFC1711FE03F7EDEBFD",
      INIT_53 => X"FBFCFF0EF7F9F6EB061A030CFC0512F80AF202F9F6050AFDFE01FC0209F7FAF8",
      INIT_54 => X"FAF70806EE02F2F6FEF8061A06010D04010EFEE801FE0600F503FAF80401FFF5",
      INIT_55 => X"0FFCF9FEFF08F80306FFF410FEEF040000FB05FEFB05FD0402FEFA03F7F206FA",
      INIT_56 => X"0108FC08F7FD0C0AF50407FCF20208F7F8E9F80B0A15070A0F0705FC00FCEC0A",
      INIT_57 => X"FA1414F8F0FB0D03F902E2F7F7EEEBF10FF8F0ECFD18FF070A0007150AF9FEFB",
      INIT_58 => X"FAFEFEF2F7FA040C0201F9E3FF09E6010DFF01F8F31603F10E0D02E8FCFA00F9",
      INIT_59 => X"FB1401FDF4EAF4080102EB030DF9F7FAFA00FDFEFFF7FE0602FC0910F705070C",
      INIT_5A => X"F8F8010810F5FA08FC0601FE0F1301F0D802101BFAF50AF40202F4F90E140E00",
      INIT_5B => X"0901EF010CFCF2F3FEEEEF020705FF0009FCFDF40409F6F8FF06FEFAFDE7F0FB",
      INIT_5C => X"08F4EDE7F5FAFEFDF900F7000800FAF9F1F6FCF5EBFBF305F6F3FEF4E7EF1307",
      INIT_5D => X"04F804100605F9EC02040813E5FAFEF50401010AFAF91608F5F9FFFDF1FAFDF8",
      INIT_5E => X"E3EDFAF8F6FBF4FEF9ECF90D04130905F6FCF61F0100FDFCF501F4FDFCEDE9DE",
      INIT_5F => X"0C0E11F5F30F15FEF30EFE0E07F9120CFDEAF30C02FF02F305FF0FF8FC00F7F6",
      INIT_60 => X"0EF9F909F7FC04EFF20CF903F5FCFAE40105FAF8EDF30100FB0605F9FE04F010",
      INIT_61 => X"F6FF0BF4F6000C03F604FDEAF1EBF8FB0AFA0B0EFEEEF90010180F070E04FF04",
      INIT_62 => X"0602FC0E1A190C10F70109F0EC081511F5F402EDFD0A0000FFF914100B060D07",
      INIT_63 => X"09F8FE0C08F6050AFC11FD0806F90307FBF70BFDF1EF04061407F4080F190702",
      INIT_64 => X"F4E1FCEFE50D0CF40104EF0201F7FDFFFEED0E05F7FFF4FDFFFBF506FC01FAF4",
      INIT_65 => X"E1F1021601ECE1F802FDF100F7FD08FAEAF4FB0A0DED00161A0601ECF70001FB",
      INIT_66 => X"01EBEEF60EFF0303FB04F40B0A020BF9020A0A101003FF000C1605FCFAF40606",
      INIT_67 => X"FD09EBEC0B0401F7F008140200FF04FEFD06FB04FF0AFFFE0E0DFE00060D0810",
      INIT_68 => X"FF00E80402040DFDF4EEEAF5060800F6FFFFFAFD01F5E7ECFB00F103010304FB",
      INIT_69 => X"F2FAFA091E150FFFFC07E9F805F314FF0000FDF305120B0414110EF9FBEAFD07",
      INIT_6A => X"04FDFCF0F7F9FA07FD00F4F1030803F307FE000803F3F4FFFDFC0F00F803F8F0",
      INIT_6B => X"F9FDF8F5EFF3070B02060208FBF600060C0C06FB140800F3FB06F4F5F2EEFA04",
      INIT_6C => X"0D060D02F1F6F708FBFDF50D060504EFF4F7FAFDEDF1040A05FEFF0501FC0400",
      INIT_6D => X"1219120B030E1AF80F10FCED0103070DFE0C0F1711F1090CF206060D03060601",
      INIT_6E => X"07EEDC050308120B120CF70B0EF7F3000B0101111610E3F50E0C0BFFF4F30107",
      INIT_6F => X"FCEEFAEFFB0BFBF4FFF1F4ED0307FD07120F090603F2F1F60424F7EBF5FF1008",
      INIT_70 => X"05EEF80C16FFF0F8E8F6F8070DF600FF0503F60A1E0209FEF408F2F806F1F712",
      INIT_71 => X"F9F00009FE0CEBEAFFF401FDF4FCF302F8FE00FF100DFCF9F8E9FCFCFEF1F904",
      INIT_72 => X"0D07F406F2F2FA021304070EFEF911020B0CF3FE000A00F70202010EFA0303FB",
      INIT_73 => X"F01807FB021410050C070F0813080E0A19270AF9FAFC0700FD03020B050DE9F0",
      INIT_74 => X"05F7F6F2F80EF8040C0705FE06FEF80BF9FB0500030D0A080F02EDFA0403FDFB",
      INIT_75 => X"1008F9F70809F9FAF8040C01EEE80006F9FF0D05FCF9F9FE0307EF010600FB11",
      INIT_76 => X"020A12080F0206F0F8F0EC02FD060103FFEFE9FC0D14F0F81001FFE8F7FEFA09",
      INIT_77 => X"F9FF0D0D09F8FE01050CFFF7F60D03FEF9060706090A01F501F605FC01FCF80E",
      INIT_78 => X"FEF7FCFBEAF9FD020812060E0802FE150BFC030DFFF405F90318FDF4F306FC04",
      INIT_79 => X"090C0AF50505FBF7F9FE051A1EFC080AFCF60AEFFAFFEFF5EEFC0201F8FB07FB",
      INIT_7A => X"030EFEFF0EEDF0F902FEEE090A0C12FB02160602FDF704F3F80C1A09F701FA13",
      INIT_7B => X"00F40C0D050200F3F2FDFF040D1707FCF2F9EEF3FF06080303EDF107F60DFFF4",
      INIT_7C => X"EFF407060DFDFB0D120DFD02FBFEF9F6F6FB0EF0F0F205F3010A2403F9F8F405",
      INIT_7D => X"02F407EEFFFD0112F909FB020BFDF1F2F8FB131905FAFDFFFB05FD07FBFC0006",
      INIT_7E => X"09FC0800F3FDF8FEF904FFFC01FAFE01FE00150AF4EEEEFAECF406EF03FDF311",
      INIT_7F => X"0EF9010101FBF7FD00FE040B07F60013FF02EFF4FB0BFFEBF5F6F30AEAF80303",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => dinb(8),
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_15_out(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => p_14_out(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_15_out(8),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => p_14_out(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  port (
    p_11_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_10_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized11\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized11\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"8C4983B6B038C0A7443EC11C6D464FD06DDF58731EB40870FF23381746CD1466",
      INITP_01 => X"7895E78F33319E7C49E7EC8F133E9C3CE7EF0D20703BB9D2F09C3444ECC5241B",
      INITP_02 => X"C33264F23F8D208EE7CB1E08E004C0DB9C9E6F03EDB2C07DE6756C7E16330F43",
      INITP_03 => X"69C963DDA00BEFEC0683190A33C35A23E0D8442F89B350380FCA0EFFEB740638",
      INITP_04 => X"656F6F1E8587326C680152F806D3B07601F1B671292163BFBEDB933860F6EBE0",
      INITP_05 => X"D7F193DE7631E178201A1863C9040C783E338F5E0F7642D20331E908A0DED2DB",
      INITP_06 => X"4BFC0FB2582C19921D6B726161000E331C99E1AC1E19E0325BC7F41761A37879",
      INITP_07 => X"4024E407E1C890F641B6010221D8501FC18143700785A24FFFECD6E19A18CFE0",
      INITP_08 => X"E38DFE0437635E860987EF9670807DC08CF3BE07978FEFB002528F4453F0BFFE",
      INITP_09 => X"27DE001CB0C76407C400C1F8CCA300ABF3BC5C99E7BDFDA2D3ECFFDF7E380C2E",
      INITP_0A => X"94EC3707013FAFF2BACDE05CDC64CD74FC7BECF3AC15C682B07B6806C09DE67F",
      INITP_0B => X"B30EF0E8210C8F67E43917F7BC01B834938D7BE1B7CD079FE4A689FB59FF3B4C",
      INITP_0C => X"78F6FD9FBCF230614686C07B9F16030465C00464F832D726BC370719C636589D",
      INITP_0D => X"438C193B78BCF8FCED018214E78248FF3804670C365A021EE48C3321B7C00809",
      INITP_0E => X"F98308897EADC982E0AC3895F5F93022F3372D1D91FFFEBF0F0FE6D97CE1A3F8",
      INITP_0F => X"3322718FBCFC1EFC90FC0EC7A7CF565A0FB938F1C212E1988C4D8F603EF7D483",
      INIT_00 => X"02F5010406E6F400E5FD160CF8F305FF0B0A0FF60AF6070100FFF60D00FCFB09",
      INIT_01 => X"FEEBF7F2F1EBF5FE0209FF030B00F8FC0209F3F2FC070A07010103F001F7E5FF",
      INIT_02 => X"0D0C02F9FBF6FF08FD00F5FB0DFE0D0B0A050905F808080001F1F4FD02070409",
      INIT_03 => X"01EAF40EFFF203FFFBFD00FDF5EBFDF300FD00EBF801030506FFFDF70009FCFE",
      INIT_04 => X"10E5F403EEF70DFB07F50C0101FDFF1E0EEE0403FBEBECF8FBFE02F806040407",
      INIT_05 => X"01E9000904E80400040BF2FAFBF3FD09F3F2070806131AFC0A0E06F6F4FE0411",
      INIT_06 => X"F805F4FD040402120806FBEEFE05190FFAFA040105010A03F701FB0703F4F6F5",
      INIT_07 => X"EF000807FEF91F1500FB0907F80E04F3FB0212110D01F2F3F909F3F706FCE901",
      INIT_08 => X"F1F5EE01FBE5060AFBFD050F03F800F30604E6170CFF020B07030CF8F401F9F1",
      INIT_09 => X"FFF7F5F605110703FE0101F9F7FF02040003EEEF04FD03160EFD070A0BFD010C",
      INIT_0A => X"0AF9EFF805040E070B08F8EAEA00FCF7FE06F7F1F20311FBF4FE0DF80705FA0D",
      INIT_0B => X"E8EAF30602F7EDFDEFF6F80DFDF8F5F0010E170DFCEF15FB120CFA0400080110",
      INIT_0C => X"0B0306F80917F8F21002FEE9F9DCFB08F90703F8FDF300010509FEF6F1E81011",
      INIT_0D => X"0DF70007FA0107EAE5F8F10D0BFBF3FCFDFEFD04F7F20107FD010611F9E4FAFB",
      INIT_0E => X"0B0BF4EE0007F0FB0502F7ED0D1406F9FF0402FCFDFDF40411FEF9FAECFC0111",
      INIT_0F => X"02F4FDFBFD051009FF1F0BFB05F801EEEBEAF40D01FAF2E4F2090F01F8F6EFFE",
      INIT_10 => X"010606FE04F3FB060C0BFAFD1106F7F906030504FBECF8F509F801100F06F9FB",
      INIT_11 => X"EAF8FC1208ECF50407F7F4F702F404F704FFF703FEFB04140CFAFEFBFDEBE809",
      INIT_12 => X"EEF4E806FAF502F3E804F0F30D0FF805F3FF170F040C0E0B0BF8F4EEF3FD12F3",
      INIT_13 => X"FE0709EAF5EF110BF50E02EFFBF8F61A09FAF807F9FBEDF608040B020F06F8F2",
      INIT_14 => X"FBFEFC0E180F141D1104111605F70110F9EB0D0F011C170BF3FE0BFBF707FAFC",
      INIT_15 => X"F2FEFD0800F2FEF6F8EC0A09F903F3F7050A0AFEE8FEFB0307111702FC100306",
      INIT_16 => X"130FFAF4F3F9FAFAF70B0C0CF8F204F30008F70002011207FB0E0403FEF5EE0B",
      INIT_17 => X"FAEA030A0504FFFE060AF3FD0F12FE0008F4F50B09F21526FFF6FFFA0D10FA0D",
      INIT_18 => X"FEFBF802EB05FCFA0DFDE4F201FE06160B00010E0FFAF1031604F9F4F9010517",
      INIT_19 => X"1208030BFDF1F4F9FEF81600DF05F4020B021603ECD9F801FCF0EBFBF3FEF0EC",
      INIT_1A => X"F80E0003F60814FDF303EDFF0101F0F802FE06FA020302050F20F3EBFD00060F",
      INIT_1B => X"FEEAF2060F08040EFAF504F8F20512140AF2000306F10D151609FC01FDF0FDEA",
      INIT_1C => X"0602FEF10000F8F5FFFD060B0510EDF107FC10F5F906FF000C02FF030B05F5F6",
      INIT_1D => X"0801010703F2E500FE031B0A0609FCFF020507F0F30401FA08010F07FE0DFD08",
      INIT_1E => X"FC05FB010E09050C020E1510FC05F4E7F8F7FD07FFE6EFF8FBF4F907F8F00304",
      INIT_1F => X"0EFEFB01FB0F01FAFAF50A05FF0900FE10FEF905050EFBECF2FC07F2F9FC07FE",
      INIT_20 => X"13FAFF10120E0904FCEBFEF801FFFE0AFDF0E501F905F9FAEFFDFD050402090E",
      INIT_21 => X"FD04FBFBFEF0FA00F4F70CF8F101F8FFFB0F07F5060BFBFD0F0FFDF9F8081213",
      INIT_22 => X"0605FB0AF80919F80600F50F050501FE04F6F704160DFCF5F80AFEEAFAF9F0E5",
      INIT_23 => X"09021612030906E5F2FAFCFC0B0F16F6F403F2FF09EEEA0704F7FAFB010105FA",
      INIT_24 => X"0D080D0E00F5F610F6FA0FF9060FF4F2FC07FBFC0E07040205FFFDFD01F9EE07",
      INIT_25 => X"00EFF107F8000B11060D0C080F0500FF0AFF02FF0201FD0CF4FDF5FFF2021B00",
      INIT_26 => X"FF04020806FD00E8F30C051507FEFDFF0A02EDFD1914FE070EF6F906F3EF0400",
      INIT_27 => X"02FCF40107F810F600FDFC00EAF5FEFC00F1F60EE6F4F6FA170103FEFEFBFD05",
      INIT_28 => X"FD11FB0901020A07F8F208E6F7F1F00BF4F90EF5020AF704E3FC07F5FF00FAF5",
      INIT_29 => X"05060902130DFDFB0003F2F2051105F8FDF7FF0DFE0401F60A080502FB10000B",
      INIT_2A => X"0702040EF9FBECF302F7F5F104F6F80A05FA06080306E802F9F201FB1304F60E",
      INIT_2B => X"030EFAF6F7FCF2061F06F6FF1A14FFF0FF0A0F05F2F8F4F801FC07FAF1F3F207",
      INIT_2C => X"EBFC1100F81612FA030E020C17FF010E1C050108E8F4070809FCFDFAEF020402",
      INIT_2D => X"0F06FD030000010207070CF1FE06F605160C03F7F706100102FCF2000904F9FC",
      INIT_2E => X"07F4EBF902F2EB07130DF9F0051004EFFDF2FA0204100BFC04F9FAF8EC020401",
      INIT_2F => X"F7FB06FD05FEFBFEF2F6FDFE080100FDFB1113FA0604F3FAF7EE03FFFAF6FC0F",
      INIT_30 => X"0AFDF30603070DF1EF01F2010420F4F60AF7FEEFFA0108050BFBEFFEFF0002F4",
      INIT_31 => X"01FF08FEEE04FCF4FBFE070215F6EFF0FAFAF4FB03F20311030C0CFD05FEF0FC",
      INIT_32 => X"1A0F01EDE6FBFD09000F19FDF7100AFCFBF4EC07060600050B01FFFB0917FC05",
      INIT_33 => X"090304F3F4FE0906F30405F3F70B13F8FCF1EF08030108FFF705F105FDFE0411",
      INIT_34 => X"00F9FC0406000BF50004010C08070A0C07090A04F4F3F8190603FAF50606F6FF",
      INIT_35 => X"070F12F9FAFF01FC00E1FB03FD09FDF003F5EFFE0D01FF0D07FFEC0110130CFB",
      INIT_36 => X"0AFA01F1F80914000C10F508F4F5070C130F0DF7FB0400F7F80403FA0217F900",
      INIT_37 => X"00FF0603FB06FDFDEDFCF0EDF4F7170A01061800F2FEF7ECF80FF8EC0101EB07",
      INIT_38 => X"F4090EF5F403F60D130503FFFF0F0B0AECF30607F6F5FFFBF5F9F30A0A110601",
      INIT_39 => X"FBFBFCFDF0FAFBFAFAF1E703FEEA0611FEF705FB0AF8ED00ECE3FE0E000308F7",
      INIT_3A => X"0902040401F1F5F2F602101106FD07F6F304F7141409FF0B09FB0602FEF5EBE7",
      INIT_3B => X"FEF905101E0802FBFE010501050802F701FF11130001F0FC01FFFDFB060B0906",
      INIT_3C => X"0506F80A040702F4F9FB05F7FE0A111103FF08FC030C01020E0A02F8E6FCEAFC",
      INIT_3D => X"02FE160D040103E9E306F5ED06F8FE09030B0F030D040DFB03102402040BF606",
      INIT_3E => X"FBF0FB02070E00FCEEE60202EC120009F40000F612060603FAFEF9F703FCF702",
      INIT_3F => X"02F60513041318090511FA0D0CFB040BF6F4F90B0DEE070503191B0D01F8FDF6",
      INIT_40 => X"03FC02FC090DF2E4E8F3FAFC090C0D10EC0AFDF4F9F2F1E6F7F9F8FAF6FAFB0A",
      INIT_41 => X"0D0C1B0E0302FD0407FC0AFA0800FF0CFA00020DF1FAFDF506F6090302FB0A0B",
      INIT_42 => X"F61807F205F1FAF7F1010509F3FEF6E7E6F2FF0AF3FDFFF8FA01FBFC04051304",
      INIT_43 => X"F9020003FCFD100BF7F8FAF8140AF6E5FE00F6FBEEFBFE050904031508F8F8ED",
      INIT_44 => X"0BF8F6F500180C0FF7020E110E09000B00EFE8F7EEFE12FCFDF501080F0B0603",
      INIT_45 => X"0A0B1412ED0B01ECEC05090A04F4F0E3FCFBF800FDEDF7F9FE1001F109F9F60B",
      INIT_46 => X"1011F6FB0DF8FBFB01FFF8080D18EAF300FE05ECFBF8F90AF3040E0009F3F915",
      INIT_47 => X"F9F9F8020318FFFBF4081A19FBEF0FF8F7FBF6E4F5E7EE0B2106031A16FF0A07",
      INIT_48 => X"00FDF9F3F6F6F6060503EFFEFB041F0005080506F4F103030202FD09EEEFFF09",
      INIT_49 => X"FBFC04FA0201F7FEF4F5F709FAFE0C0DFCEEEDEBF1F6F9FBEDF810F9FCEBF0FD",
      INIT_4A => X"F7F6FA0202FFF5F6FE0BF4FDF9FA18FFF5FBF6FCEBFE06FDFD08F8131612F408",
      INIT_4B => X"EDEEFBED0F1BF6F7F30EF7EAF7F5000312F104FBFFFE0403F70810F3FE1C18FC",
      INIT_4C => X"F2F80902FEE10206FE0DF9110E0CF0F8030905041B010601FF05FB16FB0CFFFD",
      INIT_4D => X"FCFB030407F8090D110403010609060EFBEE0803020101FBF5FAE7FCFB180E00",
      INIT_4E => X"F701FBF100010901F5F3030D01FBFFFB01FDFD1115FC050F081718050DF3F8F4",
      INIT_4F => X"0504EF090CF7FDFFFCF500F3F0FAFF131B0C0607090E100A030D05F3FCEC040F",
      INIT_50 => X"EEF8000D05070200FE1500F6FAFA00FBF7F4FB1301ECEB0303F8E9F3FCFCFFFB",
      INIT_51 => X"FF0BF7F7030811100CF6F6F0F705F3F900ECFF00FE0E13001102101016FAFA02",
      INIT_52 => X"EB02FD00F7FC0400050B0DEE00FF07FCFEF90A040DFAFF0AF7070E070B02FE02",
      INIT_53 => X"F6EFFBFFF7EB091603FEF6F6FB01E5F3F5FCFD02EFF00B0EF9F3E7FD0D03F1F6",
      INIT_54 => X"FEF406FCF1F3021405F4EB0704EF0610FEF30510FFF600FB06FFF3FB04FE0E02",
      INIT_55 => X"FB04F9F1FB00FB12FEEE0503F8F902F7EAFDF8050108141110FB03F1F5F80304",
      INIT_56 => X"0406010209160FFC0F05F1F8FAFDF7F3FE09FE0CFFFCFCFAF6F0F7FA0909FF01",
      INIT_57 => X"FB0C02F902F50407FCF1FA14FDDC020E1014F4F606E4F0F306090C0203FFFDED",
      INIT_58 => X"13FF01F9FF0800FCFAFEEEFDFFF6FFF40D0FF7F7F301F8F80AF90800F7FA0602",
      INIT_59 => X"FBFBFE0B04FF0B0CFD06FA0911F5FF0AF70F1602F70A04ECECF5F8F5FE01FCF9",
      INIT_5A => X"FE08EAFD0EFEFAEDEEF70201F8F20AFA0410031808FEEDF3E80511FBFEFBFBF3",
      INIT_5B => X"FF0506F70104EFE7F1031608EEF400FA05F2ECFBF901EDEEF7F2F9060A1506F8",
      INIT_5C => X"FA0FFEF0F9FD040209060602030108F5F801F7F7FC130B000B06FBF511FF0308",
      INIT_5D => X"FEFEF5150DF4010C0906F5F2FB0508FE03130FFE00ECF8F5F0FBEDF20AF7F9FE",
      INIT_5E => X"0404FE01160806FE090A060BE8F40107F80C0F02F1F5FAF908FFFE0F0BF7F9F4",
      INIT_5F => X"F605FCF61118F3FE090F0D0BEEECF00CF4F8F1EF08120F0DFDFBFD05FC060005",
      INIT_60 => X"ECFE110604F8F0001001FBFD02FAF2060BFC0AECF1150806EE0406FBF4FA04E6",
      INIT_61 => X"FB00F7FBFCF51A110200F1F707FEECF8080C080203FDFEFA121202F5FD000CF8",
      INIT_62 => X"FCF0F8F8F90908070D0CF8F20802FC0BF5ED07F103F9F6F10108EA0118FCFF00",
      INIT_63 => X"01F6E9000FFC07FDFCED0209040C0C050105030A03FE070907F9FA0105FD0B0B",
      INIT_64 => X"F50312FCEBEDF4FC060B07FF0CFEFC120A0210031100FFF60B07010407FF040F",
      INIT_65 => X"00FD0F0101FAFC03FB0505120EE5F80FFCEC03060303130C09F4FCFFFD05E0F2",
      INIT_66 => X"F407F8FCFFF4110AEEEEFCF60501F6010F18F2F9020008090BFCFB150E0E05F9",
      INIT_67 => X"10FFFFFDFA180401EFF3FAF002F2FE04FAE9F2F9F1F505F3F50606F9F3F9F4FB",
      INIT_68 => X"FF09FCFA01FBF4FDF5F90901131E08030E05080BF60A050B090B0715FF0700FB",
      INIT_69 => X"F3F7EF0315EB110AF8030E04F1F9060F120DFCEA040AFAF5090EF303060605F8",
      INIT_6A => X"0310F4F503FDFB0905FA01FEF60BF203060D0E040F06FB0B221009F2FEFFF203",
      INIT_6B => X"0000F1F5FB09070C0305090500F7040805FAF9041AFFE8EE02010406FDF6040E",
      INIT_6C => X"FBFDF30712FAEEDEF60003000C17FB0104FF0301FC090603FBFEEAFEFFEFFAF2",
      INIT_6D => X"F7F5FB01F9FC0EF90804080A030404F2F901090C0C09FB05050103FC07F70B0B",
      INIT_6E => X"08EFFCF1E4121002F800FCF5F5F30418FEFAFCF7F900010CFEF3F6F4F2EC0109",
      INIT_6F => X"07FE0E0B060FF6FDF3121710FCFC05140A1416FDF71806F90B11FDF0F600F1ED",
      INIT_70 => X"01F8EDF5F5F20706F9F5F60108080FFEFD04FC060702F2F0F3FBF9FFEF050200",
      INIT_71 => X"0303170EEBFCFFF8000A0301F7F0ECFBEAEEFC060EFBFD06F9FC06F5F10005FF",
      INIT_72 => X"FC0B03F603141EFDEDFEF2EAEDF1FCF8F6F8F3FCF8F9FC07F70EFEFCFAE9F8ED",
      INIT_73 => X"FAE9EEFC0103F5F41010FDFC06EFE4FE0904FC05F9FE0CFE0F1602FAFCFE00FE",
      INIT_74 => X"F8FBFEF701FE04F6F8EDF4EAF90508FC0200F3FB0904090E070BFD0A0B00F901",
      INIT_75 => X"FCEEF30B170D1907FF02FA03FDF204030A08FDF9FA040B03E91606FA04FB00F7",
      INIT_76 => X"0AF5F2F3F6E4EC08FB00FE01F3F304FCFEF40405FE0005F8FC0404120F03FF0F",
      INIT_77 => X"F4F8F0FEFA070AF7FC0A0E010001FBEB00050717FF061C08F4080305F90202EC",
      INIT_78 => X"0F02F4F2ECEEFC0DFAE0D7F513F9F1F4F0FD0EF803FA0404FD0B05010E02F6E8",
      INIT_79 => X"FE161E0BE9FD0A0A00FF0F0DF2F808EBF40B0303FBF8FEF910FDE20B16170108",
      INIT_7A => X"F9F9020C030DFE02040E0FF00606FE02F1F2FE02020C14F2FC1A04F8F3041603",
      INIT_7B => X"0A100801F6F4F7EFE903F8EFF20001F50214FFF9FD020408FCF6F9FE0F0101EF",
      INIT_7C => X"EC01EC090EE6F6FCF6FE0A0AF5FDFDFB0CFD04FB09F7EC1206FF05FFFF05F903",
      INIT_7D => X"FE0B00FA07100404FBF9FEF3FBFD010511070315FBE3F700F9F2030102F7FFF1",
      INIT_7E => X"F407F8FAF8FF1003FDF0FEF7EDFA0E0C070400F1F6FFF50BF5FEF5F6F7FA0801",
      INIT_7F => X"0205FDFA010CF7FA1100E4041D04FD0207F3E1E90D1C05F9FD010900F6E9FBF0",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => dinb(8),
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_11_out(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => p_10_out(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_11_out(8),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => p_10_out(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  port (
    p_7_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_6_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized12\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized12\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"BFAE2878122963FF10301FB21FB70BEE6B8D4CCC8DC0A1E1C8CA1BF1415DDC78",
      INITP_01 => X"282B47520AC7860772DFE6785E0C0A61FFD80122789127F825E0A272967173C9",
      INITP_02 => X"5FB0BF93BB44301DB19538F900C00803FA24B0001B1BC4E62FA6EFF2F6037CF8",
      INITP_03 => X"3CC702619DD60439A460F30E247CDBA608A87C16613184C642272860046C02C2",
      INITP_04 => X"25207172F679BE6A408C073B9EF9D0C199C855804C9066000313BE0FEE77970C",
      INITP_05 => X"9DE01FEBEF7F9139AE6C18A81D207F9B24E660F48026F0FE669EBF4823FF1FD7",
      INITP_06 => X"2F730CFA5F61F02E0337105A990834FBD3338EFCAC7DBBB7848FD82C7B1B4BF9",
      INITP_07 => X"C7E1110D463E361F4AC7EC7883ED193CE37A2AE270038DC7F8C049F27C922090",
      INITP_08 => X"87C8E9BA700D010049DFB7DFC2F1123C1A7900AB7630CC5B6A8F51E770570697",
      INITP_09 => X"8D661C9EFA7DED9868E3230C2D1019868010B933F6FFD44E430EF30C201EDF43",
      INITP_0A => X"7B71E9CFF73C18A03CFBFA52F41E16BC11802F72387202D2F6066D30864898DE",
      INITP_0B => X"3230F011247E041850875E88DEE0E19189F4898139EEAC930C253F52187C0051",
      INITP_0C => X"6A3DFCC720E730BFD0939C8C16B6794EBF8F79C89C0E3186D86F7A85BCD8AFC0",
      INITP_0D => X"39927A79E5E0B2D6605A2175E0C0F994387816E7F431CF00C229F70F4EC1FBF1",
      INITP_0E => X"F6807FCCF82722D3FF0E4FE34F85EE103600B7C30199F530CB0A5676903903C0",
      INITP_0F => X"187508C25E011E661A1C0ED3F0DD6F233EE77A484D06F7014C30D3EF77623701",
      INIT_00 => X"03FC0A0A070B07FC01FA03FFF1F502FBFDF804FEF4F1051003FEFEE6FB040109",
      INIT_01 => X"F9FF0100F70E1F01F5F80902FE01F80C040107FCF407F3FEEDF3F8F6050201F5",
      INIT_02 => X"F800120DFEF301EBEBF90B1C100A2905F800FB090E1500F9FCFBFB0619120EFE",
      INIT_03 => X"12F8F002FC1FFCE8F6120B13FDF103FC06FB0808FAFC0102EBE40609EEED0E06",
      INIT_04 => X"010304FAFCF6FDF1F40CFCF603F6F9FF090E0402F505FFEEFEF0FD02FDE6F611",
      INIT_05 => X"081607F0131707100C02F7F908020D0D0A1607E6F7F7EFFFF904F5FB0419F205",
      INIT_06 => X"010106F8080DF40C0501FA03F8180FF204F8FB030514FFFEFDFFFCF7F9E6EDF0",
      INIT_07 => X"F405FEF8F3F6F9FAF801F801FEFBF70A1002F603F003090F1BFAF8F9F903181E",
      INIT_08 => X"F50008FF05FEFB0308FBF2F4140601F902FEF6F90506F9FCE9FB0403FE150BF1",
      INIT_09 => X"0C06F50A10FC02F3F6EEFA1C15050B07FF02FC03120DF70001F7F9F80D04FB08",
      INIT_0A => X"03F9FAEEF9140C03F00501FE0A0201F3030BF70A00F6F6EFF5E1E1F7FF0C050B",
      INIT_0B => X"EBF7F7F8EBEFF6F0F5FC01F7EE01150D07000313000804DD010EF0040008FE09",
      INIT_0C => X"05F805F8F1F1EF010D040900F0E6081003000409FD12FB0614E7F70B10000EFB",
      INIT_0D => X"0CFEFEF70908FD06FCFD03F6FBF8F8EAEFF7F80700FBFF0302F5ECF7FF090213",
      INIT_0E => X"1C0C0601FD03F904E8F3110900F6F5F6F814050300F5F4000A03131502F7FBFC",
      INIT_0F => X"0C02FE08FF03080C1D0CF405F300FFFD07FC070102F7EFF809FF0CF80204F005",
      INIT_10 => X"FBF1F4FE03F9FC101206161C0902EDF30EFCEAFAF9F71604F2FEFBFBFF000C09",
      INIT_11 => X"0107F913FBF2FFFEFF0DFE0A19F6F301FEFDFF05F9F1FDFBFBFAF3ED0000F108",
      INIT_12 => X"100C07FEFC00F3FB001B0DECFB04FDFEEDF0080A07FE0708F8E1ED0C12FAFC00",
      INIT_13 => X"E7EEF3FEFF03F1000A04FB120DFC0009F303F7F401120A04060A090905060E05",
      INIT_14 => X"1302050A0D020300FBFD06091201140306080C10FB0B0F0A0C0D01090C05F9FD",
      INIT_15 => X"F704F3F5050901F3FF0701FB05FB04FD0A17F0F0FE020412FDF0F8E9FE070CF9",
      INIT_16 => X"FD01FDFEF907F9FE03F5050306FC0604020EFCFD0C110B09030C01FCF3EE0BFC",
      INIT_17 => X"02FF01EDFAFAEFFCF500F3F505101413FD04F4ECFCFCFEEAFF0702F31704F4FA",
      INIT_18 => X"060605030CF1070601FFFC0FFFF80C0E0E200B040905F702F2F600040308FE03",
      INIT_19 => X"01EF0E140D09FE090406FC070AFEFEF4061CFE0AE80712090FFBEE031017080A",
      INIT_1A => X"0BFEF204030105F90006F7FF0B1502F4F6050C0403FA0B0DF9FA060C06FCFA13",
      INIT_1B => X"14050200FD010A02F701FD02F30A0B0106F7FBFCFFF20812050709FB08FAF811",
      INIT_1C => X"0D00FE120FFF080A05F5EAFCE9FF1803FBFE06F2FE0BEDFAFF13FF0E03EAEE03",
      INIT_1D => X"FF00FF0208F6081000FEF50708070D11FFFAFDEE0601F2F70D09050CF8F8F206",
      INIT_1E => X"FD0617FFE8F61FFEEDFC02FB06F0F810120A00120AFD09000208FAEFE80407EE",
      INIT_1F => X"0000F8F6F6F40004FAF2151707F2FCF9041F0700160AF4120DF7F60C0A1A17FC",
      INIT_20 => X"FAF3FD00FCFDF90408F3FBFE0BFDF9F6F70A10FA04FDE3EA00090D06F8FA0303",
      INIT_21 => X"0B03040D0309FAF704010EFC0109FFF7F102F8E8F2F6FE070D151201FEE6F3F1",
      INIT_22 => X"07FB020BF1F60905F5000DFC0603040700F8F90100EFFA06090504090B110303",
      INIT_23 => X"F90505FBF90500F6F8FD0403FA04010800FE0BFE07FF05FEFF0002080A110908",
      INIT_24 => X"FA1006FFFEF6FA15FCF0F7F2FB0607F2E9FB12F40F1C1105F2FA0905090A07F9",
      INIT_25 => X"06FE0D0415020019EF000004FAFD0C03130C051004FCF4FC0809FCF5F505F6F3",
      INIT_26 => X"FFFFF3FC0AFBFE0111F5F5FFF80B09FFFF01F4F8F2F7F90808EBF206FF11F600",
      INIT_27 => X"0304FD0509F50DFC0B0AFE161A11030103FFFCFF0F0402F406F2F3F5040AFD0F",
      INIT_28 => X"1411FE021B0CFAF7F9E2ECF3F6FCEFF8091203FCF6F8F8EFF9F307FD08FAECF2",
      INIT_29 => X"10FFF90104F3FF18FE0A04FBF5FCFD00F211FCF9F0FDF4FB09F9030AFE000205",
      INIT_2A => X"FD0B0504050103070308FA1302FDFF0AEEF3F8FF130E0503ECE7F8F4F4F1F903",
      INIT_2B => X"0C0EF50C18F70509F5EDF70902F7EF0808FEFF0101020E0AEFFAF9F20DF30403",
      INIT_2C => X"0E0407F1F8FB01FE0F12FF01060A1A120DF9ECFCF3FEEEF4FF070CFBFC08F8F4",
      INIT_2D => X"F50FF905F6F0FC0001F2FC00F8F209190E0A03F1F0060C00FE0DFD02FE041505",
      INIT_2E => X"E4E0FD04F5F3E6F602FCF7FBF3F6F3FCFA1307FF09060CFE020CFBFBF30610ED",
      INIT_2F => X"F10D00FAFFFD0AF5ECF9F402011908080F0601FAECF4FEF3FFE7F107F403F6EE",
      INIT_30 => X"06F6E2FAF903EFEC071D00F4F302FAF203FD0703FD09F5EFEFF8EFEFFD0D00F7",
      INIT_31 => X"EE020F1612FB0F03F9010500FCF1F7FEEDF501F4F3120D021604FB02F5F20300",
      INIT_32 => X"EC0AFC01FCEB0A0003FBF5F3F8F309F9EA08F4FFFE00F3F7F10BF6F60FEEF4F3",
      INIT_33 => X"F8FD01FB0306FEFA0506F1F30B04FCFCFC041112FFF8FB06FAFCFBF8E8FB0D01",
      INIT_34 => X"FA0304F5FA1513F5020E0404FE0606070F13F6F204FC0904FAF6FCFBF901FBF2",
      INIT_35 => X"12100D120B17FFF40308FFF307EFE6ED02160DF70D0F020B0EF904EAF300FF08",
      INIT_36 => X"00FD06E6F1FBE8F902EFFB06100E00FBFDF3F4FC020B0400220AF10AF1FFFE07",
      INIT_37 => X"1E06FD02FEEFF7FF05F6F7F90501EAFA05050F00FEFA0008FFF7F9F2FC0EF715",
      INIT_38 => X"08F5EAF4F3FD0204FA0008FB0A07FA00050CFF020A041B03F30B03F90E020507",
      INIT_39 => X"EEFFEAF1F6020F15FFF30B1816071A0207F8010EF10000FCF9F5EFF31300FD0D",
      INIT_3A => X"01E7F9F90B070C0816070408160AFDFEF5070F07FFFA00F6FBFF090A01F5FAF1",
      INIT_3B => X"EDF4F8081210FAFC02FFEEF7FE00F00D0F04F704FE03F900FEFAFD0D0700F40C",
      INIT_3C => X"F60B0C070104EDDEF4EBF504F7F102F60A0004F5F50702F0050BF7F4F6FA0A02",
      INIT_3D => X"00FE020BFB02FC03F4FD060D0DFCFDEDF7F8F808F9E5131107FFFCEDF7041318",
      INIT_3E => X"0BF40C0D0CF5EC060E02F3F9F5F3FC070900F5F614FBFD0A020901FBFBF3FBFE",
      INIT_3F => X"FBFD061312F1FCF1F2EFF70109050FF6010E0FFD010D09F20C0D1612F6FD04FD",
      INIT_40 => X"05FDF2FB0F0A010302FE05FA06FAEBE3040912090DFCF600F80802FC00FEFDFF",
      INIT_41 => X"03F5FC14FD02F207FB020B01F2F3FAFF06F507F6060207F9F1F9F90706F2F1FF",
      INIT_42 => X"01FCFBFC07EEFC05030FFFF10C090B0CFEF80003F5EA001014FD09F9F613FEFE",
      INIT_43 => X"02030BF8EC03FE1000F0FCF7ED080BF6010B0203040F0F04FE06FC04FE03F8F2",
      INIT_44 => X"FCE50101080DFD02FBFEEBF40D0605FA140304ED0106F3190A03F8F3F5F5150A",
      INIT_45 => X"16FB040BF41313FCF2F500FCFEFCF8FBFD00F1F404F5FEF2F1F603FCF5FFEDF9",
      INIT_46 => X"00F8FEF7001411020D0B1110FFEA07FC000D0903060E03FF0A15050F100B110F",
      INIT_47 => X"FA050A0107FDEFE9F8FF0A07F0000706F8EFFB05FE050CFFFF03FAF4E601FE04",
      INIT_48 => X"0608FD0A080B130E080905F4FFFDF200F5F406F4F9FFF4F504FC0D0C2515FCEB",
      INIT_49 => X"08F9101B0506F6FF02010A0AFEFDF307F7F4F8F40000FAFA0B070300F3E5020E",
      INIT_4A => X"F5F4F3F201FCFC00FFFAF3F7FCFAFCF6FCF902EE01FF190609FC0606FFFCF404",
      INIT_4B => X"EE04050D060E070C0F0D0BFF0B021307ED04FEF0FC1201F30B0FFAE90111F8FF",
      INIT_4C => X"0F0AFB02E6EB05F5040F02FA070F0F07011107FDF60C06FEFC04080204FCFF08",
      INIT_4D => X"00FDFF03FE031B0FF7F3F60E1406EEF30306FB021411FFFD0E030309ECE80809",
      INIT_4E => X"FAFAF6FBFC01F60307F7F1FAF9F70BF1ECFAF300FAF609FBFA0301F8FC0B040B",
      INIT_4F => X"F50A0107FCFB05FC05FFFF1204FBFD050A1002F9FDFB0600F00502FEFEFDFA0B",
      INIT_50 => X"F910100D0AF1F91510FC0B0AF3020708FC010BF9F5031B19ECE507F8EEFBFD04",
      INIT_51 => X"F4FAFCFF00F8FE0B0706061302F9FD0603F3F600F1FA08FB0911F5DF0F0F0C08",
      INIT_52 => X"050CFFECFC01080B16FEF9FC010EFD03070203010502F504FDF301F70107FB06",
      INIT_53 => X"0F040AF0021905FBFD010100120800041406F805F7E6F7F102F9F8F6110DF012",
      INIT_54 => X"F3F8E8F408F702090F0C03F4EEF9F01F160202F900FBFC12FF03F9F0EFFA0A11",
      INIT_55 => X"0015F3EBFEEA0606FEEFF8FEFE04EEF6F9EEFBFDF70CF70101FA00F60D08FB04",
      INIT_56 => X"FFFEF2FD0DF6EBFE040AF4FCF9F4041D000D12FDF9030004FB13FF0A15060501",
      INIT_57 => X"08FEEDF8F303F6F900F5E6FC05010AFDFEFEF502F50506FDFAFD0606FCFAF4F0",
      INIT_58 => X"00050DFAEF0C0C0201FDF8FAFAFE03020608130C030B0E1209F603FA050211FB",
      INIT_59 => X"03080100F1F8030A0A04FD0708FA0EF7050DEFF6FCF2F7FC08FD01FE0A06F201",
      INIT_5A => X"0809FCFCE20E01EAFAF3F802FAECFE06FF00F900F8F60804F90507F70804FEF5",
      INIT_5B => X"FF010003FA000DFEF4E7F8FA08FF070EFF030E06F90512F1F2070003000501F7",
      INIT_5C => X"F2FE09EDFCF8E806FAEBFF0C0D090501FEF7FC060A0707FEE90D09FF020E0AF7",
      INIT_5D => X"05F703F200050A01F80D0C030AF4F4F505EE03F2FAF8F201FD070402F7130700",
      INIT_5E => X"0110FE0B02FA110D04E4F2FFFFF7FB040D00010E08E708100A0C0DFBF7010401",
      INIT_5F => X"090BFDF81101F7020407F7FD0F07040FFEF9FCE5000702140D050CFD0F0502FA",
      INIT_60 => X"ED03F0F8FEFF0103FBF703F7FC020D07F501F609FAFBFCFEFFF311200F220809",
      INIT_61 => X"F9F303F1F50703030BF5F802F6FBFEF80BF3F4F1FA07FB08F700072109F50EFB",
      INIT_62 => X"FE0308FEFAF9080910030F13FFFEFE0B040AF3FD020B06FEFE0207000FECF20C",
      INIT_63 => X"FD12FEF7FEF4FAFBEE051617FDF8F9F904F9F1F2FB080EFAF9F90204F9060008",
      INIT_64 => X"030A03F807EDFD04FB0AFBF000F8F91006F8FBFCF20910F903FA090AFBFFF20D",
      INIT_65 => X"EEF409F501011001F4000DF70411F9E5F40605FCF9F61206FE050207F5FA1B17",
      INIT_66 => X"1108FD02080C0106F9FDFF0000FDFFFF090BFAFC0E050E08F905FBEEFDF2E8F7",
      INIT_67 => X"02F4FA01FF02FF0E0611F9FDFCF706F0EEFFFAE5EAF80006FDFB010700F8F3FD",
      INIT_68 => X"08FC0000F5F3F70EFAF20008010413FFF4F4FFF8F306E6FFF5EFF5FE040105FE",
      INIT_69 => X"FDF30C090903FB0A0908F402F30602F0EAF8F3F210FEFCF802090807F9FEFEFB",
      INIT_6A => X"FEFEECF503FC0813080AFDFA030111F1F9F90515F5F2FFF0090E0D040503080B",
      INIT_6B => X"0401FFEEEF04150616FCF2F7FA051503000804FF05FCF212F9FDEB0C0BEAEAF2",
      INIT_6C => X"F1FFF5050B140C0AFAF7040F090A0604FFF5F5F4F90703F0F40A03F405F90204",
      INIT_6D => X"02FCFE040101070904F707FBF80BFF060D02F807190202FE04F8F6FE0DF408FD",
      INIT_6E => X"FBFBF80A07FF01F8FEF7F70000101303FF00FDFE060BFA03FAFF05FF06FFF903",
      INIT_6F => X"030FFDFDFF060AF2F3030FF90505F30E07F3F7FDF905FC0203FEF8EFF90610F8",
      INIT_70 => X"FF0001F5091809030C18FBF0F90604F80F0E00100203FAFEF6F90103000F0300",
      INIT_71 => X"F2F80111FF09F9FD160D0101FF03FD0F0EFB09F600FEF10F01FBFDF401FCF801",
      INIT_72 => X"0601090C100F02FBFD150CF9FC0100EBEEF5EBFF04FF05ED060BF2F70D0A0104",
      INIT_73 => X"1006EFF010FDFD091A05060D03110200F90AFEF201FFEAFDF7FE08000506F0FC",
      INIT_74 => X"03F80C01EFFAF2F0FD07090100FF04FEF9F9F303FFEEEC160E0B00F10D070412",
      INIT_75 => X"FEF5F2F8F8FFEBF303070B05EDFBFA0E0BFF0308FFF2F6F7FCECFB09070AFAF7",
      INIT_76 => X"EFF4F8ECFD02030E0900F4040BF8F8FB040BF5020803FE06FBFE09F31801F8FC",
      INIT_77 => X"F5F6FFF408F1F903F7010D190002040A0CF3F7E5DFF9F3EDECF20105E5FC0706",
      INIT_78 => X"06FFF2FF08F2FAF402FCFA030A04FE0B0902F0FB03F0DFF3080F0313090C01F6",
      INIT_79 => X"05FD0B12F8FE12140405EDF30F0F0B0AFAF800F60806EEF6F4FFFC00FCFEF8F4",
      INIT_7A => X"09FF040AEEFD00FA0C08070307FBF502FEFEFDEE00FDFAF80D090F190B120EFC",
      INIT_7B => X"0C0AF9F0F4F4F805F0F9FA0207FCF5FA13FFFDFBFD02F1060AF50B05F60D0E01",
      INIT_7C => X"FCF5F6F800030313FFE801F3EBFE07F204FBFC12FEFDFCF70401F0030107FEFB",
      INIT_7D => X"110406E5F707F6010E100BF1F1EC0402070C0B04FEFFF300EEF709F10109FBF8",
      INIT_7E => X"0EFE09FAEBF7FA0C0E010308060404FF0C0801F5ECF6E70617ECE80111FAF113",
      INIT_7F => X"040908FAEC050A0408F7EEF907FC03FE02020E04F3090008F8F601101401FE0D",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => dinb(8),
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_7_out(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => p_6_out(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_7_out(8),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => p_6_out(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  port (
    p_3_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_2_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ram_ena : in STD_LOGIC;
    ram_enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized13\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized13\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"19787D99CCB1CC460C68866FE8F8238CEE0C9B48670F12E06F5C3DCC83FBBC01",
      INITP_01 => X"1E82F59C12064F09C7BEA73CBF0779358C00B2080F925DA685E684B0EF079F62",
      INITP_02 => X"73487A76D3867F5EF82033C6CFAEFEE7B9907F1AE03F3E72803FC869FAA7E67E",
      INITP_03 => X"CE860D2713BDE727F60C000C1C790D30D80E015F02E49AD689FCEFD8F469B4C8",
      INITP_04 => X"679F860C8EDC257345A61BF7DACE81BFFC9BC6208F38C7CF0C1E9E76FE5FA0C8",
      INITP_05 => X"E4C81EDF6C7B30F67B4BAE8083C96FE450059B60E1E401CD67B3FEDAC3A4B94C",
      INITP_06 => X"FB84DF034573E020744DF27F7CCCA05A39CB8FF8EE47DF066155DA3CCE4363B6",
      INITP_07 => X"8E00B0119CFF762B8E9EE5F2127631EAF3FF270E67A063142BEF6F105940F001",
      INITP_08 => X"FCADC180627890F6D273E9B3221E7DBD812042A040381F4FC889113111F8858F",
      INITP_09 => X"82C0D80CFFA4BB1F23E6662B97C063D20A1F45B033B9CBC379666EE1A211BB35",
      INITP_0A => X"5C20A2831E69D4234C1F28003CE8169B9F33D78915A31BB68A44FF9FE090752B",
      INITP_0B => X"11EF86465CF6067FCC9C0E8297F038CF06F4E25F224C16B27907231C2208E6CB",
      INITP_0C => X"0000000000000000000000000000000000000000000000009F7878201D012FC1",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FF1A1A020109FCF8F7F6FBE7FD03F6FAF90FFEF9FFF60504072004190C1018FE",
      INIT_01 => X"03F2FE03FCFEF7F60DF605FBEDFC0B00040AFFFAEDF801F9FDFE1101F9FE0908",
      INIT_02 => X"00F0F60203F1F7F702070500F5FEE8F5050607F40D0CFC19FCF9FE0810120307",
      INIT_03 => X"F7F9FC01FBF8F60F0C040702EFF20A07FB1101FBFA08E7F60FEA0B16F30C0F02",
      INIT_04 => X"F8F6F402EB071206F6FCFCE4F20C14070D07EB010B0AFAF5FC02030BF9FD0209",
      INIT_05 => X"160C0A02FEFA030402F9FC02EA06060BFF0C110008F3F30E14EFEB0DF2F7F7F5",
      INIT_06 => X"F6F80C15F7F70606FF04F0FD0A0007F0F1FF0704F7F7071405FF09020AEBEE03",
      INIT_07 => X"0F0C0BFEFD040AFF15F6EBF9FC12090A05F5FEFBF9FA0EFFFC1908F9F80802FD",
      INIT_08 => X"F9F7FD08FDFFEAF40813010101F5F7FBFF0206EBF0F8FEFF03F2F4070906F505",
      INIT_09 => X"F80F05080AFA03F5F7FEF2000AE4E401FC08040C0EFB180CFA15F9FC03080408",
      INIT_0A => X"0E011A09FAFBFDE8F10105FA0104EA0305FF02EAEEF710FEF200FF0910F5F505",
      INIT_0B => X"FF0D0E00FAFF130A14180F121A080A01ED0EFDF61008FC0F01020E0BF50B0E0A",
      INIT_0C => X"FB01F4DBEBF4FCFA0000100800FBF3FD0CF7EDF9F40506F5020BEDF001E406F7",
      INIT_0D => X"FEFB030A02F5F9FAFE02F7F3F9F1FE04EE01F70A05F5FFF5090AF4FADFEA0A1D",
      INIT_0E => X"150A0AFF0608EF070507010203F7F60910F90204F7FDF6F003080305FA080CFB",
      INIT_0F => X"0E0109F8EFE0FE09F4050B030C14FD0EFAF1EAFB02FD0AF8F60708FCF2FF050C",
      INIT_10 => X"E4EBF8F3FD00F707FE01F90E0EF1FFF5E9F9FB050CE9EF0502F6F2F6EDFFF20C",
      INIT_11 => X"FE000D0B0602000A0B03F9FFF9F6EFEDEDEF0D08FF03030C0BFFFF06F71105EF",
      INIT_12 => X"FDEDFA010A0F01120100F7FDF8FCFDF6090AF0F6F9EEFA020DFAF6EF0E07F803",
      INIT_13 => X"FB04FDEEFD040CF7FC0713F30005010300FBF3FEFFEBEAFB172204F7FF0CF502",
      INIT_14 => X"F5F10008FEF8F7F0F801ED02F7FEFB08F7DDF4F7F4F1F302FAF6F90B07F4EDFF",
      INIT_15 => X"FCFAF4ECE503050B1A04FF00170D09090503E5F10506F8F1FAFA060C02F3FF02",
      INIT_16 => X"E8F402F90306F7F2FA090B0F0BF9F40605F9F8FAF9F1F6FB00FF02F5F9F1FE01",
      INIT_17 => X"12F4FDF71608F4FB00FE1408FD13000E08EFF3F1FD01FE0A08FFF2F808FAFD0F",
      INIT_18 => X"F6FFF9F500FF0B0609F5FE03F20C00F7F802F2FC01FB0800F8FD0108EC0B0802",
      INIT_19 => X"F4030102F90200FFFBFEF9F4FBF81109FBECFD02EAEFF9F4EEEA11FEF6010F0E",
      INIT_1A => X"0A0C04031603F800F9FAFF1412FB090BFB000BEDEC06FF06F7FE06EC02F2FF02",
      INIT_1B => X"FCFF0FF9FD080B0F02091414FCFCFB0A1507040B070D15F800FE01EDECFEFBFA",
      INIT_1C => X"000404F9F8FF091302F1E5F5FB0F0AF605000501FBFA09FA070BFBFA06000006",
      INIT_1D => X"F8F4E8FC0EFCF2150F030104F6ED090A000E0B0407071206000B0C10FDFC090A",
      INIT_1E => X"031312F9000BFBF4F905FBEEF1FE04F5FCECEE0A12F9F8FB0C09F70D02F5F5F8",
      INIT_1F => X"EFF70102FCF7FE00F00416050DFFFB04141B160AFDFB0CFD000CE90200FCECEA",
      INIT_20 => X"F7F1FAFCFFF1F70102F707FCE4F2FCEFEE01F00605010203FFE20610FF081B04",
      INIT_21 => X"05050401F6F90003040606FAF5EFF703FF051DFEFAF9F80005FDEDEA02F9FB06",
      INIT_22 => X"FB0A1804FCFAF0FA0402F8F0FC111209FBFF0D030CF9EFF9FCF90507F6EDFFFF",
      INIT_23 => X"EEF2FAFFFDEE080EEE0106FFFF00FDFBF8F109191DF2FE010307F2120D120303",
      INIT_24 => X"FEF50BFCFE0CFF10FFFD0A08F5F8FD01FE1615010E0802F6F408FCF5F6F2E3FC",
      INIT_25 => X"0CFB00050EF702F3F700F90207F7FB0202070CFBF503FFF7E5F8FCF600FBFBF8",
      INIT_26 => X"FE0D0F02F8F9FC00F9FE04FDF2F313090703FA0A04FE00F209ECF5FD1206F5FB",
      INIT_27 => X"03FDF30604F4FDF9FF0D00F1EEFBFDF2E805190812FFFC1A16070C00EEF70103",
      INIT_28 => X"F2F402080C03F2E8FE00F30203F90B0FFB05FFEBFB071CFD00F20612FDFC0508",
      INIT_29 => X"09FAF81909F9FBF6F204FDF4020AF5FEF9F6FEFBF0FFFE05FCF505E8FC08F602",
      INIT_2A => X"FFF3FD13070C0AFFFDF1F71303FA1121200B0209060805FFFEFF0806FBFE0AFC",
      INIT_2B => X"09F809F7020C000E030206040BF707FEF10511FEEE05ECF515FFF9040703040F",
      INIT_2C => X"FD0814090802FCFAFAF71802FB130CFE00F8FE20F9F0EEE9F5F5F71310F5000F",
      INIT_2D => X"02E9F8F5F714F5F801FB0901FE06EFF1F707F501FFFCFF01F20206060B0A1008",
      INIT_2E => X"05F6EE0FFFFB0C0102FDF8FEFD03F3E60708FEFF0E040813FAFEFEFD01EBEC0D",
      INIT_2F => X"FDF9F60506FE0402FDFD0304F1050707010A0FFEF9EDE603FCFA04F9EDF5F4F5",
      INIT_30 => X"E6EA040BFAFEFF0413FF0C080112FBEF0EFFFA060707FFF7F702F7FB07FAFE0A",
      INIT_31 => X"01F3E9040D0203FF00FB02FE01FE04FAFEF30BF2F30FF703010AFDF7E8EC0407",
      INIT_32 => X"F0E7F70EFBFEFD0807EE00040FFDF8F9FBF804F7E6FEFCF60304091508FDF109",
      INIT_33 => X"0200EEEBFA010AF2E8F90410FF08F1EAEE11190AF6F9FBF7FFFFF3FCFF150400",
      INIT_34 => X"0CFFFBFCF4F80900F4F90409F0EB1600FD12FC080702040E0BFF01EFFF09F505",
      INIT_35 => X"01F7F0F807FC0B0601FC0C01F5FD01FAFEE9EDF80708F40F01FDFDFDFBF2F1F7",
      INIT_36 => X"01FC080401FF02FB00FFFFFC0806F8E9E9FFF1010B0C040C0610F40713070C03",
      INIT_37 => X"EFE5F4F3F814FDFFFB12090311FB0905FEFD06F3F9FFECF5120A000B0F0CEAFE",
      INIT_38 => X"01FC09F2F80800EB03EE000002100C0CE2EAF5F30C0D040002200201091D00FB",
      INIT_39 => X"0501FF0BFC03FAECEFF9F805F5F6FFF103F8F302F0FCFFFE050104F20F0F0110",
      INIT_3A => X"02FAFF0B08F9E5FDFB04F8031107020506F7F601010AF7FB05030FFF03F7021A",
      INIT_3B => X"EFF6EAF00002EDF6FFF4F3FCF0F6F3F21001F30805ECEAFF02070203FDFFFA05",
      INIT_3C => X"02070CF70102F80900EFF5EF0BFAF9080A0AFFF2060A04F9FCFDFD01FD0EFE03",
      INIT_3D => X"FD010104F0F5F605F00305EFF4FAFD05F5FAFB010BFE0DFBF8F3F9FB0406F20D",
      INIT_3E => X"FF1F0CE8D7E80606FDFCF9FCF0F6F7F704FBF9F703EDF90C0506FD0DF507F7EC",
      INIT_3F => X"F7010811F9FCF7081B080500080E1E01EF00E7EF010E010819110BFC02000BFC",
      INIT_40 => X"080211FD0A0610FDFFFEF7F4EB061007FF08080300F909F9FF040B0AF5FEFEF3",
      INIT_41 => X"F3FB0E02F4081206F306030AFB0705FD0C0303FF0A1B03F70706EFE9030A01FF",
      INIT_42 => X"03F30A071305081D0403EDFCF8001617070908F3F1F6FBF705FD0103F9F3F6FF",
      INIT_43 => X"F50807150B1B04FF0300FE040605080001F80C0D0D07FF06FC03FC0618120F0B",
      INIT_44 => X"0A02F60F0701EF02010102F8FAF9FD0103FAFCFFF4F900EDFC03F8FEFBF721FF",
      INIT_45 => X"F5FE0FFB0305F70601FFFDF6070FF8FBF7EAF402FA1115F4F804FBF80616F6ED",
      INIT_46 => X"0EF5F80C0103FD0A02F8EFFCF617030EFF0C09FC0F0D170EF3ECFAF405EBFE07",
      INIT_47 => X"F9FDEDF9F9F30A02F60BFA02F8FB02F5FEF9060213070EFEF706030D04030B06",
      INIT_48 => X"F700FF050800FD030C1307F6050705F8EB03FCF8FD03F1FC0205F8FB08FF00F0",
      INIT_49 => X"02F0F9FFFB0300F703F2FF190BFAFF0200F3FB03F9E8FF03F5F0F000030D10F9",
      INIT_4A => X"0502F3F0060CFCF5F90BFCFBFA0C18FBF9EE0001FE01F8FBFEFD0901131BF7F7",
      INIT_4B => X"050D160AFC01F80F160D07FCF8FEF2FE01FC07060EFB02FCF306F4FE08050903",
      INIT_4C => X"FF020AFF01FAF9FCF8EA0506081F071314F9F610060AEDEFF6FA05FB0C08FD02",
      INIT_4D => X"1511FF050003FCF5F3FBF30A0CF6FA0703FDFA0C0FF3FD070803FF0AF107F6F3",
      INIT_4E => X"FDFAFAFCF1FDFFFBFC00FC151CF80602F903FAF3FB07F8FF0B0E00F2EBF3E8FD",
      INIT_4F => X"F806151C0502F107FFFD1103060C0907F7FA00EDED010505080A0B05F7F70E06",
      INIT_50 => X"F6F9FF030C020205FF0C09F505020B0610FAE8F403FB00F70205FB09F101F4E4",
      INIT_51 => X"FB070700F000FD0403FE000004F90000FEF9F6F7FFF7FAF4F70705FAFAF0F9FE",
      INIT_52 => X"0A0E03F707FF02FFF502FD071C0CEFF5060506FDFD0AF8FDEB01FDEE0CF9F810",
      INIT_53 => X"F80B17FEF1F0EAFA0717FBF90600F9FCEFF101FE04F3F3FFFF111B05F50B0EF0",
      INIT_54 => X"0100F6EFF8FF0B00F8FDF300ED0409040B0D0EEF08FEF00CFB0F01F9FE07FEF4",
      INIT_55 => X"0DFD0C03F6F9020E121904FEFDFBF7F2030CF00AF7000B1104031118100E0606",
      INIT_56 => X"000D0FFEF1F8FF0217FDF606FC060BFCFFFA07F500F80B050310EE061002EFFC",
      INIT_57 => X"02FB02FAF8F601110207E9060C050C05F503FC00170AED05F8020D040603FCF7",
      INIT_58 => X"020EFA0E1B0DF80D16130003FA03000CECF1FF0504F2FF07F4FF0E07F40AFAF3",
      INIT_59 => X"04FFF5F7F40407F000030E1A0EEFF4F70311F9050502F7FC040708F7FCFA0A03",
      INIT_5A => X"0D0CFE0F0506FB0309FA0300F2FD0012080400FC0AF8FE05F801FDFB0B0FFC05",
      INIT_5B => X"0704010103EAF201F7F8F2FC0AFC020DFEEDFF080100FF0B05F101F0FBF5F0FF",
      INIT_5C => X"FF1B14F80BEFF4F2F4F3FBF9081305011A0AFBFEFD0A0702FAFC0E01F3F7EDFB",
      INIT_5D => X"F6F90D00E7FD1103ED0F0DEFFFFF0E0F040F0704FDEAE607FC000401010AF607",
      INIT_5E => X"04F203F6F3F90400FEF0E3F309FBF8031009040A0FFBF50202F9F9F8F7F2EBF7",
      INIT_5F => X"090301FB05030BFAEEF9FB14F4F7F7F6FE00102102F6FB0B09FA030D0AFCF10C",
      INIT_60 => X"140503FCEBF90AFD130C040D030D15FB0108FD01F5FBFBF2E2FC01030C0E0AFD",
      INIT_61 => X"FE0B0FFBF2F0F5EF00F3F3ECED0D040D04F8FEFCF001050A0908F80700030B0B",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => dinb(8),
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_3_out(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => p_2_out(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_3_out(8),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => p_2_out(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ram_ena,
      ENBWREN => ram_enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    \douta[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \doutb[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_1_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_2_n_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"7C1CC8B964FBFA61751D4BC2D5FD41A77C722D8ACDA5A07C52BB4CD9A0CDF04F",
      INIT_01 => X"5C890B483AD5218ACD12B6505DFFEF9DF2B6B9426684F257B06B547F629A2F9B",
      INIT_02 => X"D37A4B0EE9AE24F4BE099941040F5B32300C539ABFD733B30404DB71E708AAEF",
      INIT_03 => X"17CAC25B62F24FB07D5D51C74971CDC6D3772EE16729E9BEC2201331520EDC23",
      INIT_04 => X"E59F94CFB3A05F9126B6F0C42E3FB01F89D384DF6722DDC9517F7C4018740249",
      INIT_05 => X"5BE98A41BD92343A75998C4EF77007D1010F9408183773904C498747EA9DB838",
      INIT_06 => X"80D572839774270487356D7FD942CC0D9807548BC3513D6921AB11CD771FE664",
      INIT_07 => X"EE258273E6C2A41398D0BAFC98F1D57A23EF47F138D446B0A94CC27A5ADABFA9",
      INIT_08 => X"475CCBC20F679EB8D262E5D01B46D3FCDB5C3440DEE09D7B2F8763FBA30226AC",
      INIT_09 => X"62B0CD9E3F2EB7ACEC99C6129318DBC0E982FA786157B76096E5EE77FB8938B3",
      INIT_0A => X"1EF78DE74D141AEDDFE29B429AE788F6151988BD8BFE944DADCF57CCB9104948",
      INIT_0B => X"986A4CDD83362BA8AC36F06C3800EF72F3337263C45FF2976D4784A3F44C2E64",
      INIT_0C => X"8D29065436F9C97B9C7FDA7244B194F3549F5078F0625599FC47F17B92F17413",
      INIT_0D => X"ECEF6A49B51DA5C98FB7AFC5F5D8569CF160C23D2BC88FA40255816648A6B184",
      INIT_0E => X"1EE6A7EABB33429B30F771DE42F155ECB089D76869CDE7BFCC6AA7ABF6068973",
      INIT_0F => X"D2705BAB09216BAEB931AD9A8B107A0AA515C52D92D4DF18F3C30D7A1132D2AD",
      INIT_10 => X"223AF5D4232164A6E2ADD9283659AE162320A009175979F58918BEB6213CA77E",
      INIT_11 => X"BF9EC9C76A319600700CFB13050496450D032E4B3E36518AD12500EFCC5DEDC7",
      INIT_12 => X"94302360DD378A8ACE2A49413EAD50AF861DDB2212CB53F6F0F76464923561F6",
      INIT_13 => X"37CB85D26E3A5F81C465633D32FC8A10EECFFACF5838879FB064CCCCCD3E83BF",
      INIT_14 => X"99DD5D507BD72B9E5EA12DC86FEAB20DB602C1B9BA49B26DE5D1B214B2E98F9D",
      INIT_15 => X"79211FFD147F0EA72EDEA64F5AECD09D974202EFB9DC2644A7AC6EA5E62CFE31",
      INIT_16 => X"18E5D433CD78E09F0891557EB53B923C210A3B4026A2ECBA52FF99EFB2FAE6F2",
      INIT_17 => X"F7073BE5AEEA3D074E41F1A1F29E025EC3DBAABB51E75D9A440880413D99A3EF",
      INIT_18 => X"CEC1595B83BE8652B8164D11DBAFCBB8520078F8EA85A9743B7E99C54E7C6846",
      INIT_19 => X"8C075B3128A5659987136B319B9D9F475E3435A6A9002BD563D7297723E651B7",
      INIT_1A => X"57E126C7372C073EFB67D73213AAB6E263CBA66CEF05C15BFD1E400EB8F43544",
      INIT_1B => X"88BEBFCC4D5B320CC27DAA1C62C9781C82C3D6897053C121130BF2CD01D60B2D",
      INIT_1C => X"1D0D282A2EDB1298B98D8AC8FD3EF2FED741A5D66E4B0AD1D4180C896F32921B",
      INIT_1D => X"5A47A4FD6B5636A5A2076E31791296B65D8F7DCC860EDB362431D1712A621408",
      INIT_1E => X"7523B9051647A0E86127D7BECFB2C07354FA2D9C6F2DCEED44F3EEFB37DF68BE",
      INIT_1F => X"64C0CBD356F57FF2CBD7A82E3171E8B02E2EB2F909106CB34EA56F1C4FD87CF7",
      INIT_20 => X"F0D5DCADBEF14DCB3B56D397919E0C92E4791A672330F70F49EB3A6B9444B709",
      INIT_21 => X"9F6E7C688F37FCA7A67A379759744A143C7FB5DFF3314D2DA47210DC4732FEE0",
      INIT_22 => X"96EF61FD324A4C946AFF7F60873B6AAC671BB2E1C8935B519F7F263C61EB5DC3",
      INIT_23 => X"E12D76985F7B7FF6B7D19524DE868C1226B115D69EF4B8DD8E70410B7B078C53",
      INIT_24 => X"62F661EFB9F7889DCC740C15A0BA99ADA479F3B6961CF598FB6009048D130858",
      INIT_25 => X"68C91FF8B9E57A9DCC0C0902BB0130BAFFEF4ACDFB6935AE52FC7EB834B1D4F9",
      INIT_26 => X"E29456A95D50D0B0DC96633EBF316AD655CF12D2B870C47BD1A6DFE00B266725",
      INIT_27 => X"B2E2F0BD27E00F2ED6A1444737378A71856D52A9D6B196722F6FDBA7F787AFF9",
      INIT_28 => X"9D2631C9A9CF40057229795913F29419F941036D2FA71CABB00CDD97EA07101C",
      INIT_29 => X"BD3E73E0A5D489DAEB470726497B325C45790CE9CFC4D9546F105ADDEFEF798E",
      INIT_2A => X"BF4C403510FAA625C95C76EE64E0B26D79E7FF94B0C92648F96D7B527A01F116",
      INIT_2B => X"AC6D1ED59FDF640A5D0CAD2A0E8EC9D8F9E83450702FDA132BA01393797CBEBB",
      INIT_2C => X"3E4880F30225ABDA8411F9BF7E684679273F96FF701D473AD74AEFFBB06BE88E",
      INIT_2D => X"14BCC8E9E207B1F1100B164AD166A99DEA966D18AB5BFEC85D1A7AE8F8FC7E91",
      INIT_2E => X"EC824CF186CCF163A9CC3D43FAF43878A721B5924AA01B92964A384EDB7CF0B8",
      INIT_2F => X"16C33557178331AD35D4E3259BAE8CA31DB53007AC1180E405B131E178863F2E",
      INIT_30 => X"961ADF9819714E271FB647077F3101B73F9336AA9D1A383BAB55ADBC7BE6E3EC",
      INIT_31 => X"BEE73A29A1865952E83F40BE6980518DF86DED52AAD2AF6725C32BD117EA0F57",
      INIT_32 => X"B983E8B3CF98496234C690AC552942FFDFC0B751CD7BA06DA0BB88B39207E6EE",
      INIT_33 => X"E03C80E7A70D779416C92F9DD385F9CB05C41F95B971FE88B4C09D00665F7488",
      INIT_34 => X"B6DAEC8413BD2F63BCB4FFEB34C399990E1316AD1102AF95BC39F4E2331230B0",
      INIT_35 => X"9A1BAF6AA928222D951636A9EFD01EACCA9A74DCED0C61027C0F5A634B5C5CFE",
      INIT_36 => X"4A6C535083A2CA2C2CA0DA3CF557FF11DB58AAC5FF07A03B7BFDF6DB2E8864EB",
      INIT_37 => X"58A85F02D7D2F00609D88AC2C3D5A08F6601C83D4FEA01EF28C512B7BFC197DA",
      INIT_38 => X"0000000000000000000000000000000014C1B9F9E4B607F683D7FBD9ABDE16C0",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(13 downto 1) => addra(12 downto 0),
      ADDRARDADDR(0) => '0',
      ADDRBWRADDR(13 downto 1) => addrb(12 downto 0),
      ADDRBWRADDR(0) => '0',
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DIADI(15 downto 2) => B"00000000000000",
      DIADI(1 downto 0) => dina(1 downto 0),
      DIBDI(15 downto 2) => B"00000000000000",
      DIBDI(1 downto 0) => dinb(1 downto 0),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 2),
      DOADO(1 downto 0) => \douta[2]\(1 downto 0),
      DOBDO(15 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 2),
      DOBDO(1 downto 0) => \doutb[2]\(1 downto 0),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_1_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_2_n_0\,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(3 downto 2) => B"00",
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => addra(15),
      I1 => addra(13),
      I2 => addra(14),
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_1_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => addrb(15),
      I1 => addrb(13),
      I2 => addrb(14),
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    \douta[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    \addrb[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    dinb : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"94E23B524F305D13D3E0FADC0B5E89BC6247B5913FDCC45686476E09931E5C0F",
      INIT_01 => X"1DAF23528A1BFA5BF0B24B50EDD4744BF1266A352058710E04E18C649BE59A56",
      INIT_02 => X"C616E3FCAD95A0249D8C0A2D5CA0D23040EE47FFC835E6E720DED6D1595D5301",
      INIT_03 => X"D4112D68512630B7A83CD0763F6D9037E47D92646BCBC0D7C80DAF211DF1F739",
      INIT_04 => X"CC5B14CE8A3F33120327C8C88C01524E684396DA745586A489118473AD12D8EF",
      INIT_05 => X"AB3FB461FAC8A2E4B8D8A32DE749B78FF49D1692F08B01297DE7F58A4DCE9E1B",
      INIT_06 => X"531F95A35D5A24C21324707BDBFC46E052AD5E059AA9B5387ABEFFFDB6A3B0C6",
      INIT_07 => X"0B8D756E54A15B2B24481A9ED701F35C3D12BA337F4CA4D6686958E507834ED4",
      INIT_08 => X"ADA3DC58B8E7AF91EB9044D535819EA08F62E16081548FDEBF3D7822595040CC",
      INIT_09 => X"A65725B6541F3142DC06BC0C8FECD03D69DAA7A62F250E656982045E16398E72",
      INIT_0A => X"7F669E95165765060B5740E44B96E82CED7B07A4D951FFC9000FD6730F36FD2F",
      INIT_0B => X"DEC436937CDE055B91F83B5ACB93A50E31E9F089A952BFCD9BA1244DB4B6EB05",
      INIT_0C => X"A2F405D984B4DED61828156E7057797FB9DB5814D195A9EFAB3D7B97293BBA3C",
      INIT_0D => X"8F8118DABD97B60FA66028942AFE495BB83BB288B2B4A5CCC4343BD654B82FB4",
      INIT_0E => X"99A6BA22AAD6A63B4A3D0A09ECD611297B62AC321FDBAA3889AC47746E1F57E1",
      INIT_0F => X"811C486AB524600FA0DF40126986B87BE8EDC1A64F9AF058B9A68F6BF1EC59EE",
      INIT_10 => X"45B1FBB3773EB47796C66B0D0AEE9EDDE24BD0D124E0A1ED0CE93AC25D2D39B3",
      INIT_11 => X"BF50A65ECAC4BFB233140416AF0FD9ACAF55D297C0E3AB950543FE9FA75D08AF",
      INIT_12 => X"C7C759F3F8D41FDA92DF2C4943CE492879A34CC53A6F67C2FEA24C7671D0D557",
      INIT_13 => X"6BEEDC4E80996EDDD91F27EE99B637032759BA8960C8A552DE9786A6E1940E4F",
      INIT_14 => X"6DFC39DC440C6C6BEC0275F71476922315DA117EC5BABDB5483FE38A68B6D52F",
      INIT_15 => X"A933C68E171572F36FB9789C0EFDAA005AA1E1CE22ACB223FEEC1BAE71352CE5",
      INIT_16 => X"3E00765DBFFC522EE1153FAC8405D0E24BCC09B7B8A3FE317897E72ACF6EA98B",
      INIT_17 => X"0FE842EE90FE5C7A7976E5E7C5CCE2C9083EA8436487B93B3A8FA522DA29149E",
      INIT_18 => X"241022B5D9ACF32803902B80B729BE12B94D0766350E53AD2F6AFDE3931E1232",
      INIT_19 => X"BBB7E7851AF0A8132447A5F8AD197C691D098B55BB2DF3292A4490C32E56BE8C",
      INIT_1A => X"5B27C186AC24D407C36C2FC72B2FA40036CD12DDAD2F31FA108466D64C2030D6",
      INIT_1B => X"4A34A0EDAA8CEE6DA68FB481C20A810FE66F48484D55B27C03825828E328821A",
      INIT_1C => X"68CF068F713930A73B610A7F99CF565DDB2F9026B84E8F73665E028A69325FEA",
      INIT_1D => X"3E02B003B6C384847F1B8F5C68D36DC10AC039BE9BD7C1276C44BC9AFF573B52",
      INIT_1E => X"EB49BAA8E1193E060AD65AA8EF19B21BFE26B1359CE441F84AE8176986A330C1",
      INIT_1F => X"F4F773AB5086A51897050B357181A9094EA08796B03D5A691B045D33595EEE7B",
      INIT_20 => X"0A8E107CC276E9D9D348D608EA3A19E8D4EDC73665F4769AA61C315173511F8F",
      INIT_21 => X"28D6A4B4429C3E23A18219F6F13C0A51E3183C7D52EE9F0D4CC3D8C80CF71130",
      INIT_22 => X"A25E84EC44200CD84026E48912CC88A5287753EA49A111987BC0C5BAD70715D3",
      INIT_23 => X"F59697158C0E876CB8E3798439CF5ED025EC8DE1F012F17846157545F70ED178",
      INIT_24 => X"CAD44886C7E2BA8F6857D92EC2F70678B1D298935F668951E2C666D595D9ED9A",
      INIT_25 => X"90488AB1D7C6BA565F70984FCD54B3CA9A7D0EA993487993B55C7F7CBAED6AD6",
      INIT_26 => X"ED2370DA8BF28E746F539715A4C2E807EFD25B1FF646748B5B19AFB4B5327A90",
      INIT_27 => X"33DDDE485C7DC049F168CC038CA3FB7AB3E28F6AEC9375FB5ABC7D4802C86233",
      INIT_28 => X"CB53D5FB3EF207D3579FAB509D0C4AD97C1D430A4D3618D6F54358AC4776F7BF",
      INIT_29 => X"DB35234379399DF9474F880473911A28772809019DE2F19F3AB25064AF15C708",
      INIT_2A => X"9AEB9E5A822F487881F5169C7CB941B47DD619B6C3C43E56725B80AB8F0964FC",
      INIT_2B => X"38E43017809A18E2E81F2993E6BE5681911CA8448BA8D26041BA5E0370FA4C62",
      INIT_2C => X"6C547944A21F27CAC402BAE0A6D374D4A5361BCC2226CEFC463FF6460511D80C",
      INIT_2D => X"2ABF30E624E8EEF2F2C4BDFD404350C9064FB5622C76F3A71A1736DEB25848C5",
      INIT_2E => X"FD3090FEE3F8C6EBA761B54E5436E1B0A68E31D39ED7A2982636DA8B9EC03AB4",
      INIT_2F => X"99B0F4616C1EB112C2105AA9EBAE5A983716855B635B000C80061AD47047E233",
      INIT_30 => X"E7E93121159ED2B7321209D10587982C97FF2E3D09BB26515349D92CFCC837C1",
      INIT_31 => X"A0276D48FC22FA7AD42E1DDE509136F6CB350E05831D7418AC71F9C7629A83EF",
      INIT_32 => X"DC5DA8B722EB2235F8AE79553BB79FAADBC79617B64B6F6AD9831D4FB2F456A3",
      INIT_33 => X"26531FFE7906A8594A29390109FEF7D75F0EC0A0955BDE80064F38BF6851F783",
      INIT_34 => X"7A7269812A3E7AA2BA95F9CCBF462930827149FE1B257F8EF78A0DEFEF311329",
      INIT_35 => X"3FCD6F066E3773CE17CA9CF0B6E85DC879F1BE644C51D5C4EDDBB09B4FDABD74",
      INIT_36 => X"6E5389E438C20B7CE391E6818AEA316B234BEEDF36D80B40B7E51E66288CE38A",
      INIT_37 => X"51DC2043E16BB770D82C8DF07E719344B1C9B947B0D35282B23EA065E5FC794B",
      INIT_38 => X"9D3F11E1417DCC0689DBD2D4C0BD573F1269BD9312866B57DE868713E9652500",
      INIT_39 => X"F106CC3B2821E010C844F5C4BAA58C137EA141409DCCD181FB7A83932DF4B15D",
      INIT_3A => X"AA2FC1A82FC68E6ED69C44A7D6F5353BCD37550964D8719424A30E004B75E609",
      INIT_3B => X"FF628267DF7DF8DB8EFB68FC0E6E65C9A741F8C523D19DC24A44031CD3496CF7",
      INIT_3C => X"0B390818AAC9BCDB35EC0EB738A1676165BE3978AEA89BCFD42BE3632267D58C",
      INIT_3D => X"71C5A961554203E53C3475B63D0BCC3912CD42A061C3430A677431CBD0706248",
      INIT_3E => X"89DD8803E4BAB574909C4AAC626E0A65EF76E2995174EC69C1D3C15E8E242E07",
      INIT_3F => X"DAC7FAE9095659B350814DD4757FD35D9DDE100CD83C3BEBA27F20CAFE52BA4A",
      INIT_40 => X"3F4AEA17C50FFD3B52E91FCD6CEDF83120A7C22E6946F2A5B2B4EAD855CEE955",
      INIT_41 => X"087D0E6F979A2321637AC698BD2141BDC3CDA7251D8FD78AFB33F57D3C243BAE",
      INIT_42 => X"10116788B49C1FEACFD219F271E3F0F71FF473F153C37B02842211B6EA5221EE",
      INIT_43 => X"8560DFD26FA74EF288A40763CE02ADB11A46E85C776B529613810259C9CBD353",
      INIT_44 => X"9172C98410CA47CC65AC946F2988655A4EE26500B83B6A12FDE1DABA9C76DE11",
      INIT_45 => X"6788A1166928BD5C55FE65469A7763FD8ABF470AC9ADCF84E86240AC700E0EB3",
      INIT_46 => X"097D97A0813007E338179C2F675B0FB8281EA988D80F87B89FD0B4D81ECCD5B3",
      INIT_47 => X"D409D97076137A2DCA56572B25E7B332B477B00E79AF213A2BCB966EDDBF8D87",
      INIT_48 => X"63C4CD4062D61306AE0495E940CEF3BECE293137636E8DCCF49C8626805F027F",
      INIT_49 => X"6A60BA3DE7590DED3A67CD29CE1D25C74A6326702DFD351B17C4F17D27BAD446",
      INIT_4A => X"58EB55911A8EBD4C4A72A222F4BD35B7C8D888E90E3BCB09DB78A75C9EFA8E71",
      INIT_4B => X"33ECB5E926393B23015D4894E5C612462FDF6CB5111FF9686598D3E8B6EC4502",
      INIT_4C => X"95AD617CC7AEBC5DCB36C53F85562ACF399C904453C0BAB5A888B1CB9DE1D3E4",
      INIT_4D => X"C1F13B695B496CBE8E4452B47A5446BA12CC0238B5F25D8F53AAB4135FB872B2",
      INIT_4E => X"054A7344449D350527861AF84B0A99FE2B1CD1A053586C12573C60CCC6695CF9",
      INIT_4F => X"B219A0D72717DC4845104E09D5B142BDF857C0B089B6A2126AADD4057E421BA3",
      INIT_50 => X"5AE40623E724E3B1C03E7DFBF3CB8C041EBFA25CFF2EC79DAF060781B72B3D35",
      INIT_51 => X"FAC4D5E7FA7AEB861066045257B5BED93DA6B747EF617C9BEDA3CA0255818F51",
      INIT_52 => X"2F6EE15D812B46FC830CDEDF1351C7C2D54DA03547938EADE0AE4A2887F8EBAD",
      INIT_53 => X"DA6232BD47C3A3779E5A3E306F2470971D4BDE95DC2362345003564409298A59",
      INIT_54 => X"431BEAD2E6C6B2C9D156EF87835FC5B740643D34C08B3EDB83441C7703233272",
      INIT_55 => X"CCA0AA0692AEC0E8F17FB3BF000F1274D9FC6B4A19ACD63F376164D29563FC77",
      INIT_56 => X"42BC93C224AD46B404B52DA45BAF9CB1766A257326047025C17D28BB8FCBA0F8",
      INIT_57 => X"443A691A670FD868500489E2B9CEAAE3DE3A8AC8E127B48041509064CAEFF821",
      INIT_58 => X"1909C00EFA4BDB2CC04A067412A920BC6C3E04CA7A3DE69E6C61B239E965B9CD",
      INIT_59 => X"6319E6937A417C61AB58A99F2E7510E76B22ACC8E52040C3A13F0EBA834BEF7B",
      INIT_5A => X"C5E71ACFFC4F05C5CBD5D78C81285FCD74A429A688334C3E39947E9A8E75F008",
      INIT_5B => X"FD68B38C6A5373589A28E6FBB79F37F447BDA4E47B84CDB252AD1E6E0B9636E0",
      INIT_5C => X"9DCF21AA8C635C40B77E54265248E74ACD9AE17924EB6EDABCD3E233BCAA550B",
      INIT_5D => X"88E32C1900DFCED5E5089FB58C90737EEEBAD3D723DB44F4B020A0239FAD54D9",
      INIT_5E => X"06C38A8370AF1FB6D5FF7D4A8B1DD7436EE7E4B0AC2AB90C259479B381721923",
      INIT_5F => X"9AACC1DDC45BA313C866A82171DFF7CE1DAE0CC09C4C44046C7F690C0B77C6FC",
      INIT_60 => X"8C28183E26406EDC964377ACA75ED9EFF9FE8C98076C35CE7FBC8657948CACAE",
      INIT_61 => X"4B8134AAA2585E044DF2E5D27EE7C2068CFCB8A7EFF0DFFF9424A19F16431B90",
      INIT_62 => X"1025A74E391B7C1674A964BD432CB30E18EFD50B44314D9A86A0CC2EBDF04994",
      INIT_63 => X"7F92E09C2E85AA97F0B24E4352E54AC75C85D19C4A62B96219C5191DDA4ADBD0",
      INIT_64 => X"816EAF64A58D4E36F3EF9D0EFC546064FF3B4E1907FAF602ECD46ADFEDFAA47C",
      INIT_65 => X"E52EE1FDBD18742D8A9B2BFFCFAE1B97D965C51840B3A66964A03FC85C5EF9B8",
      INIT_66 => X"B0E6696CFDA257F5EF13E7EC50A56F0AAC157BFD98CEED7FF136C2B421E55777",
      INIT_67 => X"E4F8E46766101D45A283F1A6DBF6A2E38A671EECC90F81795508D84A8C879C7B",
      INIT_68 => X"019D451395FD862189254CA012524002B07DF7802A53AA5B8E4BA493FAF8D58F",
      INIT_69 => X"1E7621ADFE77FE81FC8AD560DAC3A5DD57D76C399BDD74A2283EF00798518C9D",
      INIT_6A => X"906150514F732850E433F2110DC5521254A7F8987CFD8ED2F810B081CA82B1E4",
      INIT_6B => X"1F15F9C8C553C7B6DE49F4063211A08C614CA5C54B0FC78CB6E28E8491604593",
      INIT_6C => X"5A9DBFBB64980A7C2786DAB141226056695084C0BCAFFC81F323B13086494B6A",
      INIT_6D => X"EF93D2736D1F0238A39697AF81A76B1BA70ED46D56C10150B4AC6EF7B7F8EE6A",
      INIT_6E => X"358C30E20DA63CBC0D7F634A517A2C8CFC20CD3A383F1A6219E4501592E306BD",
      INIT_6F => X"EB1DC9E7543135D07E1AF221898705A675EBD30DB72D6E0B7B9B2588F1526567",
      INIT_70 => X"116D94E78A33FBBD4EDC1DB5419A23FD1EA4379607D208CAB18E3902D4A700B7",
      INIT_71 => X"F77C63D4684CB50B36909F62680B04148CF68D35393FC21069D40A1C4F61E358",
      INIT_72 => X"3BA6364A2C5D2E00714E3F88E563A5599FC6EB3243833060A2029792E1F5237F",
      INIT_73 => X"A343B19CFA63F4B7A697573A380090F698EB5363A0025E4595334270440C0CB4",
      INIT_74 => X"E5874526BC61C1835735D0A96DC1D09F83D889408525346ECCA26BE9D0606F1C",
      INIT_75 => X"01009AE11BEE5E07227B59276EB758D2464F76161150982ECF69BE58693DD5A1",
      INIT_76 => X"B48F2AB594292807ECA463DB573C3DD314241CC03EADFDA9AA0458642AABB58B",
      INIT_77 => X"488536CCC1EC3915497255AFE34C699717B9016059D9A0FED907EAE7D38C46AC",
      INIT_78 => X"D9E08A34B9B4573999DA2EC542E6098204D154FE5494B585C5146E7D9EA89754",
      INIT_79 => X"378E863FEA0C6235230A441A1E7D343DF612F30792279EC35724CAF62547F9E4",
      INIT_7A => X"2E49BE51EFCE7ECDC224EDE9BF3DDDFB12FC4C887DCD584FB8F60007E85CAD0D",
      INIT_7B => X"E64B29EC8F746AD3F831D045C7F13FF22A05898B7D9594FE643A37BC8DE4986D",
      INIT_7C => X"F5E0F140F53991EE992C88AA9E5657D86DA4214A7D9AE94E429E1969234D1405",
      INIT_7D => X"D65F603679DB3E6FB7A372406A6177DE2EED766E12CEF21E197F924208EB6A66",
      INIT_7E => X"194DAAFF3BA8CFCC183D3F2A4E6B1768D86CEDD309C1B3C65A1E725B99139E0D",
      INIT_7F => X"B1BE9A5ECA9B810E16CE32F21036C6CF1BEC8DC728DE0C6CCDD1B78D1E5370D4",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => addrb(14 downto 0),
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => dina(0),
      DIBDI(31 downto 1) => B"0000000000000000000000000000000",
      DIBDI(0) => dinb(0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[2]\(0),
      DOBDO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => \doutb[2]\(0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => \addrb[15]\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  port (
    p_39_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_38_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized4\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized4\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"DC00675F811CC59D12C2A608FDA3F4383B843F383B421FC3CE2E4E4B17CEC7B3",
      INITP_01 => X"08F97FF2233C73DF8BE804C4D19A0F49F0F239C1EAE0661F37DF68C4C1E467C1",
      INITP_02 => X"050621A7D7F98B95980B89C8C77ECCE1E6E5F1BB01A889519BC97F3497FFF09E",
      INITP_03 => X"FEE1B56DFC6059811E733B09FFE61F76217FFA6FF6500C130B811B9CFC7A0160",
      INITP_04 => X"66ED34B67E03CD00C87DD27793AA40F9FED0BBC4B9CE61F560787FC2C75B812F",
      INITP_05 => X"4E6209F397276720B00B04F110FF31BC7E86C679FE6BDA730EE19F607FFB3DD9",
      INITP_06 => X"8589CE2380FBC70BCEA5900830C7976783F990BFB467788060198B9359438FA4",
      INITP_07 => X"2A61CA176B67061C30ECA17EE96C729E0817CB070B777500FE23FCC6219FFF87",
      INITP_08 => X"66453EDE5107245F1827C61C71381F8F100F0E0B0A0EEC4CF224F329A93F11D5",
      INITP_09 => X"4271F0F3EF9C003D07F1F2360603E091D85BF707F0BE079D7C2179B9CA19C9ED",
      INITP_0A => X"4256402FDB1EF2E0631CF20007F33EDFE67F34AC141D98DB8C8D49F9FCB2E584",
      INITP_0B => X"9987E29748CE696FC9823BC12C05CCCD90898103CE7B00D206C8D34A16E02438",
      INITP_0C => X"E3FF04CD324786006856018E001E05E70F817CBB7DF6FF8FB2EF3E0C0C2E0C04",
      INITP_0D => X"CA9B251400C1C4F987CB7F91F70274200FDC1009C38F1E001C0C1C3CA698B4C9",
      INITP_0E => X"13FC081FF7207E16D99DEFAD252421681F0E7047EF8E7B763D31E181F8609DC9",
      INITP_0F => X"5807681C34F0C005F64CAFF19F0980C33FBEB2120E03216DF3CA635B1EBA1863",
      INIT_00 => X"090203FA17F8FBFBEEF51822FFF4F506F7F6000807F7F6F4F700FAFE0505FCEF",
      INIT_01 => X"E1EC0D06FEF0FC0A140CF700EDFEF10310F50C14FFEFE30801F20404EB19FFF8",
      INIT_02 => X"0902ECE9F802F2F005F9060E0C0EFC070B1110E8FEFCECF5FCFB05190102F3EF",
      INIT_03 => X"0D01FBFDF603FDF9FE00000D0AFD04081006FBFDF8FCF6FB0910FEF3EC0B0203",
      INIT_04 => X"F0F6F2F8FBFA02F3EF08FF010D07F9ECEFF3EFF404F4020A1505FBEEFA06020C",
      INIT_05 => X"01090CF41200EF06F3FB080E0100F408FE0AFC000CFCF8090F080F03F90B1100",
      INIT_06 => X"F60A000B08140AF503030FF8FAFE0F01EAFA000D09F604F3FD0A07F8F2F506FA",
      INIT_07 => X"F0F806FBF7FE08100A0C10170906000A09EAFC1704F5EEEC04FE06E8E7FDFBFE",
      INIT_08 => X"F3FE051A040B0BEDF4FBF70004F5000D00EEFA0411FEF9F9EBFE080C030709F3",
      INIT_09 => X"0200F8EB00FAF1FBFFF606FCF6F0FFFF0CFCF105FC000B03EEF00A060CFE0804",
      INIT_0A => X"FBF4FF0AFE09FA00F7FCFA090F06050006FAF8070EF3FA08090702F8EAFCFBF5",
      INIT_0B => X"EEF0EEF80D000704F7E5E6F11108F409080AF3EFF90A04F5FEF5030414150BFA",
      INIT_0C => X"DEFA09F1060408F4F6080DFCFB06F8050F0B0904F9FCF0F200F70605FA070BF0",
      INIT_0D => X"EB020D01F901F5FCFDEBF40EFF090C040C09040B07F3090CF6F9031303F60907",
      INIT_0E => X"0A0AED060500F6F81106FFF3F1F3060904F9FAF30C0DFCF3F9FB01F0E9E5FBF9",
      INIT_0F => X"06000609F60F150AF4FAFCF7F3050EF705F9EAFEF8EEFCFBF6F5F8FE0703F101",
      INIT_10 => X"EE1F0AEA08FCEDF6F9F4F7EFFAFBEBF1F3F6F6FF0B0F0903F5000DF2FCE8F809",
      INIT_11 => X"FA0503FBEC0EFEE4F6F6000DE80007FC07FFF4FEF9F6FBF10601F0F607F70A03",
      INIT_12 => X"020D160A0D201CFCFF04FF09FC0C0707FA0C0504FB0001EC12EC01FC070C07E9",
      INIT_13 => X"FEF6FF0403F1EF05FEFDFE0903F30CFFFAF9F3F312110BF2F310F8EBF103F8F1",
      INIT_14 => X"FDFB030D00F2EBF803FBF8FAFFF2F408FAF9130CFBF60507F7F8EF01000401FF",
      INIT_15 => X"FA050AFBF106090502010501FE0DFDF2F6090501FC0002F6F8F80A0BF8011B00",
      INIT_16 => X"F4FB02FC01FBFBFCFAFDFAF9F9010BF9F2030800F70CFAFAFA0A0BFB01F408FF",
      INIT_17 => X"0A1E0A100AFB01F9080B0B0104F7FE0E0200F304040215FAFB09EE0104FBECFE",
      INIT_18 => X"E6F8FFFCF8F5010B0BFAF6FFF506FA080E0806090B0601F701FCFC020B191703",
      INIT_19 => X"03150B0FFF09F8F2FD001405040A00FD160700FDF304F9F9F10908F8FBFA0003",
      INIT_1A => X"F0F4F9FC05FFE50802F207FC040B080500030C05F9FD030A0D1305FA100CEFF3",
      INIT_1B => X"0D0AF80F0B0502EF07F8F5F1EDF0EFF5F1F5FBFEFF03EF0602F1F809F8FFFEF9",
      INIT_1C => X"F0F3EEF3F9F4F1F8F6FCF5030CE9F71804160FFDF3FFFBFB03FEFBFF10F7FB01",
      INIT_1D => X"071B05F7EEFFF30613EDF9FD0D05FFFF090CFFECF502FCED00170104FE0105FE",
      INIT_1E => X"F7F4F9FBEAF50A0703FEEF05070A030403F901F0F50711F9F6110C05010504F9",
      INIT_1F => X"F4F5F5EEF4E5E702EDDEF9040D0508F8FC04F0FD09F700FD06EEF407F8FD0AFC",
      INIT_20 => X"F9FB0C0B11FAF8FF0DFE0EFCF60CFCF5FA00091506180CF90B06F604F9FCEFFA",
      INIT_21 => X"04F7F40810070E0A03F3F5EFF408141213FAEBF2FDE9F8FEF6FF00080807F807",
      INIT_22 => X"FC04F8F6F11103F4FEFF0506FDF1FB0305FDF51006030CF7FEF7F5FF04FF05FE",
      INIT_23 => X"F1F2FCF9FFF1FB0FF9F606F6031B1807FA0CF5FEF813F6F3F2FF0B0E01F9040A",
      INIT_24 => X"FE0201FE090CFCF8F202F102F000FE0D01F6150501121407F5F7FBFDFC0303F9",
      INIT_25 => X"FEFA0302FB0700100FF7FEFEE9F603FFEDFF03F60309FF0003FFEDFA09FCFAFA",
      INIT_26 => X"02EBE9E4F3F8FD010F161C1D0D01F5F8E9F91006F8F600F60C0B06091D0B0F00",
      INIT_27 => X"05FBF60304EAF600FBEFFC08FDF80AF80003F0F909F50104FD09FCF901F9FD05",
      INIT_28 => X"18F7FDFAEEEFE6E8F9FCF7F7E40DF9F5130FF6F9EBFC0AF4EDFA09FFFE0E00FF",
      INIT_29 => X"03060A04F8F4F805FDF7FB06000606F5FA1810FCE7F3FEF600F8FD0D10030D12",
      INIT_2A => X"FCFFF0F5FDF7F00705F9FD01FE05FCFBFFEF04E7F107FD0304F5F0F80307F9FF",
      INIT_2B => X"02FAF6F7F4F3F30BF7010C0210FCF405FAF909020CFBF20103FAFEFCFB0303F9",
      INIT_2C => X"000C11FD0B0D0513FCF3E9EFF7FAE8F40306F4EF000104F3F808FBF9FFE3010A",
      INIT_2D => X"FE06F8EC0014151A01081A01F106F5FA090A0A0708F70909F1FFF5F603160FF5",
      INIT_2E => X"F50C04FE0FF2F0FC0508FD0000F2EDFE03F7ED0308FEF3FE0906FF000F060604",
      INIT_2F => X"15F60110F1F7FE0E0BF1F7020106F301030C0F10FE0A04FFF5F4FDFE0A02F5F9",
      INIT_30 => X"0EF901FBFD0002FA01F910030A04FFEFFD080B0AF1E2F9F6FC08FC0006FF0C0E",
      INIT_31 => X"03EDF005081303141E0900F9F20418F5EE000E07E903FBFAFA0703F50308F8F2",
      INIT_32 => X"F906F5FC00FD03060DF9F40D04FDEBF504F8FFF2F80A0F14FD12110608000C03",
      INIT_33 => X"F80D08080E02F0F8FDF7EFEEF8100CFAF8000FFE00021B0FF103FBF9F1F5F0E5",
      INIT_34 => X"090FF4F20A010C0AEDFA020909FCF6FAFE0D00F503F5FAF001FAE50604E8F9FC",
      INIT_35 => X"FEF70B05FDFCFA12F700FF090EF309FFF80100FF0D0812100D020D00E4090705",
      INIT_36 => X"FC0C0C0E060F0904F8FDF8EBFC0AFFF7F9F805120CF8ECF10C0F1105F905F9F1",
      INIT_37 => X"EB0004040DFF04FFFE020706FB1203FBFCFF0A08FEEFF2060D17FE040C07FCFB",
      INIT_38 => X"0A08FF100C0804F6F00706F3F7F7F4FCF2F4FCFFFDFAF3F2FE030B0B01F6F9F9",
      INIT_39 => X"F7F7FEF7FCF4FE001C00FC050001FDEFF2F5FCEEFAF20A15F8F4020401FDFF00",
      INIT_3A => X"01020807FE05F9F80BFFEBF704F0F3FE01F7F5FF06FC07F80001010509020607",
      INIT_3B => X"0B000E00FA06180D0F1000F301FAFCF9EDED0605F004F3FA2307030100FDF5FE",
      INIT_3C => X"FFF9F602FC0B03FE01FCFC02FEFA170406F6F3EF0D0EFD02ED020EF9F6FEF206",
      INIT_3D => X"0F0EFAF8030E0B09F9FBFE01F6FF0705F807F608020412FB01FAFEFCFDF1E604",
      INIT_3E => X"01FEFB0FFC02F8F909FAF30202F9FCFB02080A0608F9F6010A0C0DF7EBF90703",
      INIT_3F => X"0200F90DFF00ED1A08F3FA0107070AFFFBFA1B05FF0DF9060B0D08FB00F4F7F5",
      INIT_40 => X"FB0EFC06FD040DFF0008FDEDEAFEFAF4050F08F3030000FFF6FA00FE07FC07FE",
      INIT_41 => X"FFFFE5F40711FE0B0A00FE0B03FA0001FFF7F1FD0507F7EF0313FE06F30306FB",
      INIT_42 => X"08040F07FD06F20C0D0C0902F8EBFF03FFF6FC03FAFE020410FE0005EBE91001",
      INIT_43 => X"090B0CFB070F070200030A05F8FFF1EF0908050FFFF4FE00080E0306F906F6F9",
      INIT_44 => X"01F4EFFA000D09FE0909FCF2F007020203020EFAFFFCFAF7F60E0E02FFF3F6F7",
      INIT_45 => X"0D0501FEEF0A0901110CF40102FEF6FCFBFB0C0206FEFD090B0200F8F6FC020F",
      INIT_46 => X"09F909F7090B03F00807020008FBFFF6060AFF1D0AFD0A100AF006FAF4F7F2FD",
      INIT_47 => X"04FCFF0608FCFD0700FD0C0106FC05F9081EF7E9FEF2F206FEF603FEEAF7FE00",
      INIT_48 => X"F5F30809FA02F607040506EEFA0809FCFAF10C04F10305FFFFFDDE07FDFE00FE",
      INIT_49 => X"00FAFBFCF5FB010E0503F904010E03F70EFAF1FEF10511F9FD09FBF8FB0007F9",
      INIT_4A => X"E8F4F5EC08100203FB01F4F2F3FCF9042013170603EFEEECFC0A10FBECFE00FD",
      INIT_4B => X"FAF80AF2F503010504FD04F3F317EAEFF9F0FFFE09EAEAF810030C0E05ECEEF3",
      INIT_4C => X"0206100207FEFE0B0A0C190E000CFFFAFCFAF604120A0C15FE0705F9061108F3",
      INIT_4D => X"08160F0F0BF9F8EFF8E8E8F103130AF5F9FFFBF7060AFC020F04E7FA0AF2FF0D",
      INIT_4E => X"F7FEF404FFE8FCF6FC0606FEFDED090F0D10040805070C080201F6EEF6EF0CFC",
      INIT_4F => X"0CFA02020405F10107FFFDF4011B0AFAE1F6FEFA0C030B06F5FBF1FA0B0CF5F5",
      INIT_50 => X"F6F4F9FEFFF40602F802F8F9010FF707FEFCFE0102F901FCFE05090E10FC0B10",
      INIT_51 => X"F3151104FAEE070CFC040E05F9F501F606FE0714FA080FF3F4EDFDF8F20F06F5",
      INIT_52 => X"040102FA10EF070C020603FAFBF701FFFD090CFFFE010D07FDF500F7FD0DFEEF",
      INIT_53 => X"E6FDFD0D05FBF80D01F3F6FCF3F7EDF40001F1FE07F30701FB0BFB0BF8FE1A0D",
      INIT_54 => X"03020B0304FEEBF5FAF1EDFA0A03F1F70E06F6FEF6E7F606FDFB02F9FFEEF2FA",
      INIT_55 => X"0DE9FF080403F1F30F0500FFF4F90A0CFBFAF6FA0401F0030102000707070506",
      INIT_56 => X"F8F808F3E002FFFF01030AFBFDEAFA0BFDFAFBF50001FA11F9EBF60800050110",
      INIT_57 => X"0BF7040B0407FE0206FE07FA02FCF80307FC040808090B0B000CFD0BF9FBF4E5",
      INIT_58 => X"02030AFB07FBFF1DFDF4F508090304160808F60C01FB1307160DF1FDFC0C0E0C",
      INIT_59 => X"050F001208F0FF02FAF90708F8071101F0F502F10902F6F801F81008FF0BFE04",
      INIT_5A => X"FBF70C06FDFFEF0A0BE9E5F1F810FBF40A02040A0016120DECF30BF30803F801",
      INIT_5B => X"EF0303F70312120EFF050902EF0607F3FE06101E01080AFC0E0A05110A07FEF3",
      INIT_5C => X"0B03FE06F2F6110A0104050E0DFE00FAFAFD031AF3FB1100F3F71104EEEC07F8",
      INIT_5D => X"F4F2030BF60706FAF80410070308FE021601ECFEFB03FCF6F3F701070A1209F4",
      INIT_5E => X"09FA090DFF03190BF3FD0F08FDF5F60813F3F407F30803FE13F8F002EFFAF7F9",
      INIT_5F => X"F9020BF3F40E0FFDFE26050917F9FFFEFDFAFB020413FC01F00002FB05F0FCFF",
      INIT_60 => X"05030002F8FD14140705FD03FBDDEE0202130B03F8F9000C0608160A0FFD0600",
      INIT_61 => X"FA01EEF20015FA02FBE9F204F9FFEAF90300FFF2EFE2FD0607060B09E5F50303",
      INIT_62 => X"09FDFEFEE9F416F6F8FDE0EC09F0F607FCF2F2F3F8FEFFFEFD08041AFEF6F9FC",
      INIT_63 => X"02090802FCFDF7FBFD080202080202FF08F6F3EDFAFD0100E208F8FFF911F6F1",
      INIT_64 => X"0A0A1B0406131515040503F6F5FAF0010307171001FB06EFF5FDF90412F2FCFB",
      INIT_65 => X"03EDF704FE03061100FC02F401FCFD040E120307030602EEFE0C0B00F7F3FF1D",
      INIT_66 => X"0705FBF3080EFB1403F9140B02FBF6F6FD16050405ECFB0C030B000A0A070A12",
      INIT_67 => X"F9F3F600100CF0FCFAFAFCEFF8F9FEFC0C1C020403FE080DF6FD010BF8F307FF",
      INIT_68 => X"FC0DFD0107EFFB04F30914EFE7000B06F903F2F700FF1405EEE80D01F90404F9",
      INIT_69 => X"0B180BFDFBF5101A0B080807F8EF010B0A090FF4ECF9010D0602F8F7FAF2070F",
      INIT_6A => X"F4EC06050007F0F5F3060900FCF6F6F70B0A0FFBFCFAF709080A040B12060708",
      INIT_6B => X"07090404FCFDFCF2E6F002F4FFFC0B0E020308F5050C1208060A080FFF0B0EF5",
      INIT_6C => X"F2FFF3F500FFFBF908030E050707F80B07F9F8F806FB02060B04FE0A070D0701",
      INIT_6D => X"F502010C04F2F6E2FDF5060CF20DFAF604F4F0FDFFF8FBFCF41904F9050704E9",
      INIT_6E => X"041812100E020F02FCFD070E080702F9FEEC030A0BF50E04F1F6F6FCF90002FA",
      INIT_6F => X"F4FF0D06FB07F705FA0718F2FE08F8F50604FE0602FA00EE0A1106FF00FF070D",
      INIT_70 => X"EDF6F9F6F9120B0603F3E70104000900F90A0FFEFEFA0AFAF6EE0B05F40507FB",
      INIT_71 => X"1A13EAFCFBF700F60A00FFFB070C0BF9FAF8FF17060C00F5F8011418121403E6",
      INIT_72 => X"F6F3F80BFEFBF4EBFD060910F1F9FD0E01EFFFFDFE0AF8F810FAFBFF06FCF702",
      INIT_73 => X"070405F9EFF4F6FD07000805E4E4F21316FBF2FD0201000208FC04050FF5F5F5",
      INIT_74 => X"0208FA0C02F816FF0805FE0707FB0A070D07E50406010AFD19F1E610FA040103",
      INIT_75 => X"FCF807F7F70006FEF40503F5F2FF01F6EFF6FC0DFFF1F7E7F316FA07FDEC06EF",
      INIT_76 => X"F6F0FDF605FEFDF40101EE090D0214090EFFF5F8F1ECF701170400FF0EFBFB26",
      INIT_77 => X"061506F40304F5EFF9FCF9FDE9F9020101040808FF000301060701FFFAFFFBF1",
      INIT_78 => X"0C090BFCFBF1F902FB05EFEFFB00FE09050400F3FA0B0B0D00F4FE060800F4F3",
      INIT_79 => X"F4F8E5EB0501F9F8F9F60804F800FF0507F3EB03100FFFF207FE0CFBFE04FFFF",
      INIT_7A => X"0A071D0FFEF7FF00030013080804F2EA0209F30709040CFD14F4F800E4F204FF",
      INIT_7B => X"000BF9F9FBF5EBE0EF05FEEFD7F9FA00FE07FFFB070CFC01030702F10904EE06",
      INIT_7C => X"F90209FDF3EEEAF602090405FC0802F8FC000A0A0D050101FBF70101050AF2F6",
      INIT_7D => X"FCF4F8FB02F9E80A02F7020DFEF00C03FE07F800FAFDF7FAFBE8F4F9040C02FC",
      INIT_7E => X"0605EFFE0AFA0503FDFCF5F000060904EEF90701041105040903001102FE02FC",
      INIT_7F => X"02F502FEFE0203110912100404FEF0F704F8FE08FD000B13081206FDF6F40D00",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => dinb(8),
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_39_out(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => p_38_out(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_39_out(8),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => p_38_out(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  port (
    p_35_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_34_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized5\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized5\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"AEC200F9CD98F80399F18E071C639FFE6F7F19E3881CE7C0A44B324B352480CD",
      INITP_01 => X"65CC2107B3B6A91FB10FCEE001AD271B0C776C9927F96787C23E7F3E6FC12061",
      INITP_02 => X"C0F7DA00B3681FC6B9E73307015E0700BC4C3A70CE870FC00D46C9795CE27FBE",
      INITP_03 => X"6C64875A86DE48431D892C48323D79CDE40FDE7DE8FE5F8E0B204A6063F83C03",
      INITP_04 => X"599BDB98131C70C02FF7F018E7C0006970E206800E061DFFA643E4C1FC341FE7",
      INITP_05 => X"B200C23FA1BCC727D3D6F1DD4E41F8C2B863441BDD34BF0FD6F70E0AD1C10F85",
      INITP_06 => X"519D67FFFEC49FFB067F7204470839FDF2C9D830D9E3F9E7C9E81698E88A7887",
      INITP_07 => X"6322270A0CD2BDB18607E9BF30F6E5E2CA98245B41990EDB328E0214C09F9DC3",
      INITP_08 => X"12C3FCDBFDF07A0D83F58915F87185E83B07A4AF7F9F973BD8E7E0FFE8323DFF",
      INITP_09 => X"826701BEA18E4F05C679BFADFB11830C31085CEDD360E71BF06F11E0FCE1E136",
      INITP_0A => X"1E5D2183E1CF74DE12F03E6396C735661F403390760388E06E060F2384E1100D",
      INITP_0B => X"124304D469913666C2D798939B6F00C9EFB18D07CF30067B9507503FF6710347",
      INITP_0C => X"5ADA78911FB8F6CCE16FE740FA647E7F7F36064EC72599874EB9342C00C3A910",
      INITP_0D => X"90148B1BC10034E7E7DDE21216125F4663C6CFEC7FFED4730202010A0766B451",
      INITP_0E => X"2C960C726AC0027936187E1F9F64A328709F9808086823F463C93EEC008DC60D",
      INITP_0F => X"E7C60D37720F79912E42C01AF3A033C10B85A7902772E80CE26CB6C85C1B3F60",
      INIT_00 => X"0103F8FA0BFC01FC0402F2120EF80605FE090E0A05000208FFEF0104F7FF00F7",
      INIT_01 => X"F80DF61B19F7090D05EF0804F50BFEFA0E05F3FA0903F70802EA0B02F401F7F7",
      INIT_02 => X"F5010501FD020B0D070E03F7FFFC0508F7ECFA0D03F6FBFFEFF30603010E3007",
      INIT_03 => X"0FF4FC08F9EDF1FC06F1F4FDF5EDF2F60E0404F2E80106FEF0FDFF0F1E05F2ED",
      INIT_04 => X"160004FFE7FB100B00F6FB030901F1F8F80207F2F4FBF8F8EDF0ECEAFDF4EC02",
      INIT_05 => X"EF020DF8EC0710F3F5F1ECFB0B1309F5FE0A0B05F3F5F4010D0D090700EDF0FF",
      INIT_06 => X"FBFA1106FAF804F1FD0604E9E60E1105F9E9F9E8FE0A0A070F0A0F16160EF2FE",
      INIT_07 => X"F90DFD07F7EFFE0BF9F0031C141CF10812010605060D0E05F9F9FCFCF7020CFD",
      INIT_08 => X"0AF9F60BF8F3FDFBFAFC0514070E22FE0312FF010700110303FBFF0819030DFF",
      INIT_09 => X"FBFD00060204F701090BFEF2F8F8F60804F8FEFBFBF7F5FC0912F8F0F1F2FF00",
      INIT_0A => X"1003FD150DEDF2FDFDFEF4E1DC0F0CEF00FEEA0001FFF4F9EF09020306FEF8F8",
      INIT_0B => X"0D111301F7F8021709F9F6F909F6EAF50CF8F502FFEB1208F3110DFCF40001FA",
      INIT_0C => X"08080216100104F6FF04FF12FFFF04F4060BF4030EFADFFD090603F9EA01F6FD",
      INIT_0D => X"F70FEFFB101000F50B080205F3F8E6EEF4FF1304F4F7EB01F8F5FB0705070408",
      INIT_0E => X"F812F2FE0D0DF2E9FE01FEFC10FEF800F80BF907FC0106F7110E03FEF2FFF4FA",
      INIT_0F => X"0DFDF90B03F919FBDFF30607FBF802070A05F703080901F30503130F09F1EBF7",
      INIT_10 => X"03FB09F8F1FD120CF1F3FC080B01F90A11FBE8EEFBEEE9F3FF03FEE8FBFFFD0A",
      INIT_11 => X"0E0A090BFBFC02FD02FA020D01F7FC03FEFD0105EC010DF803EFFFF1EC0A15FF",
      INIT_12 => X"EEE90008F5ECF201FC190C0A01FDFEFE0F010505F2FFFCF2FBF710120A020A0D",
      INIT_13 => X"FF19F9F0EDEF050B18FD1515EEEC04040105FAFFFE02F00009F6F9F1040B0C07",
      INIT_14 => X"121A0C080F0304E908FA00EFF0FFFE0B010410020BFCF4FD0B0B09080E050116",
      INIT_15 => X"FB01F7F6F90B01EFEFF6F80309F0F3EB0614FDFF090EFEFD020002110BFAF8FF",
      INIT_16 => X"FB09F7ED1211EFF504F7FF07F112190A120D04FCF7F6F3FCF9FD02040DF5FE16",
      INIT_17 => X"F5FE02020815090FFEF6F2FB05F8FCF2FFFA04F2F002FE020106090E010C0305",
      INIT_18 => X"11FFF2090B0CFFFAFDF8F5F8F40602060200FCFEF3FC0F1219161D1D0F01FEF8",
      INIT_19 => X"13010903F402E8FA1000FD030413120504F80000F903FC020EFEFB0306091C13",
      INIT_1A => X"F5E9EE00F0061605EAF8F6FEE9FCFC0E0FF608FFF6EFF1F0E3040F00FAF6F705",
      INIT_1B => X"FDF9E80402FE0209140E0607EEF5F9FAF2FE07F5FEFFFF080FF2EBF7FBFD06F4",
      INIT_1C => X"0502EEFF1D14FF0E0804E7F1F3FB03FD01F9F8FEE00B01E9EAF8090EFDF702F2",
      INIT_1D => X"070602F3F3FE02F8FF090A01F60103E90602FA01FBFE030A03FF180DF9060504",
      INIT_1E => X"F714040D07F0FE05F6FB07F3ECFCFD0401F80608FF060A1A0EFD060B140DE9F1",
      INIT_1F => X"00F3FD01F2FD030D02F1FE1001FB1005FF00090401F4FAF402F402F6F200E600",
      INIT_20 => X"F9FFFAF4F2EF09140D05F0F413FE0005070300FBEAEBF7F7FBF3F90A07F6E7FC",
      INIT_21 => X"FB0CFE0004FAFB0E1CFC0A020706F5EAECF0F50915F30600F4F709071A0812FB",
      INIT_22 => X"070D0F18FEF5FB180A0A05110DFCEB080F0D04FEFCFB05FFFDFDFDF9FDFCF6FD",
      INIT_23 => X"0CFDFEFE0D110C0CF5FEF6011809FA131A0D060406EDFF04F504070A0B04020B",
      INIT_24 => X"F8F2F00502F3FEFBFFF6070B0A11120A0903130D01080D0501F8F101FD020EF4",
      INIT_25 => X"1205F905FBF0FBF2F8FEFCF403F1EFFDFAFDECFC000A130D0B0603FCF1040D06",
      INIT_26 => X"060702FA0105F7F90E0E07EEE2F902010BF4EEFC06070913F9F20E05010B1509",
      INIT_27 => X"03FE08F1F80701FBF91505F3FC0AF5FCFCF803F9F901F9EEF50400E8EF170C05",
      INIT_28 => X"FCFC07F90A0002F7FBFD0D080B1B0DF809070305FBFCF6E8FB030D0003FD03F7",
      INIT_29 => X"FDF901FC06FAF90DF3FBE4FF1AF4FEFB05040809FBFAF70101000707F20DFE03",
      INIT_2A => X"F7EE0EFEF9FC01F40403F9FF04EC0604FC06F8FAF7FBFDF915090205FCFCEFFD",
      INIT_2B => X"FC08F9FFFB07000204FBF6030809F7F904F9000609FF0301090E0AF4FD0AF2F4",
      INIT_2C => X"01FD020BFCFFF20503F8030A041000FFFEF0F5FCE7051801F9EC0109020AF50D",
      INIT_2D => X"EEFE00FE0100FBFDFAFD04FC0CFEFD0DFDFEFCFF07060DFBF5FD04F9FCF800F2",
      INIT_2E => X"F803FC110F0B09F9FF07F8F6FFF3090AF5FA030200F4EEF30300FB0103F8EFF7",
      INIT_2F => X"FE01F4F60A08FB000A070C0704061003F9F703060C07FA040F0EFCEDF1FFF8F9",
      INIT_30 => X"FAFDF307F8081002FE06050BF608FE070BEFF8FCFE0F020EFA08050302FAEEF7",
      INIT_31 => X"FFF91713F70805F0FBF8FA01FB06090A030401FC09F6FF05FE0202FDFC060C0A",
      INIT_32 => X"FFF70AF7FE0403F9FAF6FE000408F9F0FEEFF9F4FC0609F7FCF3F60202F5F9FF",
      INIT_33 => X"F3FBFAF20010F305FAFB1006FB0403F9F6FF04FDFD1003161103FFFB02131112",
      INIT_34 => X"05FD060302ECF3FB0B0F0007FF0F070F1104FFFFFE0B02F5F2F6E3F6FBFC00E4",
      INIT_35 => X"030E0C0203F3F60809FDF6F7F4F9ECFE05F7F7FC0A0DFD090B0909061AFE0307",
      INIT_36 => X"FCF2EAFCF9FBF60CFCFA020A07F9050BF5020DFFF8E5F2EAF0F4F3F2FB05FCFA",
      INIT_37 => X"06F902FC020200FEEE010FF6FBFC02FA05F5FD0303F4F7FDEEF6EAF9F9F4FBEA",
      INIT_38 => X"F9E60203110D0612FE0E05F1F4F7F7FDF90406FFF5FC06FDFDEE030C0A0EF5EE",
      INIT_39 => X"080FF5F70405F203F5000E03FCFAF10708070F04160AFC0103070AFC02F20708",
      INIT_3A => X"04EF0B07080406FDF6101CFAFE0716F70415120DEFF5FE07F3FF00FFFF00F4F8",
      INIT_3B => X"F8EA0F01F701F602FF0E01EDE20B0C0B0907F5070FFE000504FB03F3EB0CFDF2",
      INIT_3C => X"0003FCEE01150F10F1E8FDFB13FDF701FAF0FB0305E60CF5FBF8F506010BFB10",
      INIT_3D => X"EF0C010708FFF30A0F15010601F3F2FAFAFFF304F8020FE5E90BF4F2FFFCFBF4",
      INIT_3E => X"12140606FBFB080FF2F501FD0100F701F608F7E5FEF60EFBF706F7F60A1002E7",
      INIT_3F => X"07F7FA0B0205EDF61205F8020D00FC010506F70816F6F7FD01010809FE00FD02",
      INIT_40 => X"EBFFFB06F40100080704F9F3090BFB00020BFFE9FFFC05F7FCFDF6F3FBF1FCEF",
      INIT_41 => X"FDFC06FDF9010909FAFEF90203F6FCF9F4EDF11117091300EFF8FEF6EFF3F3FE",
      INIT_42 => X"05FEFCEEF4E8E8F2EC0408FCF9ECEEF4F40A00F400F7FDFE0B00E0EEF610F1F6",
      INIT_43 => X"0B0BFDF5F206FAF51A05111505ECF8F7EF08FB030BF21801FB00FC03EDEDFEF8",
      INIT_44 => X"F7F7FEFAF21207030EF8FDFB0C0609FCFB1307130AF402F3EAEBF30EFF040C05",
      INIT_45 => X"FC08030C010AF4F2F5EBE3F606F20FF9FD0F0108F90908FA10070DFE03FA04F5",
      INIT_46 => X"F6E8F9E1F6F705FAEAF9F7F71518020401F5F4EEF906FC0003120504FFF108FE",
      INIT_47 => X"130C10FD0402FC05FFEB050B1506F8DFF3FEFBFAF7FA0001F4EC07FFEC0FFEF9",
      INIT_48 => X"F1F1F6E5E9E30E1AF6FAFB0E07100CFEFEFEEF02181801F80B06F2F601FCF909",
      INIT_49 => X"F3FAFDFB050F010D06F3FC09F5FAEFF10A0904FF000306EEEFFDFD001F080403",
      INIT_4A => X"EAF405FC0404F2FA09FBFD03090F1302FDF9FA0407EFEDF9031404E9F015F8EE",
      INIT_4B => X"0605FDF708050EF902080E06F7020D0812FF05FBF3FF070CF5F8FF06F5FF0CEE",
      INIT_4C => X"E8E9F0FCF601FBFD040706F7030702EEFF0C03090905FAF30D161505F8EC060E",
      INIT_4D => X"FFFF041006FCFB0A0AFDF7FEEF090AF8F905F4EEF6F9F3E5FE00F10DF7FB05F4",
      INIT_4E => X"F505FB051C0F02F3F3090301F7FEF40207FF0904F0F6F0FE110F0E1618FC01F7",
      INIT_4F => X"F7080A101811F70405F5F80D0DF3E7F913090705041308E3FF10F8FAEDF0EE02",
      INIT_50 => X"FE07050F02FA1405FCF8F300040800F3030C0DFB0B1802011206010BF9FE14EC",
      INIT_51 => X"06FCFA08FDE5EC110210030B09FBF40505041B0CF4F7FBF40606F4070300FAFE",
      INIT_52 => X"07E7ECFA0AF3FA00001210060E04FAFFF30E1103F2060700F6F8F20F1D160E0C",
      INIT_53 => X"070B10FFF8FBF0F902FD1612030A0804020CF2F40400F9F4FE1602F1070B1613",
      INIT_54 => X"EE0A13F800F7FD05F8ED0A0F05F9FAF21B0AF2FA05F804FC00F3FE1400F4FB08",
      INIT_55 => X"0C0D02FA0406FA05F9F8F0FB030A050B0E0FFDF7E3F0FF050EFCFC0A0401FBF6",
      INIT_56 => X"FCFDFD100D0402DDF1F81304F9FAF9E700FEF9F508FC000AFBF501F5E2EDF408",
      INIT_57 => X"0C0901F9F3EDF50F03EA03F6F4FD00FF0601FC020B060EFBFE1905020106F4FE",
      INIT_58 => X"F0F3FDFC00F2FF130EFEF4FB030802F81304080F0606FFFB06FB0D030AEEEAFA",
      INIT_59 => X"FA0504EE07FC00F00B0C21180CFAEBFE07FB04FF110102050004F9EDEEFEF6FB",
      INIT_5A => X"FBFC0B14F6F2FBF40E0AFCFF0F1F10060218070A00E8F20302FBFBF9FC0EF5E6",
      INIT_5B => X"FBF8F40DF2EAF5EEF501FAFB00070AFAF9000E02E2EF0DFE0508090410FFFEFB",
      INIT_5C => X"FD0A00FDFC01FAFE04F6FB01F8FFF2FF0D0909080B04000FFFED0303FF1203F6",
      INIT_5D => X"FDFF08090200F203F1F500FD08F5FEFCF70701F2FF10120BF7020EFD1C0BFEF7",
      INIT_5E => X"05FFFC06FA0E13FFFC1109FD030D05F60B05EEFF00FEEE0A10FEFE080EFBF508",
      INIT_5F => X"0A0A01F9020FFD0203FE01020B02E8FE110E0A0D08FA0C07F3F901FF00F80E02",
      INIT_60 => X"000C17190305030AE5F60E200F08FDFFFD0AFF00FC0211FF000C00FC00060F03",
      INIT_61 => X"01F20101F8F4E805FE07F6FBFF090AFA080DFEFB00FD09020F04FE05F0F4000A",
      INIT_62 => X"F2FC0C0608F8FDFB050AF70E17FD01F9F9020FFCEA050AF0FD04080405FFF5F7",
      INIT_63 => X"0AF8FBF2F0F7FFF10602F6FE06F7FB08020807120CFFFF0E09ED1107F2FDF705",
      INIT_64 => X"FCFAF3F8FE03EF0302ECF41101FD0A0802EBF6E6EDFEF80303F6FFF1EFFAF3F7",
      INIT_65 => X"FCF8FD08020911FE01FCFE06FFF8FCF0F6F3FE1007F1E2F600F5070703010A01",
      INIT_66 => X"0C0607FCF6EFE1FAF000EEF2FC0F0A09FAFEFFFB0BFDFD09FCF00411F3FF0004",
      INIT_67 => X"06FF03F5F904E902FDF407FEFB02EA0103EAE7FFFE000B02FF0807F610160BFA",
      INIT_68 => X"0A100C0301F3F9FE11FAFC000AFCFD02E802FBFA0EFD0A0D0AFC01FD010607F6",
      INIT_69 => X"060D04100F02FC0904040703090EFF1001040A13170706F5020E0203F803F60A",
      INIT_6A => X"09FDF6FFFCFDF5E3F6F9F2EDF3F7F810FDFD01FE08FE020F02FAFEF70603FFFB",
      INIT_6B => X"09FEFC021502F6F0F5F1010B06F1F10EFAF10603F5F6F5F8EDEDFF08F3F8030C",
      INIT_6C => X"070604FF00F1FC06170801F70111FF160DFA15FAF6F9F2FE02FF050C11FEFA0B",
      INIT_6D => X"F6FBFE0F01EDF8FBF5F90DF9F3F903FEF7FDF6040407F503091008FF0601F906",
      INIT_6E => X"F6F609050C030DF613120C02000F0301070DF6F502EF0D09F4F6F90E04FFFCE5",
      INIT_6F => X"FE0002FE060C090C0F0A00FD0AFB0804FD061003FB0AFCF1010811FCF600FEFC",
      INIT_70 => X"0F090108060E1505F90B1208FCFE06FAF1FE0C0709F7F3060B070414FEFD08F6",
      INIT_71 => X"01F4F2080B15FEF7F4F00E05FE1007F80502EBF4FCFDF80DFEF7FD00F7F20209",
      INIT_72 => X"0509160FFD05040E14FBEF07F2010202060EFF010A0DFCFBFAEAEDFB00F60212",
      INIT_73 => X"06FCEFF603090107F20601FCFBFDF8EFF90402F5F60703121509160DF912090C",
      INIT_74 => X"F20513FBDDFCFBFB0EFFFC0403F10205FF02FF050402FEF70603FD02F7080401",
      INIT_75 => X"0205ECFE0EFCEE04000311FBFF09011506FCFDF5F5F5F800090503F6FEFEFDFB",
      INIT_76 => X"0AFEED01FC04FE0AFFFF000A0707000003081A000004F20006FBF5DBFC0D12FD",
      INIT_77 => X"0200FE01F8FA070EF80302F906FDEC0109060407F8EF030A15FCF5F60410FC01",
      INIT_78 => X"0FF003FFFCFB09070C0B04FAF707FEF3020DF1E9FBF2F6FB01ECFC11160D1609",
      INIT_79 => X"FCF3F8070C03F2110AF2FE06FBFA071BF502FCF403F8FF05FBFB0504F80B0007",
      INIT_7A => X"1B02F90808FBF7FC01FBFFFF0606F909F0FFFB05FE041C0C17030602F8F90302",
      INIT_7B => X"08031007FB09F9F9FB0A201B06F905FCF603FD0603FBF8F8F7030EF5030A0313",
      INIT_7C => X"FFF4FBFD1106FAF4F50FFF0309010F0C0407F9F40407FAFDF3FA0107040510FE",
      INIT_7D => X"0B0AF002F0F7FE1208FF040A0505FB00EAE8001203011409040C03F2FE03F800",
      INIT_7E => X"00FCF3F00515FA04000C0605FFEEFCFE06F8F5FAF50904F9F9020EF3030C10F3",
      INIT_7F => X"FDFFF8090DF9FCF4E7F708020FEBF70B1D0A0701F3F301F90807FAFB05FAFCF7",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => dinb(8),
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_35_out(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => p_34_out(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_35_out(8),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => p_34_out(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  port (
    p_31_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_30_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized6\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized6\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"EDED26CE1C0EE02798047F8F903E1E06F68385EBDBC7F73C637C100A9E12240F",
      INITP_01 => X"3C39C67B7B9836046AD7FFFE2461B890789908C99E7FCBEBF0FED98D901DEDFE",
      INITP_02 => X"182E07E1F2F6906C36DE7FA89283F629F9C15837A402498578E318C6F0DA779F",
      INITP_03 => X"7FC81B9F18BF325E1E63076FC333063C28CBF341001DDB11D84289F2870FD1EB",
      INITP_04 => X"87B0129213901F5F01202207931C006FF2B7ECE9538AC6018C39D95CD1013247",
      INITP_05 => X"98BE8430A61F81C1F43FDE9183E210FBDBE1C085C37880618BF33FEC652273EE",
      INITP_06 => X"6D8131BDD82ACFB43F6283181E9C6C2449388144C7F8E13FBF96E689B32FE19D",
      INITP_07 => X"F24481FEC4D3C0EFE5AD184AB9B06D631CBEF9F307B2F66D3698F01864248B00",
      INITP_08 => X"10EB599C41106F861EDFE167708984DF900DFE403E09E37FF037978CBC0C383F",
      INITP_09 => X"F7FF4890C03E0C7BDA1DF8903FF21BEF8C023FC4DAD7101D8C8DB67137381206",
      INITP_0A => X"1F30833EFE2DF6E51E61565BF18F84C9A6D9E3DE7C61221BCE3DCBF637D09F2B",
      INITP_0B => X"E464FCD9C7C5F00A24E00C4C407806F2460FBC7B7DEFEC007E805C337F98A01F",
      INITP_0C => X"0007074B0FE754F7E03C47F88478186D9C8CE2B3C4808D9A393D865D34C90C5F",
      INITP_0D => X"7E2324E088025FC1C6342383B91825F98636D5BA56830B1B970041E64A16847A",
      INITP_0E => X"9CE583B0D737B81601F02C11C813F304E03ABC65FDBF84C215F211C982F670B4",
      INITP_0F => X"3C1B268B30F7ACF073F9F4FB10F9E33EE765F2A70B09B7E7E0DF4C66816A23E1",
      INIT_00 => X"FE0400F5FDE9F80B050E10F40506FA0C1115F20E01EF02111C171804FEFEFFFD",
      INIT_01 => X"08E5EA0E0C00FDFA14F5DFF6EFFF0603030C11F007100701000A1403FD07FF0B",
      INIT_02 => X"FEF716F9FF03F8F7F7EA061819FDE5F1FBF8FDED0AFDF7FF1000FAF4F4F40A17",
      INIT_03 => X"F1FEF4FF1BFDFC03F60F05050102FBFCF90B090302F809F3FFEEFA06FE0FF2FD",
      INIT_04 => X"F20A06FB0D0B00080802F6E7F9FDFC0106000BFDFBFCFF0A0817100701F6F704",
      INIT_05 => X"FB0415FEF80E050609040E0D00FE060A06FEFCF6FBF7F4F7ED02010AF2F5FCF0",
      INIT_06 => X"130906F5F2F7020506100E0BF3F7FC00F6E2F21102090B070F12F70000E6F8F9",
      INIT_07 => X"F6FFFB05FDF811FFF6F4FE11F9FC01F11903FA0005E6F301FAF90003F0F9EC0B",
      INIT_08 => X"FA0307FF0C090C10010608FFECE701FFF0FEF701FEFC0AF9F0F6FEEDEDF2FB01",
      INIT_09 => X"FCF8EFFB03020A11F9F6FBF7ECF7F806FEFC06F9F20213EFF70B1A05E8EA05F4",
      INIT_0A => X"F50C0BF6ECF9F40307FEFBF8FBF9F4FEFDEE0914F300FDEAFDF7FA08FC03F8F5",
      INIT_0B => X"10F0FEFEFF04160EF0010AFCF70205EE020D1307FA010806FFFB0100FE180CF1",
      INIT_0C => X"0E0BFA001BF4040B08FCFF0B0A080BFFFE0EFEF9F5020308FE0404FB06030008",
      INIT_0D => X"0BEBF403FD03F501E3F402FE05FFFEF6FAF7F9FAF7F9F3EBF1FCE4E5FEFBFE02",
      INIT_0E => X"06F2F5F9FC03FAF6FD040BFFF90D1504041CFDF90AF9F5030C0A04050EFA0C0A",
      INIT_0F => X"0D0EF7F7F8EF020A0001F5F6FF0F00F8F9F9020305FAFA0B01F5F4F1FA00F1F0",
      INIT_10 => X"FAFDF7EE07090205F5F901FFFB07FD1106E5E2ED02FAFAF5F60B00FFFCFAF2FB",
      INIT_11 => X"01EBFAFDFA170C08F1F3FE040D07F6EF060707F0FD100104FAFE060902EEF800",
      INIT_12 => X"F207FC0609F60601040C030A0407F70708F80905F60507F8FB06001107FA03FD",
      INIT_13 => X"EDF0F4FCF3080FF5F4FC0104010604F001F101F1F50805060811EDF401F6F5F7",
      INIT_14 => X"F00407F50C09F302FF04100B0D0AFDF7E9EEF2F908FDF9090410FC0CFC0B00F9",
      INIT_15 => X"170DFEF00FF5FA01F7F800F8F0FDFE0006F1F9F7FDFEF7F0F507FB00F900010E",
      INIT_16 => X"F1F4FBFA040AF00AFFF9F9F606FCFD0DFC0806FF0800010302FEFF04F3EF071C",
      INIT_17 => X"060301F3F6040A040401F004FEFEF202030A03060BF5EFE9FEF7FE0D051107FC",
      INIT_18 => X"F70F0E0304F6FDF31B040911FEFBEEF7F6F701FD080E01FCFFFCFC04F903FDF2",
      INIT_19 => X"F8F204FEF91F010703F7030D0E02FB06FE030601F90209FFF5F1FCFC020AF802",
      INIT_1A => X"0300170E08001E0F0F1003FEF6EF08FDF9FF00F0FA0BFAEF040103F0030600FC",
      INIT_1B => X"1508FF01FE110B00FEF3010AF200F3F7EDF3FFFD0200F8FE05F9031A140704FF",
      INIT_1C => X"F3FA00030403F6FC0706F7F1050BEDF70710121905E2F3070701FFFBF6F0130A",
      INIT_1D => X"000409FCF3F4FC1508FAF1120A04EFED0F130A0605F4EDF506F9FA10FDF8F7F8",
      INIT_1E => X"0D200DF3FC060606F802F3EFE2FAFAFE090DEAEF0602FC0A02FB03F5FBF8FC03",
      INIT_1F => X"03FBEFF9EEEBEDF9FAEF0300F6001A0C080D0BFEF915FAF4FC0A0CFEFFFEECFF",
      INIT_20 => X"F4F705F4010709F608050300071B01F70300FAF20F01EF0403FF010409F1F9F6",
      INIT_21 => X"ED09150AFCEF0A070500F8F9FE050DFFF7FC11FFF81203FE05FF03F7FBF90F0D",
      INIT_22 => X"14F407F90600F9FDF9000E0BF20CF902F4E8060504F8E90002050E08080201EB",
      INIT_23 => X"F9ECFFFF080EFF09F703F6FF05F8F3FBFCE1F002FDFE1208F0F9FC06FE0D12FA",
      INIT_24 => X"EA0104FF0304F6EE021302FBF4F70401050F11080A08040400F8F700F7F3EEF8",
      INIT_25 => X"131006010C1401F50C02FD0201070802040EF6011102F3010B1E120402F6F3F6",
      INIT_26 => X"01011EFF0C16F5F6F90106FF061E050106040DFBF2F7F7F406FE05FCFDE5F1FB",
      INIT_27 => X"FE000D0205F7E9FAF703F2FF0C090C0C050406FC0B01FD0BF60704FB100EFE0A",
      INIT_28 => X"06F4E90002FE0EFE1905F30B0607FF0608EEFEF31A04F2FBFAEFF300FAF0F40C",
      INIT_29 => X"FF040304FA01FDEAF1F9EDEE0707FCFE0510F3ECFBFBF3F5F7F3FF01F8FA0308",
      INIT_2A => X"F0FD11110705F4F804FCEFF9EC090A0BFA050C06010A130A0EF9EF15060201FE",
      INIT_2B => X"FCFF0AFCF200FFFDEAFDFC040C0311FBE9F6050802040E08FC0C1A0F01FC02FF",
      INIT_2C => X"FA000E1A0C03ECF3F3E9FF070701FA0A020910FC09000201F2F1EBF4FC00FDFB",
      INIT_2D => X"E9FFFCFD03FB04060A0AFDF8F5FFF1FEFAFE03FBFCF5F802FB0B02FF0C0C09FC",
      INIT_2E => X"FC02FB0004F9F5020C1013FFEEF1F1F8F4040205040110FEF5F30A01020503F2",
      INIT_2F => X"EF0404E3FD050A0EFD02F3FEF9EFFF02FD03050106FD04050800FAFE10100816",
      INIT_30 => X"F80AFCEA0406FEF10701F804FDF4FCF9EBF5FA0D010310F6F50508FBF4FC0CF2",
      INIT_31 => X"F900F8F7F8FAEBF6F9120CFA05FBF104F5F7E4050CF7E808FB070F01F80801FB",
      INIT_32 => X"EFED010007FCFFF7FDF9F2FBFD050B04FAFFEA02000F0EF50F03FCFFF8F8F6EF",
      INIT_33 => X"04FD020AF4060BFA0804FDF8FF0C0811FF05081000140BFF0CFF02150FFB0B01",
      INIT_34 => X"090D01FBF7EAFF00F71104F0F2FE160207FFFE0FFBFD04071500F40203F80903",
      INIT_35 => X"070DE2FBFEF4F5EF00FAFC160D0DFC01FD0206090B06EDE70A170CFDFE100F14",
      INIT_36 => X"F0FA13FAFF10080A0F00F802FB01F903FCFC090BFDFFF8F1FF07DFEE0DFB1608",
      INIT_37 => X"04F9F70CFBF705F7FF090010030614F90A0CFBFF0B0702F0EF10F7F1FEFD00F2",
      INIT_38 => X"10F3F90C01FB0D0D090CFF0808FF1003F402170BFC02FEF004090E0E12191C0A",
      INIT_39 => X"0011FDF406FFF111FF0802F6FE070902F6F7FDF8060A0203010800F0F5070002",
      INIT_3A => X"121609170AF0F3EDFD0BFCFA131DEE02F6E7F7FC01F2EC0107EDF10CFFEB0CFB",
      INIT_3B => X"0C090CF3FEFA0301FD06F8FBF2F7F606FFECF8F1F80502F0EFFEF5FE0905F7FC",
      INIT_3C => X"F204F7D8FD0B03F7E607F2F007090F0801FEF408F2F215FD0AFFF2060F10F6FA",
      INIT_3D => X"E7FBFB0202F40EF7FB03F807FEFC05F608140FFAF803110613F70008F800FB0D",
      INIT_3E => X"F6F5081607F5130AFBFA0DE90719FCFEECF20A0108080A01FEF9F201FFFDF9FD",
      INIT_3F => X"FBE4EDFF0204FF0F0CFA0C0104F30000FF05000C101201F2F7FFF1E0F9F3E907",
      INIT_40 => X"EE06FDF2FBEE0805060A1216F7EB0C100306F7FCF20001070F03F8F8F3F8FEFE",
      INIT_41 => X"F7FCECFF031104030103FBFE0FF8F0EAFD0703FA13FEEBE3FD011405EBEC0400",
      INIT_42 => X"0909F1F9FAFEF8070E020909E70012F5FDF1F6051203FFFF00FEFDF6F4F0FBF7",
      INIT_43 => X"F00007F603140D020A050306F0ED02F5F2F7F5E6FDFFF50F0DFE0A060808040A",
      INIT_44 => X"01F0F0F304030309F90C1512F70008FFFD06050300FD0413F8FF04FAF5FDFBF9",
      INIT_45 => X"04000AF4FFF5F900F1FF0BFCFBFFF9EBFEFEFE130D0700FE03E9F41009F1F2FB",
      INIT_46 => X"07FA0A15051002F70B1516F70918110B0CFBFD02FBFCF9EBF20D0C050DF9EE02",
      INIT_47 => X"0B110FFF0A020012FFF7FA02F707F2F40CF60BFFF01A11FDFC0F07FDFEEA0520",
      INIT_48 => X"030BFDEA00FFF7F30703F4F8F608030F0E0B02FB1613FF010C01050708EFF107",
      INIT_49 => X"F206050AF9F20804FB03040DDAF50AF7FF01F4FC11ECED0D06F5F4EB010A04FF",
      INIT_4A => X"F6F903F4F804FE02FEF209FD0DFDF8FE06100CF600000012001902FCFFFE0BF3",
      INIT_4B => X"F70C0E0CFAF90202020707070407EC140F01FDF7FDEDEEE9FFFF050402FC0403",
      INIT_4C => X"0407FFFFF5F3FFF2EEFCF5FD1301FF030D0D03FFEF04F6FAF2F5FB00F3ECEDEC",
      INIT_4D => X"F4EE07FDF406FB0F0A010FFCE2F800F4FEFBF7F4F0140A01F9090CF403031504",
      INIT_4E => X"FBEE040702150E0B120FFBFCF7F5FB0D1309011BF7F60C1109FBF7FBFF02EBF5",
      INIT_4F => X"F8F7FAFD02DDE7F6EEF6EAF6F7EFF8FE0BFF0100F8010B19ED1303F6150A0328",
      INIT_50 => X"0F05F5FD0AFEF6FFFEF90FFC020C000AF80E17FBF1EFFCFF010AFA0AFF00FFF8",
      INIT_51 => X"FBFF0702FAF4FF020809F6FCE9FA05F2F9FB0119F401E7E1F5FDF6F801F9FA00",
      INIT_52 => X"08FDF8F9FDFC071A09EEFF040B0A08F50102F2050102FE04131003FCF507FBFD",
      INIT_53 => X"FF07FF0007F9F303F4F409EFF40A04FCF8FCFC080200F3FAFEFB00FDF1F8EC02",
      INIT_54 => X"FDF9EAFF020A01F0F0040F05E9F2F3EDF200081002FF0200FDF50E06F61303FB",
      INIT_55 => X"020E02F6F0F6FC0409F2EF00110401FE02F600F607F9FE0D01F301F1F000F9FB",
      INIT_56 => X"FEF8F2EBF2F5FB120703EB08FEFE0EF2F2F3FEF80DF8F601FFF8FD0D06FA04FB",
      INIT_57 => X"000117FBEDF4FBFD0601EDF905020E02F0000F0B070CFEFE0009FFFEEED8FA08",
      INIT_58 => X"07FEF8F7EAEFF5F9FD0505F7F7041404FC11FE06040A100E0C110CF6E9F2F3F5",
      INIT_59 => X"08F9FDFFFEF8F609F30607030E09120902F909FDF4FF07130705FBFA0500FEFC",
      INIT_5A => X"0EFFF5FCECED02FEFDF5F503FCF0FFF1F0F0FD01F4FC11110C0908130D031105",
      INIT_5B => X"0DFB0C0704FBF70812060E0DFDFDF2EBF102FFEFF6FA0C1C07F1F0F6EF12EBEB",
      INIT_5C => X"07FF080C051604120EF1E1F4FD06130C1508140C00FDF707FFF8ECFA1308FD16",
      INIT_5D => X"2109F00002F30105F0F5FA070E0F060A12051309FEF5030209FE0305F7FC0B01",
      INIT_5E => X"F2FB080A03F1EEF6FAF300130BF100FAF7E2F4F90303040B0C110405FB09FE05",
      INIT_5F => X"FFF1F90800FF020C13FDF50003FF0006EDF2FFF8FAEE1100EDFE04F9FC0902EC",
      INIT_60 => X"050CF4FA01F40B02F2F80305F30801FE05110C0BFCFE010604FD02E9F1FFF1FF",
      INIT_61 => X"1102F0F7F70609F40905FEF4F2FC05F3FA0E101505FAFF0103F602F6F9F809FA",
      INIT_62 => X"FAFD04000CFE0909F705061413090601F5061704F8FA01FCF00613F4F804FD06",
      INIT_63 => X"FD1016F9F7FA010CFE03040FFAF6001DFAFBF6000804FB05F70AFEEF0706FAF1",
      INIT_64 => X"F91306071BFD140906FEFDFEFC0D130702050EFEFE07020402F7FF06FAFC0EFE",
      INIT_65 => X"F3FCFB060F020C190F07FDF5E0FC090401EB020F00F3FFFBFBEBF3F8F6110A06",
      INIT_66 => X"020B1602F3FEEBEFFCF5F70009EFE2F102FE09FD07F20C0CEFFEFEF700FDF0FC",
      INIT_67 => X"01090F0A0C0C130E0212080A01F9F8EE0B0D0A020AFEFBFD06FA170EF50AFCF7",
      INIT_68 => X"02ED0A00FE02FB1E08010CFB02F4F004FB05010507F8010600EEF6EAFF0BFE01",
      INIT_69 => X"F60203FF05FCF8FC0407141E0A04071809FD03090D0708FCFEF0EF1D0AF9FA12",
      INIT_6A => X"15FB02FE03F7F601F00010040400F1F50C100E0CFD0DECE8081217FEFF0CFAEF",
      INIT_6B => X"F6080C0604F3F2031103DFF200F7F30EFBF711F209F606EFFC03F7FFFA04EF12",
      INIT_6C => X"FA02FAF7F80605FE091D06F8FE0707080607F50307FB04FAFDFCEAFDFB0107FD",
      INIT_6D => X"F6F50C080AFCF20C0B0DFBF600FC070A0B06F8060D13F4F2FF1013081214F5F7",
      INIT_6E => X"F2090C14F4010801140812020504F00808F802FEF6FEF8F3EBF21015030A02FE",
      INIT_6F => X"06FBFFFDF8F1F8010306F7030C0BF2FE0902F6081AF90906EEE5F10A1A120802",
      INIT_70 => X"F30309000705EF06F5EDE5F102FEDF050EEAF7ED0309040AFB0DFFF800E90109",
      INIT_71 => X"131302F704FE03F3F0EEF5F9040EE6001A2102F1111604F6F9F70002E50409F8",
      INIT_72 => X"FBFFFDF7FCE400ECED0BFCEBFCEFEEFCEA01180100FA0602F3F809190205FF10",
      INIT_73 => X"F6F6F90D041311040C04F8FAFC03FA06FE00FCFDF9F8060608FAFD1402F903FB",
      INIT_74 => X"FFFF1808FF040C2206130CF10A06F7FCF6F4F0F70902FFFB1018020200F40800",
      INIT_75 => X"07000405000206FAF8FAEAF7080900081003F90EF4F90B10111503FE0A0709FF",
      INIT_76 => X"FCF904FC05F5E9F10A03F2FA07FFF4FDF202FEF8FE0B120C051209E208FFFC09",
      INIT_77 => X"F80A07F3EBFF080BFCFDF70501FF06FCF30612030505F2FBF50AFAF40C05080C",
      INIT_78 => X"FD0C1A0E0F0B02F40EFCFE04F601F40D1909F4050B01FFF6EDF5F700050E06F5",
      INIT_79 => X"FBF8F905100C0D01F6FE0FF0F4FAFDE604F10409F7E406170CFDF41802FAF903",
      INIT_7A => X"0D080E0FEE00FEF601020B08FB0802F3FE06F7F509FFFCFCF1EDF7020AEDF4FB",
      INIT_7B => X"FDFAFD0603EFF1FB02EFF10601FE02F8F1FDF6FC0801F101FF05F60809FEEAF7",
      INIT_7C => X"000F0AFA0A11010AEFEEF8F5FA0112F9FBFBFB090602FDED0605FBFFFCF4F10A",
      INIT_7D => X"12FAF3FB0002F4FBFEF0FDFAFB0F0EF8FDF5FDEF02FD0704FEFFFEF2E900F5E9",
      INIT_7E => X"040DF9FF0D020009FCF4FDFE01F9F5FCFC09FF0AFEFD0705F9EAE9F0050E0313",
      INIT_7F => X"0004F7EFF0FC060801090AF7F50EF9FE0A05F9090FFBF300FD040D1BFA05FEE7",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => dinb(8),
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_31_out(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => p_30_out(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_31_out(8),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => p_30_out(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  port (
    p_27_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_26_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized7\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized7\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  signal ena_array : STD_LOGIC_VECTOR ( 3 to 3 );
  signal enb_array : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"6F3FE1DB8381F8003F8C01DB01F83C3031127A18F76067E70CF680FF83F1FA96",
      INITP_01 => X"91B9FF63CDB2C307E4078542430ECE85FB9E107AF39C96F8F30580B25A06ED0C",
      INITP_02 => X"7BE9BD8E13047CF887DF76FFEFF7806FBAC1E2FFD384069E49A5E9F8F6DF3FFB",
      INITP_03 => X"C898C6FF4B06622FA9360139CD8C68003303F4FCE08012403084E5BE809C447C",
      INITP_04 => X"D31CC98FC33C248D1C80BEFE337DC01F00F7C247E4305BCC5B102C1DBDCF23FF",
      INITP_05 => X"C6100B030CC5D8C0D80F16D82CEC9DFF33DB61364C9C0DBA6000E63EFC9635EC",
      INITP_06 => X"E01449A029CC173D5A307699C7D386F08C13C7FFFBB4CF7F390870048D8658C2",
      INITP_07 => X"688F00C030C74A30BACD95EE3522CF743B58FD8DD8C6626185175AC139B124D9",
      INITP_08 => X"1D0BC6F37CF9656ED91C7E620C74DBFC07AB4E3E76491C2DA70EA70C0407C2B4",
      INITP_09 => X"DA21A22FCC70F85976B39DE9FF9C03CBB961F6051FB0273F8788D46BD8433472",
      INITP_0A => X"5EFF87E5F380D83E76C9020D912880D989FCF4FC85F3007FB5FC3E17DE8EC5B6",
      INITP_0B => X"C486EE348380DB1BE291C6F43F39F9E79C272B05C86FB998C01FF13EF7D39DF8",
      INITP_0C => X"67192430C41D0EFC2437DF813FE0EECC261E1F0235C0ADE2F0787333D1B3DB9B",
      INITP_0D => X"2E53C590C41E5C43D60DFE9B9863AA2DE2F6E60A40F21FCF0C009A015E207E24",
      INITP_0E => X"D880FB6CB97242DDBA701A2CDEFF1D9838C6D400DDE6B5E7CF971AF39FA60EC4",
      INITP_0F => X"D39AEA001A30868F01598F88646433C5B80C4D1F216EF85E011930C1C3035B8A",
      INIT_00 => X"F700110C0304F0F8F7FDF5EB001408F7FDFCE3F1FF0AEF06FF0D02F706EAFF03",
      INIT_01 => X"0E071414E4FD0C0AFFF3FAF70CEDF200F1010607100F0604F1EFFFF0F4F9F6FF",
      INIT_02 => X"FEF3DDEA04FAEFEE12F4FC0D060D070E01F5FF0904F7FBF9FAEDFD0009FDE8F4",
      INIT_03 => X"0702F2FE060307FC020D06E70810ED060CEEF7E4FC04F500070213FBF5010D03",
      INIT_04 => X"0B03120F040306FAEDE8F3F9EB0305030202EEEFF5FF10010712FDFD02060A0F",
      INIT_05 => X"0D07FEF9F7F9EEF1F905060CF4F60E150600020000090BE9EAF700FEF300FDFC",
      INIT_06 => X"FD0212090B02DDFEFA04030D070507ECF1F5EEFBFD0306090F040C1904050802",
      INIT_07 => X"00F0F60BFFF6F5FF0705FFF7F8FAF3FEF7FBF103010607FEFAF10CF7FE0FFDFE",
      INIT_08 => X"05F60CEEF809FC151A07110900FFFE15F7F4F503FDFD02FF02070904F2EB0707",
      INIT_09 => X"F3F8FEFD1118F9F6010D160A08FD0DF7EE06090C0E010D08F700FDFA0802FA0D",
      INIT_0A => X"F7F4FCF80A00EEF0FA170CFAFFFA0305F80103FA07FEF800DFEEF4F7F3130604",
      INIT_0B => X"FBF9FFF6F500F2FDEA0F08FFFCF8F2070E1404FD0904030F10FDF9FAF303FD06",
      INIT_0C => X"00F901030309FBFB0C0B0002F8FFFF07FFFD0A0EFFF4F706F00D040700F90AFE",
      INIT_0D => X"EFE9F90803FF0F000112040D15F3FAFAFC0A04060DFE01EF02FF07040304F600",
      INIT_0E => X"F7FF0603FFF802FCFC04F3F30906FA05FEFC030D1104F8F80000010F01F5FAEF",
      INIT_0F => X"F30B03F3021908FBFB01F0F6FD0705F6EFE7ECFAF6FBF5F707ECF10C0603FBFB",
      INIT_10 => X"F8F4EEFF0FFFE107FAF80BFCE7F0FAF60108F6F0FCFEFDE7FCF9E9F0FF03FCED",
      INIT_11 => X"0BF90210FC0A0CFEFC09FC0B0AFD0EF8EAF5FF09FC0C06F0F6F2EFF2F6020302",
      INIT_12 => X"F8FA00F50C0FF3E7FA01040209FD050D180D050301FBFD0CFB1306EEFEF1EA08",
      INIT_13 => X"F904F0FAF903FE15FDFC05050C0E05F2F9F4FE020500F201FBEEEEF6F9FFF7F8",
      INIT_14 => X"FEF4F908FAFBFCFFF6F8E8E803F0FFF9F51007060808131305EAF301FFEBFBE9",
      INIT_15 => X"FE13080402F0F9FFFDFF05F4FAF2F2FC02FFF6F203F3FD01F2F4FEFBF1F4E6F5",
      INIT_16 => X"080A03F5070FF0FE0E0E0A1218F9010502F7F7EFF4F90703E9FBFFEEFB00060D",
      INIT_17 => X"0AFDF5FCEE06EEF5F3F0F903F3010FFEEB05FEF7F7F90CFDF5000405F4E3E814",
      INIT_18 => X"FD03030A0D02070BF90406F7F9FC070103FF060C03F107020AF2E5FFF3FA050E",
      INIT_19 => X"0A0BEAFA0B050F01F9130E0810F90605F3F3F9060AF802EEFB0FF1F0F7F8F612",
      INIT_1A => X"FEF3F20515010304FD07090A050F0D12020018FE0C04F91006E7020204020715",
      INIT_1B => X"160CF9FA0C06F5F4050E0E020200F5FFF0F5F8F500FC0310ECE5FBFDEDFD0B14",
      INIT_1C => X"F3FE1C04FDF602F8FC0D160FDEDE040E0AFCE701FA020C0A10010D12040F0019",
      INIT_1D => X"F403F509FC0500EC070CF3FE00FFF60B0A060119030910FA000BF2F3F50601FF",
      INIT_1E => X"09FC0208F706FDFE0207031314F0F80604EEF20D080AF7011706FF05FBFFFBF4",
      INIT_1F => X"F7FC0618FF040808FB0A0BF5F80A0F00F4EF08130CF3FF0FF9FDFFF1EDFBF2F4",
      INIT_20 => X"ED0DFFE8EAEC09FCF6FC0403F7FAFAFC0305F705060BFFFEF6F3F5FDF8F1EFE6",
      INIT_21 => X"0CFE05F1EB00F6EB020707FA050A030B220EFD0CFEF9120C190903FFFCF20BFB",
      INIT_22 => X"ECF6F60503F6040A0305F0F00C0E0C1102FF04FEFF00F6FAFFFA0C0AF1F50920",
      INIT_23 => X"0B141105080A0504F9F1F0F903FBFCF4EEF904080311F20900FF0B1903F7FBF7",
      INIT_24 => X"100DF8FA0F02FEFC02F4FDFFFBF802ECF9FE000B110F1002040909EDF2FAF7F8",
      INIT_25 => X"0A1C17FDF8EE0B09F30603090501020DFB01F6EFF0F1F104FFECF0F8F8F9FA13",
      INIT_26 => X"F9FC19050100FAF4000AFEFFFFFC080E040BF50311F4080BFB030901EAF402FC",
      INIT_27 => X"FAFF00F7091AFCFF050B02FEEAFD0F01FDF70305F50417FFE9000B12FDFEFDF8",
      INIT_28 => X"F4E6FBFEEEF6010BFE0C05F200F6ED06060AEAEE01FC01F5FBEAF109F9F70403",
      INIT_29 => X"08FBFE050C1312111702010D02020302F7EDF90506FEF409010BFAF5FEF3FB0D",
      INIT_2A => X"05EA070DF8FC0E07FC0C00F1FFFC04020A0B0405FEF903FEF703EAF3F60DFE03",
      INIT_2B => X"0B0FFEFA0604F6F6F1FF0AFCF508FBF004F5FE03031108F30D18ECFD03E4EC03",
      INIT_2C => X"1503FB09FCFD0507F6F0F808F1F3030AFE0902F1F0F20FFAF5FEF3FCFFF5FFF8",
      INIT_2D => X"FFF910FDE7022217040B0608F9F7FEF5040D03FD08F8FD04FAF50AFFF9080D07",
      INIT_2E => X"08071A02EDFB0101F1FF07020DFC01F7EFF300FDEE040F0EFBFC080D0603030B",
      INIT_2F => X"FCFF0B0404FCF302070401EF06150E08050D0A0FFC01FBF7000000060F08F1F8",
      INIT_30 => X"FE090100FAFA09F5F90F000A0CFFFE0008F804FDF3020D00F6F803011310F905",
      INIT_31 => X"0204FEFBFF010BFD06070106F80D0B0305FAFEEA0210060B02030A0308F80810",
      INIT_32 => X"FFE4F6F4F703FCEDFE00F4FD08FB0308F3F20A08EDFFF5F405FFFDEAFBFBF6FB",
      INIT_33 => X"F5070B02FEEF0C040C0301F60501F8FEEBF4000305FEF6F4F2EDEAF1FCF8FBFB",
      INIT_34 => X"F7F2000300EDFBFBF4F702F80C0AFFFBFB00010C0EFCE807FDF3FCF8100F0F06",
      INIT_35 => X"04FE04EFFA00F2030909FAFC190F090209F7F3F10AFDFE07FD0704EEFD0501F7",
      INIT_36 => X"1C03F602F60801F4F8F40800FBFB030F161201F803F3FAFB0004FFFBFCF803FB",
      INIT_37 => X"FFEFFB08040F0918030A02F102FC0C0903FD0505FA0205F7F600FE111E130005",
      INIT_38 => X"010CF3FEFB0C13F2FC04FDF900000CFB0A15FC0400FA0702F2F800F6FB0810FB",
      INIT_39 => X"F6090A0308F904FD140B01FC05FCF1EA0DF103F4F311FD05F8EF1404000912F7",
      INIT_3A => X"F7FA13FDFC100603F3FB030C0BEFF60205FAF7001005F4040DF7F611110801FD",
      INIT_3B => X"0D0BEDE5F502F0F205F003F5FC140A01EFFBFAFBF4FF16FBF8081107FEFD02EA",
      INIT_3C => X"0409F6F800DE02FC0701F1020D02F203FCF61010FDFFF2F909F0FBFF02F50307",
      INIT_3D => X"FD02FDF0EE01F904FEFC1510F6E906F7EE0B07F903F908FDFAF3F803EEEDF000",
      INIT_3E => X"090DFDFB0407090CFCFE060D02F4F8F501F71608EA02FD010002F8F705030602",
      INIT_3F => X"18EDF908FC0A180CF50E1409FCF2F7FE060D0305010D0B06F0FC0A0902021203",
      INIT_40 => X"1408000F0BF80A0E06030F0102FFFEFAFEFD0A060203F904FF06F6FC08F8010D",
      INIT_41 => X"FF09F10504FAF8F201170401FCFEF803F801F50A1CFDF6EF05010D16F7F6081D",
      INIT_42 => X"0EF8EFF80EF5FB060CF21007F20907FA0B0204F6F3E6010D0C09F808F8F900FB",
      INIT_43 => X"0F04041305F3FBFDFB08FF07FA09F6FE04FC0608F7F1FD000D06E7FAFDFCF704",
      INIT_44 => X"080E1913F7FE061300FDFAF503FF0704F7FA06FFFC07F6FCFDEFF8EEFCFB0C12",
      INIT_45 => X"F8F504FCFF0000F40A150EEDEAED010A00FCF8F2FFF4F50807EDFA05060EF602",
      INIT_46 => X"10FCF3F3F4F70501FCF5FEFEE70301F405FDF80E02FA12FB05FFFB03EFF9FF10",
      INIT_47 => X"0E0002FDFAF909F501150D07EF05FAFFF6F9000005F8FD01FBF9FDFC0D1AF9FE",
      INIT_48 => X"EAFE08FAF50202060FF00C0B150CFBF90403F3FE07FB05060AF8F0F30505F70E",
      INIT_49 => X"FD05020E05E8F2FDEF000A06FD050109F0FD00FF02FF0B010CF9F505FB11F4F9",
      INIT_4A => X"00120CE6E6ECFBF2F801F3FC050E03121509FE0005FEF7F9000DF9E8E7FCF6FF",
      INIT_4B => X"FC05FEE5F50801FE0DF6FD060A0B05F5FCFFF0FF0EFDFE000E04191103FF00F9",
      INIT_4C => X"F2FDFEF5FAF9F7F5F70D00F5F9F80A10081103071C0BFDF5FDFB0709FC09FDFE",
      INIT_4D => X"07FAECFA02F8F501FA04FDF8100EF5F5F60507F8F9FF0DFDFFF4F809F60000FC",
      INIT_4E => X"F4F90F07F7FC0B080DFFF4F908081302F3FBFEF6F602050308FD07FEEE0D01FB",
      INIT_4F => X"E7F705FAFF06F7010B03FB0A090706F9EA0DF9000606F90C1A08F407F6F4FDFC",
      INIT_50 => X"EFF500FFF2EDF802FB040C08F7F2FB02E3FC050B03FA03FFF803EFFC06F8F50B",
      INIT_51 => X"F90CFFF806F200FDF4FAF8F8EAF30B0A1607F8FDFDF7E6040D0F00FE01F2FFEE",
      INIT_52 => X"FE0A060D05F700E7EFFEFFEE0403ECF715100C070301030102FAF2ECF4F6F9FB",
      INIT_53 => X"F3070B14F60806F9E9EBE4EBEAF80502F3F9F6FF05FC080DF5DEFEF8EBF40D03",
      INIT_54 => X"F71304FE010404F40803EE09F4021012FF030D020A0F0005F6F10BFCFD0107FB",
      INIT_55 => X"0AF9F8F802ECF601F4F9030DFF0E08EF08000307130CF80F08000003FBF901FE",
      INIT_56 => X"FEECFCFA0C0EF5F7F40C150106030503EFF812F7F50D15020C0EFDFAFBF3F102",
      INIT_57 => X"08FC04F6F4F7F603FFF0FAFDEEFAFCF6F8010A0C02FDF6F6F5F7FB0A02FE08FD",
      INIT_58 => X"FCF5FDFC0AFEE9F4F4FF03F20000FEFFF51502FDF4EF01EAEAF1F0FCF9060101",
      INIT_59 => X"F7F40504010E0C070F0B04F7FAF9F7F9EEF0F2FB000C05FE0209FCF0FEFBFD01",
      INIT_5A => X"F3F41008F50C070C08F9FF03F9EEEEFFF408FDF4F80409FDFC0108F5FE0B1C0C",
      INIT_5B => X"EF0102F7F3F50F020518F61008FEF4F00007FC01FC08FCF90F0704040AFE00F5",
      INIT_5C => X"0002E9E9FDEDF0FF1503E9F4F60401F2EEF2F9F1FD0A08FDFCF9FB1000F3FCFE",
      INIT_5D => X"FFF5F2030000FA05FD030CF707120CFEFCFD05060EFCF502FCF4E8F409FE0301",
      INIT_5E => X"F3020C150A0BFDFBFD00120308200F07ECF800E9F106F9FE010E10FFFA08FDF8",
      INIT_5F => X"F5F2021408FC0601F90B030C08FBFF09FAFAFF00F7FDFD020C0BF4FA06F70117",
      INIT_60 => X"EAFF02FD0B1407F5EB04F6E8020DFAF7F7F102FCFD05EDEDF70D06E4EA00FFFB",
      INIT_61 => X"F7FBF9EE080D04170EFFECEAF703130E0BFCE7EF0F05E6FB0B05FCFA1100EEFD",
      INIT_62 => X"0600FFF504FD05F8F9F0020511010C03F10CF906EFF309E2FEFAFF060C00FF08",
      INIT_63 => X"0602F60408F0FD05030004FFF7FDF50405000AFFF8E9D8EF0A0F0D030702FA0B",
      INIT_64 => X"0318FBF6FFFDEDF9F2E7F3000B0F0400F9E9F90CFFFCFD14F0FF0C01FBFC0804",
      INIT_65 => X"1814F40305E505091306EDFA03FCF6FDEEFC04FBFFFDFFEAF30A0801001A19F7",
      INIT_66 => X"F9F206100BF908110D0F02EDEFFC14F90D15070AE6E5F700FEFDF5FEFAED0C0C",
      INIT_67 => X"00F9FF0509F1ECF8040600F2FC0003F10E16F20902F0060C0809FBF201141803",
      INIT_68 => X"00F702F9FBFEEB04130FFE010F07030A00F3E8F3FCEDEF020806FA0806F40D09",
      INIT_69 => X"020F0600F1F9060E0100231305040501EF0301F8F913FF010602100E0D0002FB",
      INIT_6A => X"0DF8091206100D04F5F0FFF8020EFD02091A0AF7F7F9FEFDF1F9141AFEEFECF2",
      INIT_6B => X"FBF4F8050A11EF05FFF3FFF607E9EF0DFAF1FC0F08FEFB07030D0805ED09F905",
      INIT_6C => X"F70007FDF50C0B0701FDF8081B10F5FFF40FF301F202FF060C02FA02EBEE02F7",
      INIT_6D => X"F6E804F905FDF30F00140C0EF2F005F5F5F9F5FFFEF1F405FD0905FFFF06F5F5",
      INIT_6E => X"F3F9060502FA020A0C1C08F3FAFDF31801F003FEF1E40A1507FE0B100601F4F9",
      INIT_6F => X"0909EF01F3F0FB130BF509FA050CF9F6F6EC090307F100FCF20503FC01010409",
      INIT_70 => X"F50417FFEFEAFEFAEF05FD0C0EFDF10111130F02F5F4EF04F7F8090109FD0600",
      INIT_71 => X"E1FA0201F0F5F6FCF50504FD02F9EBF8050C0BF2FD06F609F4FCF5FF0D12F8F4",
      INIT_72 => X"EFF909FCF9FC09FBE8F6F90A05ECE708FB0FFFF304FE07FAF1F5FF0B10FFFEE9",
      INIT_73 => X"1D0AFCF9FE090800FDE8101506F7F806ECF004F302FC190A05160E0609000409",
      INIT_74 => X"F6ED0AFCF9FEFE08F7F6F8FCF8F9F9F400090BF9F0FE13FBFB0A01FFFE090300",
      INIT_75 => X"F100FBF7FF03F10808FDF9F9030500080D120EFFFF03FC070401FC08F2F3051F",
      INIT_76 => X"F201FCF3FC0314FF01FBF7F91603F40300F902090A0AFF06F9FF02F5EEF406F4",
      INIT_77 => X"F1F303FCF90C0301EE08050901070609F5F5FDE5FF0FFDFC01F9FC10EDE00B08",
      INIT_78 => X"E4FC05130A0FEFFC07090D091010F7FD00F704F8FC03FFF0FB141506FA0AFF02",
      INIT_79 => X"11040714160B07FE010502F9F90609FE0517FAF304071007FDFB0A0B07020BF4",
      INIT_7A => X"0705ED091A1917FC06F8FB01FAFBF810F4EFEEFDF403020002FA02F1FDF3F812",
      INIT_7B => X"FB00F8ECFE0A000505040006F1FE0D1507F50501F7FA04EE081003FAFDFAF9F9",
      INIT_7C => X"03F7F71E04FC060A03FFFB0406F5090F0A00FAF20714FFFDFBF200010EFE00FF",
      INIT_7D => X"060A0B03001004FF0CFC0FFAFB0108F9F6040708FDFBFEF5E8090B03F50B0A09",
      INIT_7E => X"030409FAFB06FE060F00F7FA0201120CFD100D0A04F7FE05F6030602F7FAFBF4",
      INIT_7F => X"FAFF05FB0105FCFEFC0509FEFE07E600F9E6FC01F400F60F1208120900020F06",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => dinb(8),
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_27_out(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => p_26_out(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_27_out(8),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => p_26_out(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(3),
      ENBWREN => enb_array(3),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(14),
      I1 => addra(15),
      I2 => addra(13),
      I3 => addra(12),
      O => ena_array(3)
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addrb(14),
      I1 => addrb(15),
      I2 => addrb(13),
      I3 => addrb(12),
      O => enb_array(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  port (
    p_23_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_22_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized8\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized8\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FB3840198036CFBDBEF04632EC12D12E3FB02DD8982F71F201F086C6C59EDE6D",
      INITP_01 => X"E1A1F803F8FE113E1FC9E3D3EF001F18240C03EE91D0EB9E77EE401E11F030CF",
      INITP_02 => X"1E3D033B87DC331EFC07DB726C05837A519DC7C7198627F1FCFE9C53C417FB99",
      INITP_03 => X"E63BE607E6C05C1C8CBCE91C50C39E7803014B3F6610F39822765CC9787B9DEC",
      INITP_04 => X"F29D7C9A7A98F34C81658851F04701DE3E9DD76D819F5853C653138000A40B13",
      INITP_05 => X"C42F087BCC30F6131D8FBC4A37058598FAE68C90C87C1FEE0D2008704067358B",
      INITP_06 => X"932CDB2509060F9FFC51FB67E7E9114BE7308C5F94F9FE36E03F214E687902C3",
      INITP_07 => X"B042D8F3F601EB39979364B3CCF29F801F3CE00325F9E2DC0240D4CC3427F096",
      INITP_08 => X"9EC24411DEC59820B20200CEF40ED7CB387C093EC73D3EB243651237F01B6CEF",
      INITP_09 => X"B4960DC61A74E2049237AD9AEC207EC0050B3E0070719EC9C063FF77C64F31C1",
      INITP_0A => X"8630D3F2B27D88433936D6B324327180DEE1008F8BF087E1817AB7D7F8467B7F",
      INITP_0B => X"E8006003F1AF76041C2F8C9F8F464121A4FFD772E70FED9DF80033B7CCD61E62",
      INITP_0C => X"CF7003E3D195EE2304DC8BC44A3198CDFC613B7F84CAF378BE03C1C662264180",
      INITP_0D => X"1A1D915FE34BBCF36C8D63C10C33E790B081E030B7B627F3E09BB836EE746C4B",
      INITP_0E => X"03866EDF923F59FE918018C983CD907D2624E99393ED96263DDE7CBF8E1D8C84",
      INITP_0F => X"BFF62E85BA1B83478E27C85897AC62DE9920F830739F23059BE603CF9E85EF85",
      INIT_00 => X"F7FB031408F50CFCFF0507F9E9F5FE02FEF600F4F7FBF70907F1FE04EEFF13FD",
      INIT_01 => X"0904010F010416FFFEF6FAFB06030406F801170105F2FF11F3F6150517FCF401",
      INIT_02 => X"FE0308FBF8071207080FFA05F9F1E5F300F8F5F90D0B00FDF5F3F7F91100F903",
      INIT_03 => X"0F08FDF7FEFEFAFCFE06EEF6030E11090905FD0AFBF201FDF6F604FEFA0B0804",
      INIT_04 => X"F5EEF701FCF100090A0403F20102F719F4EE07EE030210F90804EB03FAFFFE03",
      INIT_05 => X"FE0AFCF6FCFEFE00FDECDFF900120D0602ED0A0D08FDF3010C02F7F40707E408",
      INIT_06 => X"FF050302000B14020200FFF60DF0F706EFF60204F3F8F6E5FC04F9FDEFFA00FF",
      INIT_07 => X"FBF9E6E6FE0FF8F50104F4F6F209091309FA020103050C05010607FFF50505FF",
      INIT_08 => X"01040CFD000904FDFDF7F2EC02040B01070CF3FC0B111206F3F90808FCECF3F0",
      INIT_09 => X"05EFFBF800FFF6F4EDF6FD0BFBFBEF010BFE060C040A090014170BFAEEEFF607",
      INIT_0A => X"FF0A02FE030400FDFDED05FD070F0903E5F5FF03F106FDE8FA010BEFECF9FE06",
      INIT_0B => X"0706FD0205EE06070301050AFCEC01140C08030B0D18FAF0F8F5EE07FFFBF905",
      INIT_0C => X"FEFAFD05EEF1FBF70009110A03170F13130100FAFEEEF8FC020501F1FD1F020A",
      INIT_0D => X"060701F4F0FBFFFCFAF8110BE90702F6EDF2FA080305EDE7ECFF16F9050AFEFC",
      INIT_0E => X"FBF5F7F0F60C050AF7EEF0F9F7FAF202010706F8030D15F80906F7F7FBFEEC01",
      INIT_0F => X"F4F4FC11050407F3FF08F8080B1305F8F7FEFAFCFF0708060F0403060C00F8FA",
      INIT_10 => X"ECF2060D06FA09050C1206FB03F3FDF9E8FEF8F6FB07FDFFFB0703F8F80005F1",
      INIT_11 => X"E8FEFBF1E8FA0100FCFFEFE2FAF6FA00FB0301FCF6F9050507FD09FE0404FAF7",
      INIT_12 => X"090C00FDF70103F6F2030E070BFCFE040507F5100AEEF4F1F1F8F4FA090709FD",
      INIT_13 => X"09FC02EF080C00F6F80612F9FBF900FFFAFF0B0406FEF4F8F8FD010907FBFBF5",
      INIT_14 => X"08ECF609F9FF070B131A010109FD05F6ED05040C1519FEF607FBF6FFFB10FF03",
      INIT_15 => X"F3FFFCF4F0FC0B000F12000A03EFF5F1EBF901F8F807FDED03FEF3FF0A01FD0F",
      INIT_16 => X"F80C0F120DEBE6F7FAED0AE6F3FE09120906FCFA0514FDFA06100CFDFDF6FF02",
      INIT_17 => X"0E0D11FCF0FAEA04110CFEF2F8EE03F80E000F110909EBFF0900FFF3F807FAFF",
      INIT_18 => X"00F2F1F5F8170A0404EDEFEFFF09F9FEFA0807F9F2FB04F1F7FDF805F7FA060B",
      INIT_19 => X"050FF80D0907FC0202EDFBF801F4F9190BFD03FDF7F00003FBF40304F80200F8",
      INIT_1A => X"03EAF10A00EEF90A080B04FB10111206F6FEFBF80406F9E9F6010AFAF10D0500",
      INIT_1B => X"120708000E0AF7FF0002020A0C0503F50CEF050BFF04F0F50005FAFEFDF8F7FB",
      INIT_1C => X"02FC04F40405090EF5EF000B0505FCF6F40B01F2F9EAFE0B07E8F8FDF4141211",
      INIT_1D => X"F9000702F3FB1510F500F4FDFEFE0402FFF2FE03FB0C0CFB090110FDF5FC0713",
      INIT_1E => X"F4F6F90807F0F901F1F4090A0104060204E909FDE8F2060A010B0CEAF8FA070B",
      INIT_1F => X"F1FCFF0209FDFF120A0BFAFDFD04F7FEF7DEFA0D09F5F613130F0D010AF3FDEF",
      INIT_20 => X"15050107010B1302FA00F5030EFD0D0811110D18FE05F1F1000703F8080FF1EF",
      INIT_21 => X"EDFF0B0701F9FD0601F505EE0E0FF2FE080C04FD0407F9F8FB14120003090404",
      INIT_22 => X"FE000211000F08F4F9020CFDE7FBEEFE05F501FFFE06052215FE0CFF0A02E5F5",
      INIT_23 => X"0C02FEF1FEF0F712F90C0AFEFCE701FCE1FA09FF04F3F4F900F3FA04FAFC05FC",
      INIT_24 => X"F4FEFAEE0602080903F5001004F5F8F5020C090F090809E9F1FA01ECECFBF000",
      INIT_25 => X"FD000D0B0A1207FF02F9F60100F40CEEFA030600FE0200030CFE0AFE051409FD",
      INIT_26 => X"00F9FDEEFE0CF90BFF0103F5ED0B1D07F6FEF6ED0503F6F600FD060EF2FC1605",
      INIT_27 => X"F7FAFAEC0B07FF06F60003F3F4F904FF08F7F3F0EFEA1608FF0305FBF603F600",
      INIT_28 => X"0CFD0309050D01070CF8FF0300FEECF50109F7F704F803F3F5040B00FD09FEFA",
      INIT_29 => X"12090005FDF90AF20700EF0B0406010E0501060CFF070A070EECF4FF0B14020A",
      INIT_2A => X"FBFC0203EA18140202FDFAF6FFF70607080100F7F4FCF8F6FBFBF802FCF1FD06",
      INIT_2B => X"F3F4FCF2FF0CF202F6FFFB0F0CFDFC09FF030403FAF40006F50003FE05120600",
      INIT_2C => X"0D0CF7FF05FAF7FF0006161106FB0DFEF104061302F903F3F80601FBF9010601",
      INIT_2D => X"041212FBF2F700FEF5011915FEF7F7F0FD08F8E9FEFC110D05F6050AFF03EB00",
      INIT_2E => X"FBFB040DFFF700191C0FF9F0070F0C0CF7FFF7F90FFCF90B050D09FB0007FAFA",
      INIT_2F => X"F2FC030A03F302090A09FE03E8F9F6FC07080400F901130C03F8EBF3F418FFF9",
      INIT_30 => X"02FDFA05FC07121404EEFAF6F90A02F501050F0D1605E90DFEF3040B0708F7FC",
      INIT_31 => X"FDFBF107020409080500FCEBF7FCFAFB0706E501130503F902FD0F0BF6FCF406",
      INIT_32 => X"F71100FB0CF30607F6F7F0F7F50A0FFAE8F3F6F2F8ECF404030EFFFC00FDFD08",
      INIT_33 => X"F1F8FC0804FCFBFF0C0DFAFB0E090006F90B0A05FAEF0D0308FC07EEFAFDFAF4",
      INIT_34 => X"FAF8F6090BFDFDF3F8FDFC03F5070AFE040708FF040F01F900FB0502FF0FFAE8",
      INIT_35 => X"FFF1E8EFEAF2030A04F803FC0A0B01F3FBF1FEFEF904F7FB06FBED0613F5F4F5",
      INIT_36 => X"0602000CF40600F30008060001F9FF010A0D1002F8FAEAF4E70307F5FEFEFEF2",
      INIT_37 => X"F40807EF0F06FDF10719FF03FEFD0202F7EC05EFF90FFCF60B0EF80A03F608E9",
      INIT_38 => X"031DFBFB06F10600030BFF0515FCFEF8F8EEF0ED04090A08F5000CF900ECFA03",
      INIT_39 => X"0D1006000208F50204F803140A090109E1FA10FA03FB0904F7F20B02F4F40503",
      INIT_3A => X"090BF90A00FF08FCFDFFFDF1FC0204FDF8F6FA190900F601F0EE10FDF6F20206",
      INIT_3B => X"05100FFEEDF7FBFD0006FCF9FAFF0802FBFAF2050B02080507020E040701F6F5",
      INIT_3C => X"F7FD0803F1FB1201F5FEFEFB0902F502F40C0BF7F7FCFCFDF8090B090C0B0503",
      INIT_3D => X"FB0605FE00F6F8FBF50308FE070AFEFF02FEFF0E07F40700F901F9EF060BFBFE",
      INIT_3E => X"F4F8F2F603F9FD0617060504090900F0FEF4FE01F20FF8F6080CF7FCF7080AFE",
      INIT_3F => X"FF02EEFD000A040401F106130803FE07F8F601EEF6030F05FDFEFEF20608F9F6",
      INIT_40 => X"FCFAF1F80203080502030FEAE500F0F505FFF506FBEE060BFAEEFD08F8FEFEF7",
      INIT_41 => X"0AFA0B030C08F7EF0BF7F60702F40CFF01170CF90701F707070AFEFF06FAF2F7",
      INIT_42 => X"F8FE041316F3F2F20014FBFEFDFD02FB020FF3F9F7EDEC07ED07F6FB0601F700",
      INIT_43 => X"0407EAF8F513160506FBF4ECFFED040501140D05F70306F1070DFDF0FBF9E902",
      INIT_44 => X"FEFEF9F900FD001701040E00F4FEF700FDFA05F206F4F2EFE3F50808FD02FCF0",
      INIT_45 => X"F90BFAF1010BFF031C110E0D0F05FF07140312161A031609F1F00108FCFCFA17",
      INIT_46 => X"F7FC01F1FFF9FF01F5E6071707F700F7F40003F6F8070F111511F80705000D0C",
      INIT_47 => X"F30404FDE9E1F500FEFF06090711FF0C09F507081BF805110A0402ED050901F1",
      INIT_48 => X"F2F6060107EFFA0500FC0B12F9F0F6ED0A01F8F40A1001FDF9FB0E0B0E0605F7",
      INIT_49 => X"F8F70213070000050CFDF6030309F7EDF1FFFFFEFAF7FCEF06F3F1F711FFF9FA",
      INIT_4A => X"07FBFDFC0A0A030602FFF1F0080C14EDF60706F6E4F7F500FDEA1000FE0F04FA",
      INIT_4B => X"0004060101F60AF7020D0318FF01FCF80303F8FEF9F2F4010C0F080303020611",
      INIT_4C => X"FBF6FC08F4FD1A0B0E02ED040B08060307FEF4FEEFFAFF0BFDEB060208110E00",
      INIT_4D => X"F80106F8050CEF060901FEFB01ECF8EAF706F60AFCEF04F3FA160BEAFC0EF800",
      INIT_4E => X"0A1707F0FA04F6050AF9F0FC13F60607FFFCFF03100DFE010E1105050BF00103",
      INIT_4F => X"F602F6F10EFF0305FA0B0BFF12FCF00004090E09E9F304F4E8FE0C0113F0EC02",
      INIT_50 => X"FDE2DFF8E80E09130EF10A0101F8F60213FEF4F5F90CEFF509EFF7FAE9E9F5E6",
      INIT_51 => X"EF040F0B07190CFD04F5F6ECFD03FB06FC11EFF704F3FDFDF2F702FC00F2ECF1",
      INIT_52 => X"F904150DFB03F9F5F6F6EBFD04030E03E7081A1800F5EFF4FEFDFB09100B01F7",
      INIT_53 => X"FDF402E6FFFCFD10FBFAFC0A0A0901FC1110130605070B02FC040302F1F9FCFD",
      INIT_54 => X"000BF80F0BF90D160505E9F91401F20504FAF9FD0C1A17FCF405020D0E020105",
      INIT_55 => X"0201FBECFC0700FF0207FBF70AF9FF09F5FD01F913F9FB03FD01F6FD1701EAF9",
      INIT_56 => X"FB03FCFF0501F70007F4EDF5ECFC02F0F3010100FC0511060BF605040207EBF3",
      INIT_57 => X"FE040C080BE9FB13080DF9E9020B0A01FBF709FA0005F9F7F1F4F2F60300F507",
      INIT_58 => X"FBF10700F9FC0803F7F301FC07FCFF03040A01F2F1F9FA0E0BFCF8070F06FC13",
      INIT_59 => X"F6FFFAF6FE061F0F0806070E0E0006030806EBFF1405FCF6EB07F0F704F0F0FB",
      INIT_5A => X"E3E6F40318FEFBFE050F100AF9EFF3F4F3EFFE02F2FD09F3FB1617FDF8FE03F8",
      INIT_5B => X"FC01FF021FFE0101F5FCFFFAF5FEF7FBFFF606FA07FBF7F202F9F6F90900F801",
      INIT_5C => X"FC0A1507FAFEE9EC04F8081005FCE70501FC0506010908FC0F03F80B071103EB",
      INIT_5D => X"041010F7EDF300080C0CFD03FBFFFCFFFE110505FBF61007FB0101FCF1F4FEF8",
      INIT_5E => X"F4FCFAF609160CFAF10CFF09FEFDF9FB0FFDF3FD04F2F8080409091108F9091B",
      INIT_5F => X"FBF6F506FA070401091804030512050507FBEC050F0E0C080D01020A060EFDF0",
      INIT_60 => X"05ECFD00030CFB07020AFC080AFBF10D06F508060C0A0DF7EF02020504101714",
      INIT_61 => X"FD01EEF5EDF2FB06040805040409EFFAE8EB070F10020AFAF1FA020B10F1EE02",
      INIT_62 => X"FF161E1204F90901E8D6000EFC11FD0DEAEDFBFE0708F6F808FFFEF5FC051102",
      INIT_63 => X"FBF9E6F2F0F9050B05F9F402100300E4000AFEF9F205E6E810F7F5FEF2EDFEFE",
      INIT_64 => X"03FA0201FA0FF5040E06F9FA060E0FF6FA010EF3FC080209F8E80F23FFF703FE",
      INIT_65 => X"070D0D000CFE0402FCFE01FEECFE1406F5020500F70AFFF8F6F2041413FD0B0A",
      INIT_66 => X"FFF304FD0B1407FEFB0E09FF07FF02F7EEF1FE0AFDEDF7050B03F8010103F6F9",
      INIT_67 => X"F2F30E09F5F3F3F904F6E7FA02091706100D020F0002FDFEFDFBFD030C06FAEF",
      INIT_68 => X"FEFBF904FCFDF6040AFBF2FC00F203000CFAF109ECF20B1100FE0709F801F9FE",
      INIT_69 => X"EBEFFC0001000902F40F04F8F400F6EFFD01F2F6F2081510120CFEF90CF5FA06",
      INIT_6A => X"FF01F8FD03EAFBF9FA00EDFF08F1FF080502F60505FAFBF7F8F8FFFE0D01E8FE",
      INIT_6B => X"F711F6F7010D160FFD0C03010D0805FFF2F6FB020C0D050D0A03FAF704140706",
      INIT_6C => X"03060804F9F503060500ECFC0A10FDF4E7FBFB0803F7FBF6FE080CFF0B000301",
      INIT_6D => X"06FEF406F9ED020BFE0A0F00F4F20BFF00F8FF0C0A08F4FEF4F8030A090202F9",
      INIT_6E => X"FAFAFC0C0305F4FA04F60A07F906F5F5F706F1F5FBFB0D10F2F7FAFE0B00EAFC",
      INIT_6F => X"010A02F8FC00EF000A150FF2FBFB11F6EE0A04FD090707EC10FF14FFF3E9F0FF",
      INIT_70 => X"F5010508F5EDEC0D09060EFCFEFA10F8F2030700FBF8080FFE0E08050AFA0300",
      INIT_71 => X"0B06F6EDF4FD02F8F0F903FAF5F3FE0600EFF3FCF9FD0E07F205FFFEFDFBFEF5",
      INIT_72 => X"F30013FB0004FDFAF9F8FB09FEFA02F3F10607FF07F8F2041A03F40301FAF603",
      INIT_73 => X"0505FD0702FFEF04140BE90308ED0103F7F0F50BFB180CE6FD0001E2080DF2FB",
      INIT_74 => X"F80305050708F0FFF6FD1112EFF20DF6F61303F60012041512F3FDFBF2FF05F7",
      INIT_75 => X"FB050BFF151214F7FB000C050C050916020500F4FE051000FFFE0805EF1006F6",
      INIT_76 => X"FD0305FB0402FF141006F9F2F4FEFAF515FA03FDFA0711FBF4F0F0F4F3E5FD05",
      INIT_77 => X"030B00110E0AFCE3F315010803F2FA070DFBF400FCF2FE00F9F703F4FAF1F3FC",
      INIT_78 => X"F40512FAFBFAF70EF302090702F200FEF3E5EB06F9EFF0FFF710180C0CF601FE",
      INIT_79 => X"F7080BF5FD08F9F3FFF6F3080CF7F403060200000310FEECFDFD0509F3F0F9E9",
      INIT_7A => X"09FAEEFA050DF4FCFB0703F1FBF9F6F70816F9050E03F1F80400040914F603F9",
      INIT_7B => X"F7030BF6F50106FD0A03EF030E071105F6FAF8F7FA00030F030DFEEB02080808",
      INIT_7C => X"F91506F508F1EDF9F602FD00F3FA011415F6F8010101FF03FEFD03F0EEEDFA04",
      INIT_7D => X"F007030BF7F0FB050D06FD0F11F1F7FDECF70B08EF0B070800FB00F8F60B0404",
      INIT_7E => X"F602FBF3FA00FE020F0505F2FF08FDF5F206040A0504FEFC00E8070300EEEFFD",
      INIT_7F => X"EF06FDF7FBEBFEFBF2FAE8FC07F3F7080303FE04E5FBFF0BFA1114160FF704ED",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => dinb(8),
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_23_out(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => p_22_out(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_23_out(8),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => p_22_out(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  port (
    p_19_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_18_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized9\ : entity is "blk_mem_gen_prim_wrapper_init";
end \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized9\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"7FB420E7B44168DE69707D09E64F24F9EB7BFBC7031047FFC5727E7FD12F63F3",
      INITP_01 => X"CD861610FF8CF8ADC519641B0C272A0898664F219004B01ECEC046CEE8F73BFC",
      INITP_02 => X"FDF1E804EF020BD880678957AA6C7746C6765002C8806A011CB8224C61355917",
      INITP_03 => X"85021315620F8F45C3786E7B5B8C359325E1D99DC8051A70AFBF1C6BC1C02879",
      INITP_04 => X"C039FEF28FC9EA219B0587BDAE010FB1C730EED42839DD8EE1F76C593E571842",
      INITP_05 => X"3DDA0E1E35C46F8BE41CE28EFC7C43B79C9CC8F86E860E8901EE37D3F7A64C79",
      INITP_06 => X"0067206238A7E47E706FF1727D92CE39C347B1BCFBF028BFFDCC04F8717BE180",
      INITP_07 => X"D1DD16CC67B02D887996E67081D8E3EF5FE678703BF4EFCB83FBDEC75E16E379",
      INITP_08 => X"7801DFB020441FFFBD803E747C29E7295BF7B04D618D9CC5C1836B0B05B004DF",
      INITP_09 => X"596E4E4DE8533205FC26360BE60FCB91F88FB24C003DC67966BC8FF83CFA96DB",
      INITP_0A => X"6CC84078140B19FF1C3FE9C825F5749D049DA37E61B65F8068279A67A3A7839E",
      INITP_0B => X"00F8D23FEE4CC3F5E620F9C0C5C3DA8DB3EE00B033EB84AF33E9661DFFE03D28",
      INITP_0C => X"7E1E7E372760DC7861D83438CF87362679474B4E5FC066D8407897CEC14397F1",
      INITP_0D => X"DACF4E003344FC01F0E6DAD08232CFE491F1CFF87FFE11F124270A1F87847CF8",
      INITP_0E => X"469F2133BDB7FC021439D66849AF489C9E42683436964878B8590E74B7FB0259",
      INITP_0F => X"F5E0D3ECC8DF0E74FF0ED712F0CBF37E7E0FA4431E05700E1C3C9E78ABF19C40",
      INIT_00 => X"F3FD0DFC1C0700FA0600F203FBEDF1FE0FFAFD090A15FDFAFCE4E0F41214F8F6",
      INIT_01 => X"E2F60F000EFD00FD02FCF9F30F07FE0A07FBEEE7F4F6F00808EFF8FFF7F4F8FA",
      INIT_02 => X"0C0D040B0819F6EB011406FA000B0B110EFD010005F1FEF9F3F0FAF7E9FCF5F5",
      INIT_03 => X"F7FDFE04F808F8F112E6E9F8E302F3FDFAEDF7FAF306F5EBE7EC021905E1FAFE",
      INIT_04 => X"FAF0F9040AF5F6070EF6070AF8FBFFFD0907FE0D09F80307FDF3F2F8F9100AF1",
      INIT_05 => X"0DF5F600FF1901FF0AFEE6E9060F011606F8FAF9F5F402FC070C0500FD0100F6",
      INIT_06 => X"F50BF5FC03FF000800F210140C0A03F506FDFB07FE050C08F7FB02FFFBEEF915",
      INIT_07 => X"09F4EFFEF3F0FEFEF808F7E309F701060701FC06050E010EFFEBF60702FEF4EF",
      INIT_08 => X"F6F8FD0BFA050902F0F2FEEC07FAF2F90609F1EFF40CEFF8FFEDF0F7FBFD0A02",
      INIT_09 => X"EFF70D02FFFAFB00F3F70003120D030504F8060D08F4F504F4F6080CEDFCFD00",
      INIT_0A => X"F6030AFC080C01010C09000E02F8080BF708FFF80E1E090D071218EFEDEDFF09",
      INIT_0B => X"FF0900F4ED010F090BF8FA0301F8F4080AFB0109F5F5F7FC150AFF080B1106F5",
      INIT_0C => X"09130201F3F81E0C0306FE1009F2EEFA050DF902FC01F300060F1D09FB061F0A",
      INIT_0D => X"E6FD010905FF01F8070D0FF8FF0004FE00F8FC0509FF05000B0B06FFF90DF4FC",
      INIT_0E => X"F7E0F2EFFDF8F8FFEB031508F0FB0108F6F2FFFFFF060C05FD03FD01FCE603F1",
      INIT_0F => X"FDFE030CE0F506F1FA03060102FDF600010B04F802FFF808060F03F9080C1716",
      INIT_10 => X"04FAF8080D080DEF0015FEFE04FD05FF00F603FFE50602FB010E09FA0CFEE2F9",
      INIT_11 => X"060600FAF9FE0807FD03F8FFF6010D050600FE080B0AF70406FF130EF1FA1403",
      INIT_12 => X"EFF1070EFB010B18FF0E0E0A0405060A09FEFC08FD06E20605050B06110C07EC",
      INIT_13 => X"F7EB0B0A06F1F10B01FAF7DF01FAF81301FE03F7060B070913070E080603FE04",
      INIT_14 => X"FF0CF704F60DFD0B0DFDFB02FFF3011001FFFEFF01F5F1FA02FA040A03F5EC03",
      INIT_15 => X"F4101A0D0F090B1E09F3FB050DFCFEF0F8000009F50202F401FA03EC08F9F3F9",
      INIT_16 => X"FBF7FC02FEE9F1FC0C01130E0B03FF12061C0C06F704FFF8F8FB04FAFD190700",
      INIT_17 => X"FBEFFEFEF2FF02FBFEEFF9F5020300FBFBFFFE01F90612010201030405F4130A",
      INIT_18 => X"FAFC0E0A020509F9DEF106000E0E0C070401FD07FC0A17100CF8F8F7F90705FE",
      INIT_19 => X"FF0EFC05FDF8FEFFFB0EF6F2ECE9EAED070E04E9F5EA080209F7F80BF010FBF9",
      INIT_1A => X"FBFE0D01F71408080C190A0202FB09FC101001F2F009FF0905FDF4FC10100B00",
      INIT_1B => X"0107F50009F107FBE8EEFD06030C0BF5F3EA06EFFA1207FDF70E04FEF7FF0AF1",
      INIT_1C => X"02FE05F9F50EF7EEF8041001ECFA050A040DF8FF03F104FBFB000FEF0100FCEB",
      INIT_1D => X"F1EC03090B08FAFE06F9F2FCF70400080EFEF80AFFFDF80906F1F2F3FB05EFF5",
      INIT_1E => X"0AFAFA0B0802EB07140B070FFFF2FEFDEE01030CE3F5F2FF04F8001600F708F5",
      INIT_1F => X"F506020300F90DF91313010D0D10FB0111000BFC010BF5F6051D07FF08FB01FE",
      INIT_20 => X"0501F6FDF7F4FE0805FD06FB0DFFF5FE08070BF3FB0E030E0AEF0E050104F803",
      INIT_21 => X"FAF9F711070305F7FCFBF7F309FEFCFB07F3E908F3F80E0308F902ECF60A05F7",
      INIT_22 => X"0600E902F80101030206F6E9F30312FEF0F304FFF5F405F9FD0F020FFCF1EE00",
      INIT_23 => X"FBF4020E06FFF8EB0412F5FB0A050004FFFAFF06F4F4FD08F7FA03FE02FB0403",
      INIT_24 => X"EE0AF100FFEFFF11070C0A02010F0AF103020210F7FAF8FAF000FAF90D1007FF",
      INIT_25 => X"EF0300F5FE04FBEA030A0A1600FA0AFBF901020101F6FBF5F008F4F5F9FB05F4",
      INIT_26 => X"FD041B02EEF4F2FAF2F7090EFE0605EFFFEEFA02FD0AFD131103FF10041202F5",
      INIT_27 => X"EEF60004050302030400FEFCFB0502FBFEFEFEFEFAFDFB00F5F5F6F60D09F602",
      INIT_28 => X"F3EEFEF70DF5F6F2EF05F90506FDF20406F50007FEF90A0606F6E6FFFE0605EA",
      INIT_29 => X"0907000E060406F7F0F4FF03F7EDFB040D09FBFD06F9FEFEF1FA05F90709FBF8",
      INIT_2A => X"03FAF408FBF4FC0FF50A0B0F14F7EA1204101706FCEBFC02F0000E0AFB0215FA",
      INIT_2B => X"F10202F0F9FB0807FF0903F4F3FD010CF3E40215F3030905F7FEF9F0F3080805",
      INIT_2C => X"F3FAF0FBF9EB0B0C09F4FDFEEFEC050C02F300020F08ECF3FD07FEF801FEF4F1",
      INIT_2D => X"F9F3F40508F00813050405FFFBF80000FBFEF3011304F910FD0B1606F6F7F408",
      INIT_2E => X"0A0DF1FE0CFE00FFFDED000D02E40A0A04F1FB09EBF4FAFBF50A0405FE03FFF1",
      INIT_2F => X"0313F7F9FCF501F4FCF607F9F807FF0C05030C02FBEBE603000C00F7F7F3F407",
      INIT_30 => X"00FDFBF0031108FE03FBF4F7F405F8F7FAE9E60C06010AF0FD08080708070C03",
      INIT_31 => X"E5F3F1F5F4F401FAFEF7000BFAF5100B181A101812FD0303FBF4F2EFF9090503",
      INIT_32 => X"F8E2F4F8FF11FAFCF3EBDFF8080105040403F000FD0D050FFD08F2F0FFFBF2F8",
      INIT_33 => X"FCF10D010D11F1F805FC0C160DEFEFFAFE09F1FC020C09F7F700F8F4FAFB080B",
      INIT_34 => X"08F4F9EFE9F407FEF90106ED0805F702FFFE0E0DF6E3F60B0A09FDF1EF0D05FD",
      INIT_35 => X"01F4FDFC0B11001704EBE306FFE9F5F8FBF9F4FB07000FFC01FBFCEF080EFB0A",
      INIT_36 => X"1405F0FDF8010C06F900F90D0DFEF2FEFCF8FB0100EF161701F2E8FAF6F6F603",
      INIT_37 => X"0F150D0E0106030101FFFD1E1EF6FFFE0413F8040400041003F1FF020F00F606",
      INIT_38 => X"01FF08FFFCF6F616081204F80DF3FB00EDF6EF011702FEFF00F4F8EBFC0B14FD",
      INIT_39 => X"F90515100306F6F8FCECE0EBEC0BFEFDFAF109FEFDFEFB04FFF8020301FFF6E1",
      INIT_3A => X"0909FEF6FD05F9F5F5ECF7FF05FF0500FBFDFE0FFCF4F6F5ECF80D00F814FBEF",
      INIT_3B => X"11FE06FDF8EFE4ECE7E7F80307FCF80306FAF8FCFE03011210F3FDF6171D0708",
      INIT_3C => X"FB020F02000107EDEEF800FDF80A1E13FFF2F200070AFEECFBFEFC0DFCF1F0FA",
      INIT_3D => X"08F5FEF4F70504F8F70A07F708F0FB06F9F7F20C0CF6F30A04EFF1EB021A1708",
      INIT_3E => X"12F7F90107FDF4FFF20BF7F2090F0F190C05ED08F9F80CF6F3070603FE100606",
      INIT_3F => X"F9FB07F4010603FBEBFC0BFBF1F70DFD0E1406F407FDF500FEFA0002FBFE0F04",
      INIT_40 => X"0F05050601FF00E0F400F7F80801020B10130E0C05F10110F4F30DF5F3EFFAFA",
      INIT_41 => X"FDF80A0D060708FFFC080E11040AFCF405FDF80AF508ECF708040F07F903E7F2",
      INIT_42 => X"07F4F901241106FAF7020504F5FF00FBE60209F6FFF7010AEDED0B0508FA02FD",
      INIT_43 => X"01F80AF9FB06EFEFF7F3E7F40CF0F9F4F409F6FF0704030E08FF000CF8F404FA",
      INIT_44 => X"0FFEF3FFEFF70B051D06FF03F60D06ECF5F8F30402FAF7F4020CFF08FF050EF2",
      INIT_45 => X"FC0EEEFCFEFB00FDFC010707080F0007050CFFF1FCF7FA0C02F2F7FD17F60D0C",
      INIT_46 => X"0B03FD030602101008FA061002F30900030100F5F8FCFFF9FAF6F9F4F9FEFFFE",
      INIT_47 => X"00FCF3FCF6030703020E040F0A070AFAFBED02F1FBFDF9F8F206F7F80E030907",
      INIT_48 => X"0A06F6FEFFFF070BFBFFFEF7FD05EF01FA0C03F100FEFC01FBF501FAF801FCF4",
      INIT_49 => X"0CF8FB0C0AF2FB00ED03FEE1FDF3010EFF020203F3FDF6FAFBF7F2F7F7050F01",
      INIT_4A => X"00040D0C0D0D05040A04FFFCF0FD09FAFBFB070D00FBFE0013E3F1FAFC0301F1",
      INIT_4B => X"FAF6EDE9EF050400FF120501F7FFFBFDFB00FEED0804FB0107FE0F07F7F50A03",
      INIT_4C => X"F5F4FB0501F7F302170F0C06F3FAF5FAF8F9020DF503EEF4F70507FE111B0FFA",
      INIT_4D => X"F0F2FAFAFCF40A020806FC170EF7F4070F0FF6FF00FBFE130606080AFC03F0EE",
      INIT_4E => X"FCFFFF05F410180802FF08FE0809FEE61411F4FC0008FC050401000307FD0EF7",
      INIT_4F => X"05EF0FFCF60D06FD08F9FD0EFFF6E90607FA1205FAF8EF0604F8050DFFF704EA",
      INIT_50 => X"FA08FE000203FAF4F300FC1509FFF2F7F90515061405F8ECE9020DF5EEFFFD0B",
      INIT_51 => X"12FAFB0DFC02040E0500FB0D05FDFAEEFD0601F3F616FC0103FEF7070FF9F4F3",
      INIT_52 => X"07FCFE0405030CECFD07F5F708F4EE0901F102F8EBFDFCF1FD010402050A1407",
      INIT_53 => X"0B0A060F07FA0A10F3020BFBFBFD05F5FD05FF010511FAFC0EF9FAFCEAE2EF07",
      INIT_54 => X"1314FC0306FD00F2F0F4F7F807FD00FF03FCFFFD03F50D0AFD1202FDF2FA00F8",
      INIT_55 => X"06050FFAEBFC040D0A00F4F6FCF6FBFDF4F3F40BFE040EF8F4F60810F9030904",
      INIT_56 => X"0A030AFA0BFD091F0801050CFB01FEF5011017FBFA1108F6F8F9FAF8F5F9F7EC",
      INIT_57 => X"12F5E803EDF70203FEFA020EFC19110807F71D0C0506041505FCF2ECF7030E03",
      INIT_58 => X"F5F7F8F3F8F7EFFBFDF5F013140208090509DDF6F5F808FF0905FF1EFB030910",
      INIT_59 => X"020EFCF70306FEF6F6F3EF00FD0810FF0DF9FC000FF1F9090C1107FEF7EB02F9",
      INIT_5A => X"0D0CFDF50506FCF7F9FFFF00F001FCF5FF04070D09FA0007FE0BFF06FCF9E1FD",
      INIT_5B => X"F90AFBF70C01F4F8FAF2FB08F5F4F6190F0B14071314070CFF08F6F603090007",
      INIT_5C => X"FBFF030D09F00BFBFDFD11060901F1F5F6F803FBFF0DFB00FE040011FDEC06FC",
      INIT_5D => X"E9FBF90C04F5F2000A07FF090C0C0F02FDF8F1FFFE0607F6F9F30C00040C0208",
      INIT_5E => X"ECF8F90BFDF5F80700FE0F05EFFC1401FBFE14070B00F6F5FDFCEFEB09FE05E9",
      INIT_5F => X"06060C000E1C0507FDF9EAEFF80D0A11F9FC06FF0D05FC010E00EFEEEBFCFBFE",
      INIT_60 => X"F2F40E070C0302F903FD030C0C07F7F7FA0907FF03F7F5F0F7F4F9FB0B0C06EF",
      INIT_61 => X"06F50307080E090002F5F8FAFB070E12FD0203FA02EFF2EAE5FC1006FCF4FC02",
      INIT_62 => X"02FC05F2F0F2FEFEF7FE000306060B171AF8FE0506EFFE04F5FF08FDFC050003",
      INIT_63 => X"00EFF6FFFA0106FE01F6041305FEECF501FA070AFA03F0FB09FE0300EBF5F415",
      INIT_64 => X"F0FD1416F9F8F8FDFF060A010CFEFFF40A0CFDEE05F2F919130FF81308F1F605",
      INIT_65 => X"20F6EC0C120414FDF6FD01F5F20D100A1318FBF606EB15040C06F5FBFE010507",
      INIT_66 => X"0A05FE0E05FADEFF08F0FF040A09090AFDFF04F6F5F1010D00FBFFF5F8050315",
      INIT_67 => X"0FF7F0F3FFFBFC01041106EBFBFCFA0806F8F8FDF5F8F7071811F9F106FCF7F5",
      INIT_68 => X"FA020D0303E2EAFBF503010204F60D0609FDF6F7FAF60713EAF1ECEEF20D030B",
      INIT_69 => X"0300F20B0BFC08090600E80F0FF7F1EC08090500FE0EFB04130806F7E6FFF7EF",
      INIT_6A => X"00F6EEEEF8F5ECEFF9EEFFFFF5F6F105080408FE0A1011F7FEFCFEFE030504F9",
      INIT_6B => X"FB1103F8080801FCF5FBFDFB010D11FEECF00B01F2FCF6F8FEF4F5EFFA0A0307",
      INIT_6C => X"FE03140D060CFE081B09FEFA0D00FA08ECF10408FAF3F5F3FBF2FA050AEF0407",
      INIT_6D => X"F9EEEFEF0404020CFBF3FD0907FCF407F1F912FCF503FC02ECF404FF01150301",
      INIT_6E => X"0301F6FD0A02EFF707FE010A08F80813FDF9FAF3F6F9091107000A160C0507FC",
      INIT_6F => X"F4FE02F7FD04F701F4FF0508FBFBF4F104F70C06FFF9F90E050403080819130D",
      INIT_70 => X"F90CFCFF05FDF2F2F2E9E5F0F705EBFA0506061D0207FB070DF810F7F41202F5",
      INIT_71 => X"FF07FEEEF504120E06F908FFFB0201FE00091A06F1EAF40E03FAFAFE11FF0512",
      INIT_72 => X"0909F4FB02F4F501F70B09FD06FCFE0A02F30304EF0809020AFEF3FEFE141903",
      INIT_73 => X"FD0201FBFBF4ED030AFB06070104F6030AFFE807FC080D040206F3F003F60711",
      INIT_74 => X"09FE1003F90207FDFF05FF07FDFCF4ED08F80602FD061201FD0302F4E2FF0505",
      INIT_75 => X"051209F806FB01011102F4F5FA070CF9FAFA05FE05F3FB160DFFF90FF90D0905",
      INIT_76 => X"F002FAF0EFF911F7EA06FCF705FDFFF7E9FCF6EFFBF40A0A0C0E160C0505E810",
      INIT_77 => X"06F606090DF6F307EA0C00F9F5F8FEFA070EFE03050704FC1105FCEE0B12F3FF",
      INIT_78 => X"F801F208FF06F2FFF6E4F2FD01120EEDEE0B0DFCF9F90F0F06ED0404080E0107",
      INIT_79 => X"030D02FAF9FE04110403FFE8E8F30A19FE0406FCF8FFF20F05FCFEE5F6150E06",
      INIT_7A => X"001305F2F3F5FB09060F220F00FE00F80CFFF5FF031308060E06020AFEFDFC05",
      INIT_7B => X"03FDFAFEF6F3FE040B060602EBE9F8F4FD0FF20601F3090D02FD02000208F8FF",
      INIT_7C => X"FBFCF0F40114060AF0E70201FE0BF3EEF5EDE9F90909FAFF0BF4FAE4F3FBF409",
      INIT_7D => X"F6EFF9FAF5F9F6F2020B0A02FBEEF102F3FF03FD00FBFDFD060603F51004FE0D",
      INIT_7E => X"F1FF1609FB0B0F08F9F702F3F1EFEFEF03080708F9FCFF110EECF4FA02F5060B",
      INIT_7F => X"FCFAFAFE11FD05FCF7FBF60301060806F4FF08FE0611FAF0F9E2E90BFAF20702",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => dina(8),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => dinb(8),
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_19_out(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => p_18_out(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_19_out(8),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => p_18_out(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_I_blk_mem_gen_prim_width is
  port (
    \douta[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    \addrb[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    dinb : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_I_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end blk_mem_I_blk_mem_gen_prim_width;

architecture STRUCTURE of blk_mem_I_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.blk_mem_I_blk_mem_gen_prim_wrapper_init
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      addrb(14 downto 0) => addrb(14 downto 0),
      \addrb[15]\ => \addrb[15]\,
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      dinb(0) => dinb(0),
      \douta[0]\(0) => \douta[0]\(0),
      \doutb[0]\(0) => \doutb[0]\(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized0\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 0 to 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    dinb : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      DOADO(0) => DOADO(0),
      DOBDO(0) => DOBDO(0),
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      dinb(0) => dinb(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized1\ is
  port (
    \douta[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    \addrb[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    dinb : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      addrb(14 downto 0) => addrb(14 downto 0),
      \addrb[15]\ => \addrb[15]\,
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      dinb(0) => dinb(0),
      \douta[1]\(0) => \douta[1]\(0),
      \doutb[1]\(0) => \doutb[1]\(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized10\ is
  port (
    p_15_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_14_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized10\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized10\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized10\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized10\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      p_14_out(8 downto 0) => p_14_out(8 downto 0),
      p_15_out(8 downto 0) => p_15_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized11\ is
  port (
    p_11_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_10_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized11\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized11\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized11\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized11\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      p_10_out(8 downto 0) => p_10_out(8 downto 0),
      p_11_out(8 downto 0) => p_11_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized12\ is
  port (
    p_7_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_6_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized12\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized12\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized12\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized12\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      p_6_out(8 downto 0) => p_6_out(8 downto 0),
      p_7_out(8 downto 0) => p_7_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized13\ is
  port (
    p_3_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_2_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ram_ena : in STD_LOGIC;
    ram_enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized13\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized13\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized13\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized13\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      p_2_out(8 downto 0) => p_2_out(8 downto 0),
      p_3_out(8 downto 0) => p_3_out(8 downto 0),
      ram_ena => ram_ena,
      ram_enb => ram_enb,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized2\ is
  port (
    \douta[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \doutb[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(1 downto 0) => dina(1 downto 0),
      dinb(1 downto 0) => dinb(1 downto 0),
      \douta[2]\(1 downto 0) => \douta[2]\(1 downto 0),
      \doutb[2]\(1 downto 0) => \doutb[2]\(1 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized3\ is
  port (
    \douta[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    \addrb[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    dinb : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized3\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      addrb(14 downto 0) => addrb(14 downto 0),
      \addrb[15]\ => \addrb[15]\,
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      dinb(0) => dinb(0),
      \douta[2]\(0) => \douta[2]\(0),
      \doutb[2]\(0) => \doutb[2]\(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized4\ is
  port (
    p_39_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_38_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized4\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized4\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      p_38_out(8 downto 0) => p_38_out(8 downto 0),
      p_39_out(8 downto 0) => p_39_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized5\ is
  port (
    p_35_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_34_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized5\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      p_34_out(8 downto 0) => p_34_out(8 downto 0),
      p_35_out(8 downto 0) => p_35_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized6\ is
  port (
    p_31_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_30_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized6\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized6\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      p_30_out(8 downto 0) => p_30_out(8 downto 0),
      p_31_out(8 downto 0) => p_31_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized7\ is
  port (
    p_27_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_26_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized7\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized7\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized7\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized7\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      p_26_out(8 downto 0) => p_26_out(8 downto 0),
      p_27_out(8 downto 0) => p_27_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized8\ is
  port (
    p_23_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_22_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized8\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized8\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized8\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized8\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      p_22_out(8 downto 0) => p_22_out(8 downto 0),
      p_23_out(8 downto 0) => p_23_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \blk_mem_I_blk_mem_gen_prim_width__parameterized9\ is
  port (
    p_19_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_18_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \blk_mem_I_blk_mem_gen_prim_width__parameterized9\ : entity is "blk_mem_gen_prim_width";
end \blk_mem_I_blk_mem_gen_prim_width__parameterized9\;

architecture STRUCTURE of \blk_mem_I_blk_mem_gen_prim_width__parameterized9\ is
begin
\prim_init.ram\: entity work.\blk_mem_I_blk_mem_gen_prim_wrapper_init__parameterized9\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      dinb(8 downto 0) => dinb(8 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      p_18_out(8 downto 0) => p_18_out(8 downto 0),
      p_19_out(8 downto 0) => p_19_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_I_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 11 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    dina : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_I_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end blk_mem_I_blk_mem_gen_generic_cstr;

architecture STRUCTURE of blk_mem_I_blk_mem_gen_generic_cstr is
  signal ena_array : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal enb_array : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_10_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_11_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_15_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_18_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_19_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_22_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_23_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_26_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_27_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_30_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_31_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_34_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_35_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_38_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_39_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_6_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_7_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ram_douta : STD_LOGIC;
  signal ram_doutb : STD_LOGIC;
  signal \ram_ena__0\ : STD_LOGIC;
  signal ram_ena_n_0 : STD_LOGIC;
  signal \ram_enb__0\ : STD_LOGIC;
  signal ram_enb_n_0 : STD_LOGIC;
  signal \ramloop[1].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_1\ : STD_LOGIC;
begin
\bindec_a.bindec_inst_a\: entity work.blk_mem_I_bindec
     port map (
      addra(3 downto 0) => addra(15 downto 12),
      ena_array(7 downto 3) => ena_array(8 downto 4),
      ena_array(2 downto 0) => ena_array(2 downto 0),
      ram_ena => \ram_ena__0\
    );
\bindec_b.bindec_inst_b\: entity work.blk_mem_I_bindec_0
     port map (
      addrb(3 downto 0) => addrb(15 downto 12),
      enb_array(7 downto 3) => enb_array(8 downto 4),
      enb_array(2 downto 0) => enb_array(2 downto 0),
      ram_enb => \ram_enb__0\
    );
\has_mux_a.A\: entity work.blk_mem_I_blk_mem_gen_mux
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\(1) => \ramloop[3].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\(0) => \ramloop[3].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => ram_douta,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[2].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \ramloop[4].ram.r_n_0\,
      DOADO(0) => \ramloop[1].ram.r_n_0\,
      addra(3 downto 0) => addra(15 downto 12),
      clka => clka,
      douta(11 downto 0) => douta(11 downto 0),
      p_11_out(8 downto 0) => p_11_out(8 downto 0),
      p_15_out(8 downto 0) => p_15_out(8 downto 0),
      p_19_out(8 downto 0) => p_19_out(8 downto 0),
      p_23_out(8 downto 0) => p_23_out(8 downto 0),
      p_27_out(8 downto 0) => p_27_out(8 downto 0),
      p_31_out(8 downto 0) => p_31_out(8 downto 0),
      p_35_out(8 downto 0) => p_35_out(8 downto 0),
      p_39_out(8 downto 0) => p_39_out(8 downto 0),
      p_3_out(8 downto 0) => p_3_out(8 downto 0),
      p_7_out(8 downto 0) => p_7_out(8 downto 0)
    );
\has_mux_b.B\: entity work.\blk_mem_I_blk_mem_gen_mux__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\(1) => \ramloop[3].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\(0) => \ramloop[3].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => ram_doutb,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[2].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \ramloop[4].ram.r_n_1\,
      DOBDO(0) => \ramloop[1].ram.r_n_1\,
      addrb(3 downto 0) => addrb(15 downto 12),
      clkb => clkb,
      doutb(11 downto 0) => doutb(11 downto 0),
      p_10_out(8 downto 0) => p_10_out(8 downto 0),
      p_14_out(8 downto 0) => p_14_out(8 downto 0),
      p_18_out(8 downto 0) => p_18_out(8 downto 0),
      p_22_out(8 downto 0) => p_22_out(8 downto 0),
      p_26_out(8 downto 0) => p_26_out(8 downto 0),
      p_2_out(8 downto 0) => p_2_out(8 downto 0),
      p_30_out(8 downto 0) => p_30_out(8 downto 0),
      p_34_out(8 downto 0) => p_34_out(8 downto 0),
      p_38_out(8 downto 0) => p_38_out(8 downto 0),
      p_6_out(8 downto 0) => p_6_out(8 downto 0)
    );
ram_ena: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(15),
      O => ram_ena_n_0
    );
ram_enb: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addrb(15),
      O => ram_enb_n_0
    );
\ramloop[0].ram.r\: entity work.blk_mem_I_blk_mem_gen_prim_width
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => ram_ena_n_0,
      addrb(14 downto 0) => addrb(14 downto 0),
      \addrb[15]\ => ram_enb_n_0,
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      dinb(0) => dinb(0),
      \douta[0]\(0) => ram_douta,
      \doutb[0]\(0) => ram_doutb,
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[10].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized9\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(11 downto 3),
      dinb(8 downto 0) => dinb(11 downto 3),
      ena_array(0) => ena_array(5),
      enb_array(0) => enb_array(5),
      p_18_out(8 downto 0) => p_18_out(8 downto 0),
      p_19_out(8 downto 0) => p_19_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[11].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized10\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(11 downto 3),
      dinb(8 downto 0) => dinb(11 downto 3),
      ena_array(0) => ena_array(6),
      enb_array(0) => enb_array(6),
      p_14_out(8 downto 0) => p_14_out(8 downto 0),
      p_15_out(8 downto 0) => p_15_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[12].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized11\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(11 downto 3),
      dinb(8 downto 0) => dinb(11 downto 3),
      ena_array(0) => ena_array(7),
      enb_array(0) => enb_array(7),
      p_10_out(8 downto 0) => p_10_out(8 downto 0),
      p_11_out(8 downto 0) => p_11_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[13].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized12\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(11 downto 3),
      dinb(8 downto 0) => dinb(11 downto 3),
      ena_array(0) => ena_array(8),
      enb_array(0) => enb_array(8),
      p_6_out(8 downto 0) => p_6_out(8 downto 0),
      p_7_out(8 downto 0) => p_7_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[14].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized13\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(11 downto 3),
      dinb(8 downto 0) => dinb(11 downto 3),
      p_2_out(8 downto 0) => p_2_out(8 downto 0),
      p_3_out(8 downto 0) => p_3_out(8 downto 0),
      ram_ena => \ram_ena__0\,
      ram_enb => \ram_enb__0\,
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[1].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized0\
     port map (
      DOADO(0) => \ramloop[1].ram.r_n_0\,
      DOBDO(0) => \ramloop[1].ram.r_n_1\,
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      dinb(0) => dinb(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[2].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized1\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => ram_ena_n_0,
      addrb(14 downto 0) => addrb(14 downto 0),
      \addrb[15]\ => ram_enb_n_0,
      clka => clka,
      clkb => clkb,
      dina(0) => dina(1),
      dinb(0) => dinb(1),
      \douta[1]\(0) => \ramloop[2].ram.r_n_0\,
      \doutb[1]\(0) => \ramloop[2].ram.r_n_1\,
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[3].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized2\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(1 downto 0) => dina(2 downto 1),
      dinb(1 downto 0) => dinb(2 downto 1),
      \douta[2]\(1) => \ramloop[3].ram.r_n_0\,
      \douta[2]\(0) => \ramloop[3].ram.r_n_1\,
      \doutb[2]\(1) => \ramloop[3].ram.r_n_2\,
      \doutb[2]\(0) => \ramloop[3].ram.r_n_3\,
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[4].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized3\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => ram_ena_n_0,
      addrb(14 downto 0) => addrb(14 downto 0),
      \addrb[15]\ => ram_enb_n_0,
      clka => clka,
      clkb => clkb,
      dina(0) => dina(2),
      dinb(0) => dinb(2),
      \douta[2]\(0) => \ramloop[4].ram.r_n_0\,
      \doutb[2]\(0) => \ramloop[4].ram.r_n_1\,
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[5].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized4\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(11 downto 3),
      dinb(8 downto 0) => dinb(11 downto 3),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      p_38_out(8 downto 0) => p_38_out(8 downto 0),
      p_39_out(8 downto 0) => p_39_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[6].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized5\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(11 downto 3),
      dinb(8 downto 0) => dinb(11 downto 3),
      ena_array(0) => ena_array(1),
      enb_array(0) => enb_array(1),
      p_34_out(8 downto 0) => p_34_out(8 downto 0),
      p_35_out(8 downto 0) => p_35_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[7].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized6\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(11 downto 3),
      dinb(8 downto 0) => dinb(11 downto 3),
      ena_array(0) => ena_array(2),
      enb_array(0) => enb_array(2),
      p_30_out(8 downto 0) => p_30_out(8 downto 0),
      p_31_out(8 downto 0) => p_31_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[8].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized7\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(11 downto 3),
      dinb(8 downto 0) => dinb(11 downto 3),
      p_26_out(8 downto 0) => p_26_out(8 downto 0),
      p_27_out(8 downto 0) => p_27_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[9].ram.r\: entity work.\blk_mem_I_blk_mem_gen_prim_width__parameterized8\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(11 downto 3),
      dinb(8 downto 0) => dinb(11 downto 3),
      ena_array(0) => ena_array(4),
      enb_array(0) => enb_array(4),
      p_22_out(8 downto 0) => p_22_out(8 downto 0),
      p_23_out(8 downto 0) => p_23_out(8 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_I_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 11 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    dina : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_I_blk_mem_gen_top : entity is "blk_mem_gen_top";
end blk_mem_I_blk_mem_gen_top;

architecture STRUCTURE of blk_mem_I_blk_mem_gen_top is
begin
\valid.cstr\: entity work.blk_mem_I_blk_mem_gen_generic_cstr
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(11 downto 0) => dina(11 downto 0),
      dinb(11 downto 0) => dinb(11 downto 0),
      douta(11 downto 0) => douta(11 downto 0),
      doutb(11 downto 0) => doutb(11 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_I_blk_mem_gen_v8_3_2_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 11 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    dina : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_I_blk_mem_gen_v8_3_2_synth : entity is "blk_mem_gen_v8_3_2_synth";
end blk_mem_I_blk_mem_gen_v8_3_2_synth;

architecture STRUCTURE of blk_mem_I_blk_mem_gen_v8_3_2_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.blk_mem_I_blk_mem_gen_top
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(11 downto 0) => dina(11 downto 0),
      dinb(11 downto 0) => dinb(11 downto 0),
      douta(11 downto 0) => douta(11 downto 0),
      doutb(11 downto 0) => doutb(11 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_I_blk_mem_gen_v8_3_2 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 11 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 16;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 16;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "2";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "13";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "Estimated Power for IP     :     17.759974 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "blk_mem_I.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "blk_mem_I.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 2;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 40000;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 40000;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 12;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 12;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 40000;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 40000;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 12;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of blk_mem_I_blk_mem_gen_v8_3_2 : entity is 12;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "artix7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "blk_mem_gen_v8_3_2";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_I_blk_mem_gen_v8_3_2 : entity is "yes";
end blk_mem_I_blk_mem_gen_v8_3_2;

architecture STRUCTURE of blk_mem_I_blk_mem_gen_v8_3_2 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  rdaddrecc(15) <= \<const0>\;
  rdaddrecc(14) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(15) <= \<const0>\;
  s_axi_rdaddrecc(14) <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.blk_mem_I_blk_mem_gen_v8_3_2_synth
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(11 downto 0) => dina(11 downto 0),
      dinb(11 downto 0) => dinb(11 downto 0),
      douta(11 downto 0) => douta(11 downto 0),
      doutb(11 downto 0) => doutb(11 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_I is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 11 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clkb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of blk_mem_I : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blk_mem_I : entity is "blk_mem_I,blk_mem_gen_v8_3_2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_I : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of blk_mem_I : entity is "blk_mem_gen_v8_3_2,Vivado 2016.1";
end blk_mem_I;

architecture STRUCTURE of blk_mem_I is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 16;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 16;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "2";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "13";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     17.759974 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "blk_mem_I.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "blk_mem_I.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 2;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 40000;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 40000;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 12;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 12;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 40000;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 40000;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 12;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 12;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "true";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.blk_mem_I_blk_mem_gen_v8_3_2
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(11 downto 0) => dina(11 downto 0),
      dinb(11 downto 0) => dinb(11 downto 0),
      douta(11 downto 0) => douta(11 downto 0),
      doutb(11 downto 0) => doutb(11 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(15 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(15 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(15 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(15 downto 0),
      s_axi_rdata(11 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(11 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(11 downto 0) => B"000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
