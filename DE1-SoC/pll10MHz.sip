set_global_assignment -entity "pll10MHz" -library "lib_pll10MHz" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "pll10MHz" -library "lib_pll10MHz" -name IP_TOOL_VERSION "13.1"
set_global_assignment -entity "pll10MHz" -library "lib_pll10MHz" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_pll10MHz" -name SPD_FILE [file join $::quartus(sip_path) "pll10MHz.spd"]

set_global_assignment -library "lib_pll10MHz" -name MISC_FILE [file join $::quartus(sip_path) "pll10MHz_sim/pll10MHz.vo"]
