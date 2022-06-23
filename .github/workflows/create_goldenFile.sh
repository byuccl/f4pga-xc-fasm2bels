#!/bin/bash
source /tools/Xilinx/Vivado/2019.2/settings64.sh 
vivado -mode batch -source create_goldenFile.tcl
rm -r *.dcp
rm -r *.edf
rm report_io.txt
mv *_impl.v tests/equivalence_checking_data/add32/top_bit.golden.v