v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -300 30 -300 90 {lab=GND}
N -300 -80 -300 -30 {lab=vnmic}
N -300 -80 -200 -80 {lab=vnmic}
N -140 -80 -90 -80 {lab=vn1}
N 370 -70 370 -10 {lab=GND}
N 130 -200 130 -80 {lab=virt}
N 130 -200 240 -200 {lab=virt}
N 130 -290 130 -200 {lab=virt}
N 130 -290 230 -290 {lab=virt}
N 230 -290 240 -290 {lab=virt}
N 300 -290 370 -290 {lab=vout}
N 370 -290 370 -130 {lab=vout}
N 300 -200 370 -200 {lab=vout}
N 140 -80 330 -80 {lab=virt}
N 240 -120 240 -30 {lab=vcm}
N 240 -120 330 -120 {lab=vcm}
N 370 -160 530 -160 {lab=vout}
N 530 -160 530 -120 {lab=vout}
N 120 -80 140 -80 {lab=virt}
N 110 -80 120 -80 {lab=virt}
N -90 -80 -70 -80 {lab=vn1}
N -10 -80 50 -80 {lab=vn2}
N 50 -80 60 -80 {lab=vn2}
N 290 -290 300 -290 {lab=vout}
N 280 -290 290 -290 {lab=vout}
C {vsource.sym} -300 0 0 0 {name=v1 value="0 AC 1" savecurrent=false}
C {res.sym} -170 -80 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} 90 -80 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -300 90 0 0 {name=l1 lab=GND}
C {vcvs.sym} 370 -100 0 0 {name=E1 value=10000
}
C {gnd.sym} 370 -10 0 0 {name=l2 lab=GND}
C {res.sym} 270 -200 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 250 -290 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 240 0 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 240 30 0 0 {name=l3 lab=GND}
C {capa.sym} 530 -90 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 530 -60 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -240 -80 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -90 -80 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {capa.sym} -40 -80 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 40 -80 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 130 -140 0 0 {name=p4 sig_type=std_logic lab=virt}
C {lab_wire.sym} 240 -50 0 0 {name=p5 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 460 -160 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -780 -550 0 0 {name=COMMANDS
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
LET phase_zero_ph = phase_mid-45
MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph


 .endc
"}
