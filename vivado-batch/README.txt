# You can run vivado in batch mode
#
# start command.com (Windows command prompt) (not powershell?)
#
# make sure Windows knows what version of Vivado you'reusing
# and where that version of vivado lives
call C:\Xilinx\2025.1\Vivado\settings64.bat
# call C:\Xilinx\Vivado\2019.2\settings64.bat
#
# Run the tcl script with: 
vivado -mode batch -source create_bitstream.tcl
#
# then, ta-da, you've got a bitstream file.  
#
C:\Users\sj5947pw.e\Downloads\vivado-batch>dir
 Volume in drive C has no label.
 Volume Serial Number is 1223-C9D1

 Directory of C:\Users\sj5947pw.e\Downloads\vivado-batch

10/17/2025  06:13 PM    <DIR>          .
10/17/2025  06:11 PM    <DIR>          ..
10/17/2025  06:13 PM    <DIR>          .Xil
10/17/2025  06:07 PM               387 clockInfo.txt
10/17/2025  06:06 PM             1,005 create_bitstream.tcl
10/17/2025  06:14 PM               113 dfx_runtime.txt
10/17/2025  05:57 PM               972 file4-2.v
10/17/2025  06:08 PM         3,825,925 lab4-2.bit
10/17/2025  05:57 PM            19,630 Nexys-4-DDR-Master.xdc
10/17/2025  06:13 PM             1,111 vivado.jou
10/17/2025  06:14 PM             2,371 vivado.log
10/17/2025  06:06 PM             1,111 vivado_22500.backup.jou
10/17/2025  06:08 PM            38,488 vivado_22500.backup.log
10/17/2025  06:01 PM             1,111 vivado_25292.backup.jou
10/17/2025  06:01 PM             1,454 vivado_25292.backup.log
10/17/2025  06:03 PM             1,110 vivado_8316.backup.jou
10/17/2025  06:05 PM            38,386 vivado_8316.backup.log
              14 File(s)      3,933,174 bytes
               3 Dir(s)  186,744,274,944 bytes free