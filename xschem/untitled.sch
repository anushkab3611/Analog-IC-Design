v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 -10 -170 20 {lab=vg}
N -170 -10 -50 -10 {lab=vg}
N -10 -80 -10 -40 {lab=vd}
N -10 -80 140 -80 {lab=vd}
N 140 -80 140 -0 {lab=vd}
N 140 -0 140 10 {lab=vd}
N -170 80 -170 120 {lab=GND}
N -170 120 140 120 {lab=GND}
N 140 70 140 120 {lab=GND}
N -10 20 -10 120 {lab=GND}
N -10 -10 40 -10 {lab=GND}
N 40 -10 40 50 {lab=GND}
N -10 50 40 50 {lab=GND}
C {vsource.sym} -170 50 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 140 40 0 0 {name=Vds value=0 savecurrent=false}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -30 -10 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {lab_wire.sym} -140 -10 0 0 {name=p1 sig_type=std_logic lab=vg}
C {gnd.sym} -10 120 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 40 -80 0 0 {name=p2 sig_type=std_logic lab=vd}
C {simulator_commands_shown.sym} -370 -170 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
.OP
DC Vds 0 1.8 0.1 Vgs 0.4 1.0 0.1 
.ENDC
"}
C {devices/code.sym} -370 40 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
