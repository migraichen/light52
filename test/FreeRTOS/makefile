#-- Target 'all' will build an object code VHDL package ready for synthesis ----

#-- Project configuration ------------------------------------------------------
 
# Directories              
BINDIR = bin
OBJDIR = obj
SRCDIR = src
FREERTOS = src/FreeRTOS
BRPATH = ../../tools/build_rom
VHDL_TB_PATH = .
COMDIR = ../common

# The parameters we set here will end in the object code VHDL package and will 
# be passed to the MCU core as generics.

PROJ_NAME = "FreeRTOS"
# XROM size in bytes.
XCODE_SIZE = 32768

# IRAM size in bytes.
IDATA_SIZE = 128

# XRAM size in bytes.
XDATA_SIZE = 8192

# Header Files
INCLUDE := -I$(FREERTOS)/include
INCLUDE += -I$(SRCDIR)/config
INCLUDE += -I../include
INCLUDE += -I$(FREERTOS)/portable/SDCC/light52
INCLUDE += -Isrc/Common/include

# Source files 
SRC :=  $(SRCDIR)/main.c

# FreeRTOS source Files
SRC +=  $(FREERTOS)/croutine.c
SRC +=  $(FREERTOS)/tasks.c
SRC +=  $(FREERTOS)/event_groups.c 
SRC +=  $(FREERTOS)/list.c
SRC +=  $(FREERTOS)/queue.c
SRC +=  $(FREERTOS)/stream_buffer.c
SRC +=  $(FREERTOS)/timers.c
SRC +=  $(FREERTOS)/portable/MemMang/heap_1.c
SRC +=  $(FREERTOS)/portable/SDCC/light52/port.c

# Final executable HEX file
BIN :=  $(PROJ_NAME).ihx

# Toolchain flags 
LFLAGS = --debug -o $(OBJDIR)/ --verbose --out-fmt-ihx --model-large --code-size $(XCODE_SIZE) --xram-size $(XDATA_SIZE) --iram-size $(IDATA_SIZE) 

# The --no-xinit-opt flag is needed, without it the data in the XRAM will not be consisten after a reset of the CPU
CFLAGS = --debug -o $(OBJDIR)/ --model-large -D__LIGHT52__ $(INCLUDE)  --stack-auto --no-xinit-opt 



# Include the main makefile body with all the rules.
include ../include/common.mk
