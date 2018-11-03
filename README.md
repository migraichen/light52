This is a port of FreeRTOS to the light52 processor - 8051 - for my Xilinx Atlys Board - Spartan6 -  

The used processor is a branch of José A. Ruiz light52, see https://github.com/jaruiz/light52 for details.
José's has some differences to the original 8051. The behaviour of the timer is different and in José's port the UART does not depend on the timer.

I also made some changes to it:
 - I changed the timer to have it more 8051 like. 
 - I added reset behaviour for every register

I'm using FreeRTOS V10.1.1, see https://www.freertos.org/ for more informations on that. 
The compiler I'm using is SDCC 3.8.0, see http://sdcc.sourceforge.net/ for more information.
You may need libboost-dev and automake to install it. 
 
To simulate the Design open modelsim. 'cd' to light52/vhdl/simulation and do 'do run.do' in the Tcl console.
To compile FreeRTOS. 'cd' to light52/test/FreeRTOS and do 'make all'. It will generate a file obj_code_pkg.vhdl that contains the bytecode for the code RAM as an VHDL array.


