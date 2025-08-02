v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -360 -120 130 -120 {lab=vim}
N -360 -120 -360 -20 {lab=vim}
N -80 -30 130 -30 {lab=vip}
N -80 -30 -80 -20 {lab=vip}
N -360 40 -360 90 {lab=vcm}
N -360 90 -80 90 {lab=vcm}
N -80 40 -80 90 {lab=vcm}
N -540 -60 -540 40 {lab=vindif}
N -540 -60 -120 -60 {lab=vindif}
N -120 -60 -120 -10 {lab=vindif}
N -430 -10 -400 -10 {lab=vindif}
N -430 -60 -430 -10 {lab=vindif}
N 220 -10 220 20 {lab=GND}
N -230 90 -230 150 {lab=vcm}
N -120 30 -120 60 {lab=GND}
N -430 60 -120 60 {lab=GND}
N -430 60 -430 100 {lab=GND}
N -430 30 -400 30 {lab=GND}
N -430 30 -430 60 {lab=GND}
N -10 -300 -10 -280 {lab=vdda}
N -10 -300 200 -300 {lab=vdda}
N 200 -300 200 -140 {lab=vdda}
N 240 -180 240 -120 {lab=i0}
N 240 -300 240 -240 {lab=vdda}
N 200 -300 240 -300 {lab=vdda}
N 310 -70 390 -70 {lab=vout}
N 390 -70 390 -0 {lab=vout}
N 390 60 390 90 {lab=GND}
C {opa_nmos.sym} 220 -70 0 0 {name=x2}
C {vcvs.sym} -360 10 0 0 {name=E1 value=-0.5}
C {vcvs.sym} -80 10 0 0 {name=E2 value=0.5}
C {vsource.sym} -540 70 0 0 {name=V2 value="0 AC 0" savecurrent=false}
C {gnd.sym} 220 20 0 0 {name=l1 lab=GND}
C {vsource.sym} -10 -250 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} -230 180 0 0 {name=Vcm value="0.9 AC 1" savecurrent=false}
C {gnd.sym} -430 100 0 0 {name=l2 lab=GND}
C {gnd.sym} -10 -220 0 0 {name=l3 lab=GND}
C {isource.sym} 240 -210 0 0 {name=I0 value=5u}
C {capa.sym} 390 30 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 390 90 0 0 {name=l4 lab=GND}
C {simulator_commands_shown.sym} -1040 -590 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="

.control

save all
 save @m.x2.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
 save @m.x2.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
 save @m.x2.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
 save @m.x2.xm2.msky130_fd_pr__pfet_01v8_lvt[id]
 save @m.x2.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
 save @m.x2.xm3.msky130_fd_pr__nfet_01v8_lvt[id]
 save @m.x2.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
 save @m.x2.xm4.msky130_fd_pr__nfet_01v8_lvt[id]
 save @m.x2.xm5.msky130_fd_pr__nfet_01v8[gm]
 save @m.x2.xm5.msky130_fd_pr__nfet_01v8[id]
 save @m.x2.xm6.msky130_fd_pr__nfet_01v8[gm]
 save @m.x2.xm6.msky130_fd_pr__nfet_01v8[id]

op
write TB_opa.raw

 let im1=@m.x2.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
 let im2=@m.x2.xm2.msky130_fd_pr__pfet_01v8_lvt[id]
 let im3=@m.x2.xm3.msky130_fd_pr__nfet_01v8_lvt[id]
 let im4=@m.x2.xm4.msky130_fd_pr__nfet_01v8_lvt[id]
 let im5=@m.x2.xm5.msky130_fd_pr__nfet_01v8[id]
 let im6=@m.x2.xm6.msky130_fd_pr__nfet_01v8[id]

 let gm1=@m.x2.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
 let gm2=@m.x2.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
 let gm3=@m.x2.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
 let gm4=@m.x2.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
 let gm5=@m.x2.xm5.msky130_fd_pr__nfet_01v8[gm]
 let gm6=@m.x2.xm6.msky130_fd_pr__nfet_01v8[gm]

 let gmid1=gm1/im1
 let gmid2=gm2/im2
 let gmid3=gm3/im3
 let gmid4=gm4/im4
 let gmid5=gm5/im5
 let gmid6=gm6/im6

 print gmid1
 print gmid2
 print gmid3
 print gmid4
 print gmid5
 print gmid6

 print im1
 print im2
 print im3
 print im4
 print im5
 print im6

AC DEC 100 1 1e9   
**set appendwrite

.endc
* ngspice commands
"}
C {gnd.sym} -540 100 0 0 {name=l5 lab=GND}
C {gnd.sym} -230 210 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 360 -70 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/code.sym} 420 -400 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {lab_wire.sym} -480 -60 0 0 {name=p2 sig_type=std_logic lab=vindif}
C {lab_wire.sym} -160 90 0 0 {name=p3 sig_type=std_logic lab=vcm}
C {lab_wire.sym} -100 -120 0 0 {name=p4 sig_type=std_logic lab=vim}
C {lab_wire.sym} 10 -30 0 0 {name=p5 sig_type=std_logic lab=vip}
C {lab_wire.sym} 90 -300 0 0 {name=p6 sig_type=std_logic lab=vdda}
C {lab_wire.sym} 240 -140 0 0 {name=p7 sig_type=std_logic lab=i0}
