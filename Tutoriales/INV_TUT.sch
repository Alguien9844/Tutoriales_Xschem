v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -50 -90 0 -90 {lab=Vin}
N -50 0 -50 90 {lab=Vin}
N -50 90 0 90 {lab=Vin}
N -100 0 -50 0 {lab=Vin}
N -50 -90 -50 0 {lab=Vin}
N 40 0 40 60 {lab=Vout}
N 40 0 130 0 {lab=Vout}
N 40 -60 40 0 {lab=Vout}
N 40 -130 40 -120 {lab=VDD}
N 40 -90 110 -90 {lab=VDD}
N 110 -130 110 -90 {lab=VDD}
N 40 -130 110 -130 {lab=VDD}
N 40 -180 40 -130 {lab=VDD}
N 40 140 40 180 {lab=VSS}
N 40 120 40 140 {lab=VSS}
N 130 90 130 140 {lab=VSS}
N 40 90 130 90 {lab=VSS}
N 40 140 130 140 {lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 20 90 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 20 -90 0 0 {name=M2
l=0.13u
w=0.45u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} -100 0 0 0 {name=p1 lab=Vin}
C {opin.sym} 130 0 0 0 {name=p2 lab=Vout}
C {lab_pin.sym} 40 180 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 40 -180 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {ipin.sym} -100 -180 0 0 {name=p5 lab=VSS}
C {ipin.sym} -100 -150 0 0 {name=p7 lab=VDD}
