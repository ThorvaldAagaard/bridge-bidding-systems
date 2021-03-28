# Run with: deal.exe [-v] -i path/to/scratch.tcl n
# The TCL interpreter annoyingly needs forward slashes in windows paths
# The main `deal.exe` program expects to run with the working directory matching the deal.exe directory
# http://bridge.thomasoandrews.com/deal30/
set script_path [ file dirname [ file normalize [ info script ] ] ]
source $script_path/deal-utils.tcl

main {
    if {[flattish east] || [hcp east]< 12 || [hcp east] >19} { reject }
    if {[hcp south] < 7 || [flattish south]} { reject }
    if {[two_suiter south]} { accept }
    reject
}
