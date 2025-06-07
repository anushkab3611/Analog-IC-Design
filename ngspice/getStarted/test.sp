.global vdd gnd
.temp 27

C1 in A 1p
R1 A out 1K

Vpulse in gnd pulse(0 5 1n 10p 10p 5n 10n)

.tran 5p 100n
.control
run
plot V(in)  V(out)
.endc
.end

~       
