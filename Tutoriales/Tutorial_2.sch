v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 830 -240 900 -240 {}
L 4 880 -280 930 -240 {}
L 4 360 -600 360 -50 {}
L 4 360 -50 360 0 {}
L 4 360 0 1250 0 {}
L 4 1250 -620 1250 0 {}
L 4 360 -620 1250 -620 {}
L 4 360 -620 360 -610 {}
L 4 360 -610 360 -580 {}
L 4 0 -620 360 -620 {}
L 4 0 -620 0 -220 {}
L 4 0 -220 360 -220 {}
L 4 0 -220 0 -10 {}
L 4 0 0 360 0 {}
L 4 0 -10 0 0 {}
L 4 0 -640 0 -620 {}
L 4 0 -640 1250 -640 {}
L 4 1250 -640 1250 -620 {}
L 4 0 -780 0 -640 {}
L 4 0 -780 1250 -780 {}
L 4 1250 -780 1250 -640 {}
L 4 880 -200 930 -240 {}
T {Tutorial 2 - Symbol creation and implementation
                   & Pin implementation  } 40 -770 0 0 0.9 0.9 {}
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
} 20 -580 0 0 0.3 0.3 {}
T {Commands used this tutorial} 20 -610 0 0 0.35 0.35 {}
T {Objectives: -Create and edit a symbol for a schematic.
                    -Instance I/O pins and regular pins.
                    -Create VDD and VSS through scripting. 
	      } 440 -590 0 0 0.5 0.5 {}
T {Normally, pins are included 
in the simulation script,but 
for this instance they will 
be made within their own 
block.
} 10 -160 0 0 0.3 0.3 {}
N 560 -330 610 -330 {lab=Vin}
N 560 -240 560 -150 {lab=Vin}
N 560 -150 610 -150 {lab=Vin}
N 510 -240 560 -240 {lab=Vin}
N 560 -330 560 -240 {lab=Vin}
N 650 -240 650 -180 {lab=Vout}
N 650 -240 740 -240 {lab=Vout}
N 650 -300 650 -240 {lab=Vout}
N 650 -120 650 -80 {lab=VSS}
N 650 -420 650 -360 {lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 630 -150 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 630 -330 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} 510 -240 0 0 {name=p1 lab=Vin}
C {opin.sym} 740 -240 0 0 {name=p2 lab=Vout}
C {lab_pin.sym} 650 -80 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 650 -420 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {ipin.sym} 520 -340 0 0 {name=p5 lab=VSS}
C {devices/code.sym} 230 -160 0 0 {name=Pin_settings only_toplevel=false 
value="

vvdd vdd 0 dc 1.8
vvss vss 0 0

* SYNTAX: Name of source  ,  Node where voltage is applied  , Negative port ,   type of source  , positive port
* These are instances of two voltage sources with a GND point of reference
 
.end
"}
C {/foss/designs/Tutoriales_Xschem/Tutoriales/INV_TUT.sym} 1120 -330 0 0 {name=x1}
C {ipin.sym} 520 -310 0 0 {name=p6 lab=VSS}
