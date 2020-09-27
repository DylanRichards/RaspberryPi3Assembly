EXES=sum01 sum02

ASFLAGS	= -g -march=armv8-a
AS		= as
CC		= gcc

all: $(EXES)

%: %.o
	$(CC) -o $@ $+

% : %.s

%.o : %.s
	$(AS) $(ASFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -vf $(EXES) *.o
