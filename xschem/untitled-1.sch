v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 0 300 -0 {lab=#net1}
N 90 -0 140 -0 {lab=GND}
N 90 -0 90 90 {lab=GND}
N 90 90 390 90 {lab=GND}
N 390 -0 390 90 {lab=GND}
N 340 -0 390 -0 {lab=GND}
N 340 30 340 90 {lab=GND}
N 140 30 140 90 {lab=GND}
N 140 -110 140 -30 {lab=#net1}
N 140 -110 210 -110 {lab=#net1}
N 210 -110 210 -0 {lab=#net1}
N 340 -110 340 -30 {lab=#net2}
N 340 -110 440 -110 {lab=#net2}
N 440 -110 470 -110 {lab=#net2}
N 470 -110 470 -20 {lab=#net2}
N -20 -110 140 -110 {lab=#net1}
N -20 -110 -20 -20 {lab=#net1}
N -20 40 -20 90 {lab=GND}
N -20 90 90 90 {lab=GND}
N 390 90 470 90 {lab=GND}
N 470 40 470 90 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 320 0 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 160 0 0 1 {name=M2
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {isource.sym} -20 10 2 0 {name=Iin value=50u}
C {vsource.sym} 470 10 0 0 {name=Vds value="1 AC 1" savecurrent=false}
C {devices/code.sym} -530 130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -580 -240 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL
OP
DC Vds 0 1.8 0.05 
plot abs(vds#branch)
AC DEC 100 100 1000
PLOT '1/vm(vds#branch)'
.ENDC
"
"}
C {gnd.sym} 240 90 0 0 {name=l1 lab=GND}
