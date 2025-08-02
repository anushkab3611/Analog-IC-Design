Title: transient experiment : rise, fall, delay, period, etc.

**Parameters
.PARAM vdd_var=1.8
.CSPARAM csvddvar=vdd_var

**RC NETWORK
R1      vin     vout    1k
C1      vout    GND     1p

**Stimuli
Vsin    vin     GND     0 PULSE(0 vdd_var 1n 1p 1p 10n 20n)

**Rise/Fall 10-90%
.MEASURE TRAN rise_time10_90 TRIG v(vout) VAL='0.1*vdd_var' RISE=1 TARG v(vout) VAL='0.9*vdd_var' RISE=1
.MEASURE TRAN fall_time90_10 TRIG v(vout) VAL='0.9*vdd_var' FALL=1 TARG v(vout) VAL='0.1*vdd_var' FALL=1

**Rise/Fall 20-80%
.MEASURE TRAN rise_time20_80 TRIG v(vout) VAL='0.2*vdd_var' RISE=1 TARG v(vout) VAL='0.8*vdd_var' RISE=1
.MEASURE TRAN fall_time80_20 TRIG v(vout) VAL='0.8*vdd_var' FALL=1 TARG v(vout) VAL='0.2*vdd_var' FALL=1

**delay rise fall
.MEASURE TRAN rise_time50_50 TRIG v(vin) VAL='0.5*vdd_var' RISE=1 TARG v(vout) VAL='0.5*vdd_var' RISE=1
.MEASURE TRAN fall_time50_50 TRIG v(vin) VAL='0.5*vdd_var' FALL=1 TARG v(vout) VAL='0.5*vdd_var' FALL=1

**Pulse width/ Period
.MEASURE TRAN PWidth TRIG v(vout) VAL='0.5*vdd_var' RISE=1 TARG v(vout) VAL='0.5*vdd_var' FALL=1
.MEASURE TRAN Period TRIG v(vout) VAL='0.5*vdd_var' RISE=1 TARG v(vout) VAL='0.5*vdd_var' RISE=2
.CONTROL
 OP
 TRAN 10p 40n
MEAS TRAN rise_time10_90 TRIG v(vout) VAL='0.1*csvddvar' RISE=1 TARG v(vout) VAL='0.9*csvddvar' RISE=1
plot v(vout)
 .ENDC

.GLOBAL GND
.END
