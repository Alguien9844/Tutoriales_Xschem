v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 -350 -450 590 -450 {}
L 4 590 -530 590 -450 {}
L 4 -350 -530 590 -530 {}
L 4 -350 -530 -350 -460 {}
L 4 -350 -460 -350 -450 {}
L 4 -350 -430 -350 -100 {}
L 4 -350 -140 -50 -140 {}
L 4 -350 -430 -50 -430 {}
L 4 -350 -450 -350 150 {}
L 4 590 -450 590 150 {}
L 4 -350 270 590 270 {}
L 4 -50 -430 -50 -150 {}
L 4 -50 -150 -50 -140 {}
L 4 -350 140 -350 270 {}
L 4 590 150 590 270 {}
L 4 560 270 590 270 {}
L 4 -50 -140 -50 270 {}
L 4 -50 -430 590 -430 {}
P 4 1 -380 20 {}
T {

W: Wire/Cable

M: Move

Alt/Shift + F: Horizontal flip

Alt/Shift + V: Vertical Flip

Alt/Shift + R: Rotate 

Ctrl+C Ctrl+V: Copy/Paste


} -340 -410 0 0 0.3 0.3 {}
T {Tutorial 1 - The basics for Xschem} -330 -520 0 0 1 1 {}
T {
E: Enter schematic

Ctrl + E: Exit schematic

Alt + U : Align to grid

Q/Double-click: View/edit properties 

L: Insert Line

R: Insert Rectangle

P: Insert Polygon

T: Insert text

Shift + A: Show netlist
} -340 -100 0 0 0.3 0.3 {}
T {Commands used this tutorial} -340 -420 0 0 0.35 0.35 {}
T {Commands for future use
} -340 -130 0 0 0.35 0.35 {}
T {Objective: Create, duplicate and manipulate } -20 -420 0 0 0.5 0.5 {}
T {a basic inverter

} -20 -390 0 0 0.5 0.5 {}
N 50 -140 100 -140 {lab=#net1}
N 50 -50 50 40 {lab=#net1}
N 50 40 100 40 {lab=#net1}
N 0 -50 50 -50 {lab=#net1}
N 50 -140 50 -50 {lab=#net1}
N 140 70 140 130 {lab=GND}
N 140 -50 140 10 {lab=#net2}
N 10 -280 10 -240 {lab=#net3}
N 10 -280 140 -280 {lab=#net3}
N 140 -50 230 -50 {lab=#net2}
N 140 -110 140 -50 {lab=#net2}
N 360 10 410 10 {lab=#net4}
N 360 -170 360 -80 {lab=#net4}
N 360 -170 410 -170 {lab=#net4}
N 310 -80 360 -80 {lab=#net4}
N 360 -80 360 10 {lab=#net4}
N 450 -260 450 -200 {lab=GND}
N 320 110 320 150 {lab=#net5}
N 320 150 450 150 {lab=#net5}
N 450 40 450 150 {lab=#net5}
N 450 -80 540 -80 {lab=#net6}
N 450 -80 450 -20 {lab=#net6}
N 450 -140 450 -80 {lab=#net6}
N 140 -280 140 -170 {lab=#net3}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 40 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 120 -140 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {vsource.sym} 10 -210 0 1 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 10 -180 0 0 {name=l1 lab=GND}
C {gnd.sym} 140 130 0 0 {name=l2 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 430 -170 2 1 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 430 10 2 1 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {vsource.sym} 320 80 2 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 320 50 2 1 {name=l3 lab=GND}
C {gnd.sym} 450 -260 2 1 {name=l4 lab=GND}
