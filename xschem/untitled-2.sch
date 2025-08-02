v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -390 -180 -290 -180 {lab=#net1}
N -390 -180 -390 -110 {lab=#net1}
N -390 -50 -390 -10 {lab=GND}
N -390 -10 60 -10 {lab=GND}
N 60 -60 60 -10 {lab=GND}
N -230 -180 60 -180 {lab=vim}
N 60 -180 60 -120 {lab=vim}
N -140 -180 -140 -110 {lab=vim}
N -140 -50 -140 -10 {lab=GND}
N 60 -70 60 -60 {lab=GND}
N 60 -120 60 -110 {lab=vim}
N -170 -10 -170 20 {lab=GND}
C {vcvs.sym} 60 -90 0 1 {name=E1 value=1
}
C {capa.sym} -140 -80 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -260 -180 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -170 20 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -170 -180 0 0 {name=p2 sig_type=std_logic lab=vim}
C {vcvs.sym} -390 -80 0 0 {name=E2 value=1000}
