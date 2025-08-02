TITLE : RC Step input highpass testbench

.PARAM vdd_var=1

**Netlist
C1      vin     vout    1p
R1      vout    GND     1k

**Sources
Vsin    vin     GND     0 PULSE(0 vdd_var 0.5n 1p 1p 10n 20n)

**Simulation
.SAVE ALL
.OP
.TRAN 10p 40n
.GLOBAL GND

.END                                          
