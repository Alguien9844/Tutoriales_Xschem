v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 0 -610 0 -40 {}
L 4 0 -40 0 0 {}
L 4 0 0 1040 0 {}
L 4 1040 -640 1040 0 {}
L 4 0 -660 0 -600 {}
L 4 0 -660 1040 -660 {}
L 4 1040 -660 1040 -640 {}
L 4 0 -480 1040 -480 {}
T {This corresponds to the mos basic
library set required to simulate in 
IHP-sg13g2. Fast-Fast and Slow-slow
are sometimes used when checking 
performance on all corners
} 140 -430 0 0 0.4 0.4 {}
T {Within this block you can insert any 
script required.Have in mind that 
only one simulation (Tran, DC, AC) 
can be performed at once. Separate
blocks for parameters, variable creation 
and measurments are allowed to run in 
tandem. Use * to comment lines.

} 140 -220 0 0 0.4 0.4 {}
T {Copy and paste these two blocks on any 
         project/schematic if desired  } 20 -620 0 0 0.9 0.9 {}
C {devices/code_shown.sym} 580 -410 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".param corner=0

.if (corner==0)
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.endif
"}
C {devices/code.sym} 600 -180 0 0 {name=Script_Base only_toplevel=false spice_ignore = false
*Spice_ignore is usefull when creating two separate scripts for the same schematic.

value="

*At this point the script is to be written. Before the .control command, you can
* Declare Netlist components
* Declare parameters for later use
* Set voltage sources
* Passive loads, can be capacitances or resistors.

.control

*From this point forward, until "endc" all code will correspond to the simulation script.
*Here, variables can be created through ,let
*Measurments can be aquired, plots be created 
*Setting the type of simulation and how it runs.
*The MOST importat part is the latter, since most things that dont include setting
*the simulation can be called for within the simulation console.


save all

*It is convenient to save all parameters at once instead of cherry-picking those you might need.

.endc

 
.end
"}
