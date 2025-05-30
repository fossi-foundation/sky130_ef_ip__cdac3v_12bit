#!/bin/bash
#
project=sky130_ef_ip__cdac3v_12bit

echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=sky130A} > /dev/null

dependpath=../ip/sky130_ef_ip__analog_switches/xschem
xschem -n -s -r -x -q --tcl "set lvs_netlist 1; append XSCHEM_LIBRARY_PATH :${dependpath}" --rcfile $PDK_ROOT/$PDK/libs.tech/xschem/xschemrc -o ../netlist/schematic -N ${project}.spice ${project}.sch
echo "Done!"
exit 0
