EXES=rol
OBJS=$(addsuffix .o, $(EXES))
ASFLAGS= -g -march=armv8-a
AS=as
CC=gcc

all: $(EXES) $(OBJS)

%: %.o
	$(CC) -o $@ $+

% : %.s

%.o : %.s
	$(AS) $(ASFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -vf $(EXES) *.o
