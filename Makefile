CROSS_COMPILE 	:= 
CC				:= $(CROSS_COMPILE)gcc
LD				:= $(CROSS_COMPILE)ld
AS				:= $(CROSS_COMPILE)as
AR				:= $(CROSS_COMPILE)ar
NM				:= $(CROSS_COMPILE)nm

OBJDUMP			:= $(CROSS_COMPILE)objdump
OBJCOPY			:= $(CROSS_COMPILE)objcopy


CCFLAGS			:= -g 
CCFLAGS 		+= -I./include

LDFLAGS			:= 

TOPDIR			:= $(shell pwd)

export CC LD AS AR CCFLAGS LDFLAGS TOPDIR 

TARGET			:= main

OBJECTS			+= a.o b.o c.o sub/

compile:begin_recur $(TARGET)
	@echo $(TARGET) has been built

asmdump:$(TARGET).s
	@echo get asm dumpfile $<

nmdump:$(TARGET).map
	@echo get nm dumpfile $<

$(TARGET).map:compile
	$(NM) $(TARGET) | sort > $@

$(TARGET).s:compile
	$(OBJDUMP) -d $(TARGET) > $@

begin_recur:
	make -C ./ -f $(TOPDIR)/Makefile.build

$(TARGET):build.o
	$(CC) $(LDFLAGS) $< -o $@
clean:
	rm -rf $(shell find . -name "*.o")
	rm -rf $(TARGET) $(TARGET).map $(TARGET).s
clear:
	rm -rf $(shell find . -name "*.o")
	rm -rf $(shell find . -name ".*.o.d")
	rm -rf $(TARGET) $(TARGET).map $(TARGET).s

.PHONY:	compile begin_recur clean clear
