v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -300 30 -300 90 {lab=GND}
N -300 -80 -300 -30 {lab=vnmic}
N -300 -80 -200 -80 {lab=vnmic}
N -140 -80 -90 -80 {lab=vnmic}
N 410 30 410 90 {lab=GND}
N 130 -200 130 -80 {lab=virt}
N 130 -200 240 -200 {lab=virt}
N 300 -200 370 -200 {lab=vout}
N 120 -80 140 -80 {lab=virt}
N 110 -80 120 -80 {lab=virt}
N -90 -80 -70 -80 {lab=vnmic}
N -10 -80 50 -80 {lab=vn1}
N 50 -80 60 -80 {lab=vn1}
N 130 -80 180 -80 {lab=virt}
N 370 -200 500 -200 {lab=vout}
N 180 -80 330 -80 {lab=virt}
N -200 -80 -140 -80 {lab=vnmic}
N 230 0 230 80 {lab=vcm}
N 230 0 330 0 {lab=vcm}
N 520 -30 740 -30 {lab=vout}
N 500 -200 610 -200 {lab=vout}
N 610 -200 610 -30 {lab=vout}
C {vsource.sym} -300 0 0 0 {name=v1 value="0 AC 1" savecurrent=false}
C {res.sym} 90 -80 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -300 90 0 0 {name=l1 lab=GND}
C {gnd.sym} 410 90 0 0 {name=l2 lab=GND}
C {res.sym} 270 -200 3 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 230 110 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 230 140 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -240 -80 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {capa.sym} -40 -80 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 130 -140 0 0 {name=p4 sig_type=std_logic lab=virt}
C {lab_wire.sym} 230 60 0 0 {name=p5 sig_type=std_logic lab=vcm}
C {simulator_commands_shown.sym} -780 -550 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
.op
AC DEC 100 1 10e6
plot v(vout)

 .endc
"}
C {lab_wire.sym} 40 -80 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {newopamp.sym} 90 120 0 0 {name=x1}
C {lab_wire.sym} 740 -30 0 0 {name=p3 sig_type=std_logic lab=vout}
