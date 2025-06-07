Title: Simple high-pass filter
*This is netlist/circuit of a simple voltage divider
*R1   n1    n2   Res-in ohms
Cbyp  vin   n1   4.7u
Rhp   n1    vcm  5k

*Stimulus sources
Vsin  vin  0  0 AC 1
Vscm  vcm  0  0.5

.op

*Control script
.control
* first run then add the plot command to get the graph
  save all
  AC DEC 100 1 10e6

*to plot it from the program directly
*plot vdb(n1)
*measure the -3db cutoff freq
*.meas ac f_3db when vdb(n1) = -3
plot vdb(n1)
plot v(n1)
MEAS AC gain MAX vmag(n1) FROM=1 TO=10e6
LET gain_db = 20 *log10(gain)
LET f3db = gain/sqrt(2)
*print gain_db

MEAS AC fzero WHEN vmag(n1)= f3db RISE=1
.endc
.end                                                                                                                          
