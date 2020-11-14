<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(31:0)" />
        <signal name="XLXN_2(2:0)" />
        <signal name="XLXN_4(43:0)" />
        <signal name="XLXN_5(3:0)" />
        <signal name="XLXN_7(5:0)" />
        <signal name="RESET" />
        <signal name="PCI_CLK" />
        <signal name="FRAME" />
        <signal name="IRDY" />
        <signal name="IDSEL" />
        <signal name="CBE(3:0)" />
        <signal name="TRDY" />
        <signal name="DEVSEL" />
        <signal name="STOP" />
        <signal name="INTA" />
        <signal name="LED_OUT(3:0)" />
        <signal name="PAR" />
        <signal name="UART_CLK" />
        <signal name="UART_OUT" />
        <signal name="STOP_BITS(3:0)" />
        <signal name="XLXN_44" />
        <signal name="START_BITS(3:0)" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="PCI_CLK" />
        <port polarity="Input" name="FRAME" />
        <port polarity="Input" name="IRDY" />
        <port polarity="Input" name="IDSEL" />
        <port polarity="Input" name="CBE(3:0)" />
        <port polarity="Output" name="TRDY" />
        <port polarity="Output" name="DEVSEL" />
        <port polarity="Output" name="STOP" />
        <port polarity="Output" name="INTA" />
        <port polarity="Output" name="LED_OUT(3:0)" />
        <port polarity="BiDirectional" name="PAR" />
        <port polarity="Input" name="UART_CLK" />
        <port polarity="Output" name="UART_OUT" />
        <port polarity="Input" name="STOP_BITS(3:0)" />
        <port polarity="Input" name="START_BITS(3:0)" />
        <blockdef name="pci">
            <timestamp>2019-5-29T14:43:44</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-448" height="512" />
        </blockdef>
        <blockdef name="tristate_buffer">
            <timestamp>2019-5-29T14:43:12</timestamp>
            <rect width="320" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-300" height="24" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
        </blockdef>
        <blockdef name="shift_regiser44bits">
            <timestamp>2019-5-29T15:7:33</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="Comparator">
            <timestamp>2019-5-29T14:42:48</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Parity">
            <timestamp>2019-5-29T14:44:14</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="pci" name="XLXI_12">
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="PCI_CLK" name="clk" />
            <blockpin signalname="FRAME" name="frame" />
            <blockpin signalname="IRDY" name="irdy" />
            <blockpin signalname="IDSEL" name="idsel" />
            <blockpin signalname="CBE(3:0)" name="cbe(3:0)" />
            <blockpin signalname="PAR" name="par" />
            <blockpin signalname="XLXN_1(31:0)" name="ad(31:0)" />
            <blockpin signalname="TRDY" name="trdy" />
            <blockpin signalname="DEVSEL" name="devsel" />
            <blockpin signalname="STOP" name="stop" />
            <blockpin signalname="INTA" name="inta" />
            <blockpin signalname="LED_OUT(3:0)" name="led_out(3:0)" />
            <blockpin signalname="XLXN_2(2:0)" name="enable_transaction(2:0)" />
        </block>
        <block symbolname="tristate_buffer" name="XLXI_13">
            <blockpin signalname="XLXN_44" name="enable" />
            <blockpin signalname="XLXN_1(31:0)" name="in_data(31:0)" />
            <blockpin signalname="START_BITS(3:0)" name="start_bits(3:0)" />
            <blockpin signalname="STOP_BITS(3:0)" name="stop_bits(3:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="parities(3:0)" />
            <blockpin signalname="XLXN_4(43:0)" name="out_data(43:0)" />
        </block>
        <block symbolname="Parity" name="XLXI_14">
            <blockpin signalname="XLXN_1(31:0)" name="data(31:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="parity(3:0)" />
        </block>
        <block symbolname="shift_regiser44bits" name="XLXI_15">
            <blockpin signalname="UART_CLK" name="clk" />
            <blockpin signalname="XLXN_4(43:0)" name="in_data(43:0)" />
            <blockpin signalname="UART_OUT" name="out_data" />
            <blockpin signalname="XLXN_7(5:0)" name="workload(5:0)" />
        </block>
        <block symbolname="Comparator" name="XLXI_16">
            <blockpin signalname="PCI_CLK" name="clk" />
            <blockpin signalname="XLXN_2(2:0)" name="state(2:0)" />
            <blockpin signalname="XLXN_7(5:0)" name="workload(5:0)" />
            <blockpin signalname="XLXN_44" name="enable" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_2(2:0)">
            <wire x2="1008" y1="944" y2="944" x1="928" />
            <wire x2="1008" y1="944" y2="1120" x1="1008" />
            <wire x2="1504" y1="1120" y2="1120" x1="1008" />
        </branch>
        <branch name="XLXN_4(43:0)">
            <wire x2="2112" y1="656" y2="656" x1="2064" />
        </branch>
        <branch name="XLXN_5(3:0)">
            <wire x2="1616" y1="912" y2="912" x1="1424" />
        </branch>
        <branch name="XLXN_7(5:0)">
            <wire x2="1504" y1="1184" y2="1184" x1="1424" />
            <wire x2="1424" y1="1184" y2="1264" x1="1424" />
            <wire x2="2624" y1="1264" y2="1264" x1="1424" />
            <wire x2="2624" y1="656" y2="656" x1="2544" />
            <wire x2="2624" y1="656" y2="1264" x1="2624" />
        </branch>
        <branch name="RESET">
            <wire x2="544" y1="496" y2="496" x1="448" />
        </branch>
        <branch name="PCI_CLK">
            <wire x2="544" y1="560" y2="560" x1="448" />
        </branch>
        <branch name="FRAME">
            <wire x2="544" y1="624" y2="624" x1="448" />
        </branch>
        <branch name="IRDY">
            <wire x2="544" y1="688" y2="688" x1="448" />
        </branch>
        <branch name="IDSEL">
            <wire x2="544" y1="752" y2="752" x1="448" />
        </branch>
        <branch name="CBE(3:0)">
            <wire x2="544" y1="816" y2="816" x1="448" />
        </branch>
        <branch name="TRDY">
            <wire x2="1024" y1="496" y2="496" x1="928" />
        </branch>
        <branch name="DEVSEL">
            <wire x2="1024" y1="560" y2="560" x1="928" />
        </branch>
        <branch name="STOP">
            <wire x2="1024" y1="624" y2="624" x1="928" />
        </branch>
        <branch name="INTA">
            <wire x2="1024" y1="688" y2="688" x1="928" />
        </branch>
        <branch name="LED_OUT(3:0)">
            <wire x2="1024" y1="752" y2="752" x1="928" />
        </branch>
        <branch name="PAR">
            <wire x2="1024" y1="816" y2="816" x1="928" />
        </branch>
        <branch name="XLXN_1(31:0)">
            <wire x2="976" y1="880" y2="880" x1="928" />
            <wire x2="976" y1="880" y2="912" x1="976" />
            <wire x2="1040" y1="912" y2="912" x1="976" />
            <wire x2="976" y1="864" y2="880" x1="976" />
            <wire x2="1312" y1="864" y2="864" x1="976" />
            <wire x2="1312" y1="720" y2="864" x1="1312" />
            <wire x2="1616" y1="720" y2="720" x1="1312" />
        </branch>
        <branch name="PCI_CLK">
            <wire x2="1504" y1="1056" y2="1056" x1="1424" />
        </branch>
        <branch name="UART_CLK">
            <wire x2="2096" y1="528" y2="528" x1="2016" />
            <wire x2="2096" y1="528" y2="592" x1="2096" />
            <wire x2="2112" y1="592" y2="592" x1="2096" />
        </branch>
        <branch name="UART_OUT">
            <wire x2="2656" y1="592" y2="592" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="448" y="496" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="448" y="560" name="PCI_CLK" orien="R180" />
        <iomarker fontsize="28" x="448" y="624" name="FRAME" orien="R180" />
        <iomarker fontsize="28" x="448" y="688" name="IRDY" orien="R180" />
        <iomarker fontsize="28" x="448" y="752" name="IDSEL" orien="R180" />
        <iomarker fontsize="28" x="448" y="816" name="CBE(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1024" y="496" name="TRDY" orien="R0" />
        <iomarker fontsize="28" x="1024" y="560" name="DEVSEL" orien="R0" />
        <iomarker fontsize="28" x="1024" y="624" name="STOP" orien="R0" />
        <iomarker fontsize="28" x="1024" y="688" name="INTA" orien="R0" />
        <iomarker fontsize="28" x="1024" y="752" name="LED_OUT(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1024" y="816" name="PAR" orien="R0" />
        <iomarker fontsize="28" x="1424" y="1056" name="PCI_CLK" orien="R180" />
        <iomarker fontsize="28" x="2016" y="528" name="UART_CLK" orien="R180" />
        <iomarker fontsize="28" x="2656" y="592" name="UART_OUT" orien="R0" />
        <branch name="STOP_BITS(3:0)">
            <wire x2="1472" y1="640" y2="640" x1="1456" />
            <wire x2="1472" y1="640" y2="848" x1="1472" />
            <wire x2="1616" y1="848" y2="848" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="1456" y="640" name="STOP_BITS(3:0)" orien="R180" />
        <branch name="XLXN_44">
            <wire x2="1536" y1="608" y2="656" x1="1536" />
            <wire x2="1616" y1="656" y2="656" x1="1536" />
            <wire x2="2096" y1="608" y2="608" x1="1536" />
            <wire x2="2096" y1="608" y2="1056" x1="2096" />
            <wire x2="2096" y1="1056" y2="1056" x1="1888" />
        </branch>
        <branch name="START_BITS(3:0)">
            <wire x2="1504" y1="544" y2="544" x1="1440" />
            <wire x2="1504" y1="544" y2="784" x1="1504" />
            <wire x2="1616" y1="784" y2="784" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1440" y="544" name="START_BITS(3:0)" orien="R180" />
        <instance x="544" y="912" name="XLXI_12" orien="R0">
        </instance>
        <instance x="1616" y="944" name="XLXI_13" orien="R0">
        </instance>
        <instance x="1040" y="944" name="XLXI_14" orien="R0">
        </instance>
        <instance x="2112" y="688" name="XLXI_15" orien="R0">
        </instance>
        <instance x="1504" y="1216" name="XLXI_16" orien="R0">
        </instance>
    </sheet>
</drawing>