v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 -310 -460 {}
N -1000 -100 -1000 -40 {lab=GND}
N -1000 -210 -1000 -160 {lab=vnmic}
N -1000 -210 -900 -210 {lab=vnmic}
N -840 -210 -790 -210 {lab=vn1}
N -550 -450 -550 -330 {lab=virt}
N -550 -450 -440 -450 {lab=virt}
N -550 -540 -550 -450 {lab=virt}
N -550 -540 -450 -540 {lab=virt}
N -450 -540 -440 -540 {lab=virt}
N -380 -540 -310 -540 {lab=vout}
N -310 -540 -310 -380 {lab=vout}
N -380 -450 -310 -450 {lab=vout}
N -330 -160 -170 -160 {lab=vout}
N -170 -160 -170 -120 {lab=vout}
N -580 -210 -560 -210 {lab=virt}
N -590 -210 -580 -210 {lab=virt}
N -790 -210 -770 -210 {lab=vn1}
N -710 -210 -650 -210 {lab=vn2}
N -650 -210 -640 -210 {lab=vn2}
N -390 -540 -380 -540 {lab=vout}
N -400 -540 -390 -540 {lab=vout}
N -560 -210 -510 -210 {lab=virt}
N -550 -330 -550 -210 {lab=virt}
N -310 -380 -310 -160 {lab=vout}
N -440 -400 -440 -230 {lab=AVDD}
N -400 -290 -400 -210 {lab=ib5u}
N -400 -400 -400 -350 {lab=AVDD}
N -240 -400 -240 -340 {lab=AVDD}
N -420 -100 -420 -70 {lab=GND}
N -550 -120 -510 -120 {lab=#net1}
N -550 -120 -550 -90 {lab=#net1}
N -440 -400 -240 -400 {lab=AVDD}
C {vsource.sym} -1000 -130 0 0 {name=Vmic value="0 AC 1 sin(0 1m 1e3 0 0 0" savecurrent=false}
C {res.sym} -870 -210 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} -610 -210 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -1000 -40 0 0 {name=l1 lab=GND}
C {res.sym} -410 -450 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} -430 -540 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -170 -90 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -170 -60 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -940 -210 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -790 -210 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {capa.sym} -740 -210 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -660 -210 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} -550 -390 0 0 {name=p4 sig_type=std_logic lab=virt}
C {lab_wire.sym} -200 -160 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -1500 -700 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
op
save all
set appendwrite
AC DEC 100 1 10e6
write mictest.raw

MEAS AC gain_db MAX vdb(vout) FROM=1 TO=10e6
LET vm3db = gain_db-3.0
print vm3db
MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
MEAS AC fpole WHEN vdb(vout)=vm3db FALL=1
MEAS AC fmid WHEN vdb(vout)=gain_db
**Phase Measurement
LET phase_deg = cph(vout)*180/PI
MEAS AC phase_zero FIND phase_deg AT=fzero
MEAS AC phase_pole FIND phase_deg AT=fpole
MEAS AC phase_mid FIND phase_deg AT=fmid
**MEAS fzero and fpole using phase
**LET phase_zero_ph = phase_mid-45
**MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
TRAN 1u 6m
MEAS TRAN voutpp PP v(vout) FROM=1m TO=4m
MEAS TRAN vinpp PP v(vnmic) FROM=1m TO=4m
LET gaintran=voutpp/vinpp
print gaintran
FOURIER 1k v(vout)
plot v(vout)
plot (vnmic)

 .endc
"}
C {opa_nmos.sym} -420 -160 0 0 {name=x1}
C {isource.sym} -400 -320 0 0 {name=I0 value=5u}
C {vsource.sym} -240 -310 0 0 {name=Vcc value=1.8 savecurrent=false}
C {gnd.sym} -240 -280 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -260 -400 0 0 {name=p5 sig_type=std_logic lab=AVDD}
C {gnd.sym} -420 -70 0 0 {name=l3 lab=GND}
C {vsource.sym} -550 -60 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -550 -30 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -400 -260 0 0 {name=p7 sig_type=std_logic lab=ib5u}
C {devices/code.sym} -1420 -120 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
