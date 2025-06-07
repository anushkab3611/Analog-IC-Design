v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 5 -222.5 -122.5 -217.5 -117.5 {name=vip dir=inout}
B 5 -222.5 -122.5 -217.5 -117.5 {name=vip dir=inout}
B 5 -222.5 -82.5 -217.5 -77.5 {name=vim dir=inout}
N -180 -200 -80 -200 {lab=#net1}
N -180 -200 -180 -130 {lab=#net1}
N -180 -70 -180 -30 {lab=GND}
N -180 -30 270 -30 {lab=GND}
N 270 -80 270 -30 {lab=GND}
N -20 -200 270 -200 {lab=vim}
N 270 -200 270 -140 {lab=vim}
N 70 -200 70 -130 {lab=vim}
N 70 -70 70 -30 {lab=GND}
N 270 -90 270 -80 {lab=GND}
N 270 -140 270 -130 {lab=vim}
N -340 -120 -220 -120 {lab=#net2}
N -540 -120 -400 -120 {lab=#net3}
N -290 -330 -290 -120 {lab=#net2}
N -290 -330 -20 -330 {lab=#net2}
N 40 -330 290 -330 {lab=vout}
N 310 -330 310 -140 {lab=vout}
N 290 -330 310 -330 {lab=vout}
N -710 -120 -600 -120 {lab=#net4}
N -710 -120 -710 -60 {lab=#net4}
N -470 -80 -220 -80 {lab=#net5}
N -470 -80 -470 -70 {lab=#net5}
N -470 -70 -470 -0 {lab=#net5}
N -710 -60 -710 0 {lab=#net4}
N 40 -30 40 -0 {lab=GND}
N 310 -80 310 -30 {lab=GND}
N 310 -30 310 -20 {lab=GND}
N 40 -20 310 -20 {lab=GND}
N 310 -140 510 -140 {lab=vout}
C {vcvs.sym} 310 -110 0 0 {name=E1 value=1
}
C {vcvs.sym} -180 -100 0 0 {name=E2 value=1000}
C {capa.sym} 70 -100 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -50 -200 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} -570 -120 3 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -370 -120 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 10 -330 3 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -710 30 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} -470 30 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 40 0 0 0 {name=l1 lab=GND}
C {gnd.sym} -470 60 0 0 {name=l2 lab=GND}
C {gnd.sym} -710 60 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 510 -140 0 0 {name=p1 sig_type=std_logic lab=vout}
C {lab_wire.sym} 40 -200 0 0 {name=p2 sig_type=std_logic lab=vim}
C {simulator_commands_shown.sym} -820 -400 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
.op
AC DEC 100 1 10e6
plot v(vout)

 .endc
* ngspice commands
"}
