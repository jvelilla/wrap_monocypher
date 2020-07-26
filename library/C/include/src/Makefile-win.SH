TOP = ..
DIR = $dir_sep
OUTDIR= .
INDIR= .
CC = $cc
OUTPUT_CMD = $output_cmd
CFLAGS = -I"$rt_include" -I $(TOP)src$(DIR) 
JCFLAGS = $(CFLAGS) $optimize $ccflags
JMTCFLAGS = $(CFLAGS) $optimize $mtccflags
JILCFLAGS = $(CFLAGS) $optimize $mtccflags  -DEIF_IL_DLL
LN = copy
MV = $mv
RM = $del
MAKE = $make
MKDIR = $mkdir
OBJECTS = monocypher.$obj

.c.$obj:
	$(CC) -c $(JCFLAGS) $<

all:: standard
	$(MAKE) clean

standard:: monocypher.lib

clean:
	$(RM) *.$obj
	$(RM) *.lib

monocypher.lib: $(OBJECTS)
	$alib_line
	$(MKDIR) $(TOP)$(DIR)$(TOP)$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib
	$(MV) $@ $(TOP)$(DIR)$(TOP)$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib$(DIR)$@