# Run with: deal.exe [-v] -i path/to/scratch.tcl n
# The TCL interpreter annoyingly needs forward slashes in windows paths
# The main `deal.exe` program expects to run with the working directory matching the deal.exe directory
# http://bridge.thomasoandrews.com/deal30/
set script_path [ file dirname [ file normalize [ info script ] ] ]
source $script_path/deal-utils.tcl

main {
  if {[is_1d_opener north] && [hcp north]>12 &&
      (([hcp south]>=9 && [hcp south]<13 && ![has_side_major south]) || [is_possible_inverted_diamond_raise south]) } { accept }
  reject
}
