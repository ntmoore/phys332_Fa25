# Here's the list of commands on physlin20 to get this tcl batch job 
# to create a bitstream file.

# Files are:
nathan@physlin20:~/batch_run$ tree
.
├── clockInfo.txt
├── file4-2.v
├── lab4-2.bit
├── Nexys-4-DDR-Master.xdc
├── README.txt
├── run_viviado_batch_job.tcl
├── vivado.jou
└── vivado.log

1 directory, 8 files

# here's the script
vi run_viviado_batch_job.tcl
# Run the script with:
source /tools/Xilinx/Vivado/2024.2/settings64.sh
/tools/Xilinx/Vivado/2024.2/bin/vivado -mode batch -source run_viviado_batch_job.tcl
