v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -440 -60 -410 -60 {lab=vinp}
N -440 -20 -410 -20 {lab=vinm}
N -210 -60 -180 -60 {lab=vop}
N -210 -20 -180 -20 {lab=vom}
N 160 -30 290 -30 {lab=ib5u}
N 120 -110 120 -60 {lab=ib5u}
N 120 -110 200 -110 {lab=ib5u}
N 200 -110 200 -30 {lab=ib5u}
N 90 -30 120 -30 {lab=AVSS}
N 90 -30 90 90 {lab=AVSS}
N 120 0 120 90 {lab=AVSS}
N 80 90 120 90 {lab=AVSS}
N 120 90 330 90 {lab=AVSS}
N 330 0 330 90 {lab=AVSS}
N 330 -30 390 -30 {lab=AVSS}
N 390 -30 390 90 {lab=AVSS}
N 330 90 390 90 {lab=AVSS}
N -70 -110 120 -110 {lab=ib5u}
N -90 90 80 90 {lab=AVSS}
N 240 -510 370 -510 {lab=#net1}
N 200 -480 200 -310 {lab=#net2}
N 410 -480 410 -310 {lab=#net3}
N 200 -250 200 -200 {lab=#net4}
N 410 -250 410 -200 {lab=#net4}
N 200 -200 410 -200 {lab=#net4}
N 330 -200 330 -60 {lab=#net4}
N 200 -550 200 -540 {lab=#net5}
N 200 -580 200 -540 {lab=#net5}
N 200 -580 410 -580 {lab=#net5}
N 410 -580 410 -540 {lab=#net5}
N 30 -580 200 -580 {lab=#net5}
N 120 -510 200 -510 {lab=#net5}
N 120 -580 120 -510 {lab=#net5}
N 410 -510 480 -510 {lab=#net5}
N 480 -580 480 -510 {lab=#net5}
N 390 -580 480 -580 {lab=#net5}
C {iopin.sym} -440 -60 2 0 {name=p1 lab=vinp}
C {iopin.sym} -440 -20 2 0 {name=p3 lab=vinm}
C {iopin.sym} -180 -60 0 0 {name=p4 lab=vop}
C {iopin.sym} -180 -20 0 0 {name=p5 lab=vom}
C {iopin.sym} -90 90 2 0 {name=p2 lab=AVSS}
C {iopin.sym} 30 -580 2 0 {name=p6 lab=AVDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 140 -30 0 1 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 310 -30 0 0 {name=M2
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {iopin.sym} -70 -110 2 0 {name=p7 lab=ib5u}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 220 -510 0 1 {name=M10
L=0.35
W=1
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 390 -510 0 0 {name=M3
L=0.35
W=1
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 180 -280 0 0 {name=M4
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 430 -280 0 1 {name=M5
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
