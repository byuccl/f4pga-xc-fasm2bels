set_part xc7a35tcpg236-1
read_verilog tests/equivalence_checking_data/add32/add32.v
synth_design -top add32 -max_dsp 0
place_ports
write_edif -force {add32.edf}
write_checkpoint -force -file add32.dcp
report_io -force -file report_io.txt

	read_edif add32.edf
	set_property design_mode GateLvl [current_fileset]
	link_design -part xc7a35tcpg236-1
	opt_design
	place_design
	route_design
	write_checkpoint -force -file design.cp
	write_verilog -force -file tests/equivalence_checking_data/add32/add32_impl.v


	
