CC := m68k-atari-mint-gcc
LIBCMINI_ROOT := libcmini
OBJS := main.o
LIBS=-lcmini -nostdlib -lgcc
CFLAGS := -std=c99 -fomit-frame-pointer -Wall -I$(LIBCMINI_ROOT)/include
LDFLAGS	:= -nostartfiles -nodefaultlibs -nostdlib $(LIBCMINI_ROOT)/lib/crt0.o -L$(LIBCMINI_ROOT)/lib -s -lcmini -lgcc

MAIN.PRG: $(OBJS)
	@mkdir -p $(dir $@)
	$(CC) $(OBJS) -o $@ $(LDFLAGS) $(LIBS)

%.c.o: %.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@
