v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 200 -310 520 -310 {}
L 4 195 -310 195 -160 {}
L 4 200 -160 525 -160 {}
L 4 525 -310 525 -160 {}
L 4 520 -310 525 -310 {}
L 4 195 -310 200 -310 {}
L 4 195 -160 205 -160 {}
L 4 195 -210 525 -210 {}
L 4 195 -260 525 -260 {}
L 4 355 -310 355 -160 {}
L 4 70 -575 625 -575 {}
L 4 75 -385 625 -385 {}
L 4 70 -430 625 -430 {}
L 4 70 -385 80 -385 {}
L 4 70 -480 625 -480 {}
L 4 70 -525 625 -525 {}
L 4 395 -575 395 -385 {}
L 4 395 -400 395 -390 {}
L 4 625 -575 625 -385 {}
L 4 70 -575 70 -385 {}
B 4 -340 -518 -330 -508 {}
B 4 -340 -468 -330 -458 {}
B 4 -340 -418 -330 -408 {}
B 4 -340 -353 -330 -343 {}
B 4 -340 -290 -330 -280 {}
B 4 -340 -238 -330 -228 {}
B 4 -340 -188 -330 -178 {}
B 4 -340 -138 -330 -128 {}
B 4 -340 -76 -330 -66 {}
B 4 -340 -28 -330 -18 {}
B 4 -688 -526 -678 -516 {}
B 4 -688 -496 -678 -486 {}
B 4 -688 -466 -678 -456 {}
B 4 -688 -436 -678 -426 {}
B 4 -688 -406 -678 -396 {}
B 4 -688 -372 -678 -362 {}
B 4 -688 -342 -678 -332 {}
B 4 -688 -312 -678 -302 {}
B 4 -688 -280 -678 -270 {}
B 4 -688 -250 -678 -240 {}
B 4 -688 -222 -678 -212 {}
B 4 -688 -192 -678 -182 {}
B 4 -688 -162 -678 -152 {}
B 4 -688 -132 -678 -122 {}
B 4 -688 -102 -678 -92 {}
T {Name Node Reference typeN = MagN} -320 -510 0 0 0.25 0.25 {}
T {Setting up a Vsource} -320 -530 0 0 0.25 0.25 {}
T {.Control  /  .endc} -320 -460 0 0 0.25 0.25 {}
T {Simulation script begin / sim. script end} -320 -480 0 0 0.25 0.25 {}
T {Save all parameters / Save specific parameter} -320 -430 0 0 0.25 0.25 {}
T {save all / save @Device_Adress [param]} -320 -410 0 0 0.25 0.25 {}
T {Create a new variable & Create parameter} -315 -375 0 0 0.25 0.25 {}
T {.let NAME = Adress[parameter] OR equation/Value} -320 -360 0 0 0.25 0.25 {}
T {.AC type_sweep #points f_start f_stop } -320 -280 0 0 0.25 0.25 {}
T {Initiate AC simulation} -320 -300 0 0 0.25 0.25 {}
T {.tran t_step t_stop [t_start]*} -320 -230 0 0 0.25 0.25 {}
T {Initiate transient simulation} -320 -250 0 0 0.25 0.25 {}
T {.DC variable_in  start end step} -320 -180 0 0 0.25 0.25 {}
T {Initiate DC op. point simulation} -320 -200 0 0 0.25 0.25 {}
T {.print analisis variable} -320 -130 0 0 0.25 0.25 {}
T {Show variable value inside console} -320 -150 0 0 0.25 0.25 {}
T {.plot variable_y vs variable_x} -320 -70 0 0 0.25 0.25 {}
T {Create and show graph x vs y} -320 -90 0 0 0.25 0.25 {}
T {.meas analisis name function variable} -320 -20 0 0 0.25 0.25 {}
T {Show specific measurement} -320 -40 0 0 0.25 0.25 {}
T {.param NAME = value (when used elsewhere, it 
 has to be called as \{NAME\})} -320 -345 0 0 0.25 0.25 {}
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
} -660 -360 0 0 0.25 0.25 {}
T {

W: Wire/Cable

M: Move

Alt/Shift + F: Horizontal flip

Alt/Shift + V: Vertical Flip

Alt/Shift + R: Rotate 

Ctrl+C Ctrl+V: Copy/Paste


} -660 -560 0 0 0.25 0.25 {}
T {Commands used within the 
graphic interface (Xschem)} -690 -606 0 0 0.4 0.4 {}
T {Commands used inside the 
    simulator (NGspice)} -342 -606 0 0 0.4 0.4 {}
T {Variable

Voltages

Currents

  Time} 228 -342 0 0 0.4 0.4 {}
T {    Syntax

    v(node)

i(component)

      time  } 374 -344 0 0 0.4 0.4 {}
T {             Function

  Minimum  or   Maximum

   Average  or     RMS
 
  Integrate  or  Differentiate 

         Peak-to-peak} 83 -612 0 0 0.4 0.4 {}
T {       Syntax

   MIN     MAX

   AVG    RMS

INTEG    DERIV

          PP} 433 -612 0 0 0.4 0.4 {}
T {Rise time measurement

.meas tran name TRIG variable VAL= value_s RISE=1 TARG var VAL=value_e RISE=1

Fall time measurement

.meas tran name TRIG var VAL= value_s FALL=1 TARG var VAL=value_e FALL=1

Propagation delay measurement

.meas tran name TRIG var_1 VAL= value_s EDGE=1 TARG var_2 VAL=value_e EDGE=1} 729 -524 0 0 0.4 0.4 {}
T {Most common time measurements and their syntax} 723 -596 0 0 0.5 0.5 {}
T {Simple Cheat-sheet} 33 -796 0 0 1 1 {}
T {The adress for this pmos is:} 128 -126 0 0 0.5 0.5 {}
T {@n.xm1.nsg13_lv_pmos to identify as sub_ckt

if not, then it may be identified as @n.Xm1

in case of it being inside a subcircuit, then is @n.ADRESS_OF_SUB_CKT.Xm1

} 268 -76 0 0 0.35 0.35 {}
C {sg13g2_pr/sg13_lv_pmos.sym} 150 -20 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
