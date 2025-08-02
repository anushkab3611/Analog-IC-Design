.TITLE Diode experiment

**.MODEL diomod1 D (bv=50 is=1e-13 n=1.05)
.INCLUDE 'sky130_fd_pr__diode_pd2nw_05v5.model.spice'


D1	vin	vout	diomod1
R1	vout	GND	100k
**C1	vout	GND	1p

Vsin	vin	GND	0 sin(0 1 1e3 0 0 0)

.OP
.TRAN 1u 4m
.END


