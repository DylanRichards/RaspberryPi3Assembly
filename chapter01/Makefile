ASM_FILE=first.s

# Flags
ASFLAGS	= -g -march=armv8-a
AS		= as
CC		= gcc

all: first

first: first.o
	$(CC) -o $@ $+

first.o : first.s
	$(AS) $(ASFLAGS) -o $@ $<

clean:
	rm -vf first *.o
