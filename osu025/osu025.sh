#!/bin/tcsh
#---------------------------------------------------------------
# Shell script setting up all variables used by the qflow scripts
# for this project
#---------------------------------------------------------------

# The LEF file containing standard cell macros

set leffile=osu025_stdcells.lef

# The SPICE netlist containing subcell definitions for all the standard cells

set spicefile=osu025_stdcells.sp

# The liberty format file containing standard cell timing and function information

set libertyfile=osu025_stdcells.lib

# If there is another LEF file containing technology information
# that is separate from the file containing standard cell macros,
# set this.  Otherwise, leave it defined as an empty string.

set techleffile=""


set bufcell=BUFX2	;# Minimum drive strength buffer cell
set bufpin_in=A		;# Name of input port to buffer cell
set bufpin_out=Y	;# Name of output port to buffer cell


set fillcell=FILL	;# Spacer (filler) cell (may use regexp)
z

set separator=""		;# Separator between gate names and drive strengths
set techfile=SCN4M_SUBM.20		;# magic techfile
set magicrc=osu025.magicrc	;# magic startup script
set gdsfile=osu025_stdcells.gds2	;# GDS database of standard cells

# Option defaults
set fanout_options="-l 100 -c 20"    ;# blifFanout target maximum latency
                                     ;# per gate 100ps, output load set to 20fF
set via_stacks="1"
set vesta_options="--summary reports --long"
set addspacers_options="-stripe 2.0 50.0 PG"
set xspice_options="-io_time=1n -time=100p -idelay=10p -odelay=100p -cload=500f"
