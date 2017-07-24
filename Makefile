ROOT=.

include Make.config

OFILES=\
	main.$O\
	cpu.$O\
	readcons.$O\
	secstore.$O\
	latin1.$O\
	$(OS)-factotum.$O\
	$(XOFILES)\

LIBS1=\
	kern/libkern.a\
	exportfs/libexportfs.a\
	libauth/libauth.a\
	libauthsrv/libauthsrv.a\
	libsec/libsec.a\
	libmp/libmp.a\
	libc/libc.a\
	libip/libip.a\

# stupid gcc
LIBS=$(LIBS1) $(LIBS1) $(LIBS1) libmachdep.a

default: $(TARG)
$(TARG): $(OFILES) $(LIBS)
	$(CC) $(LDFLAGS) -o $(TARG) $(OFILES) $(LIBS) $(LDADD)

%.$O: %.c
	$(CC) $(CFLAGS) $*.c

clean:
	rm -f *.o */*.o */*.a *.a drawterm drawterm.exe

kern/libkern.a:
	(cd kern; $(MAKE))

exportfs/libexportfs.a:
	(cd exportfs; $(MAKE))

libauth/libauth.a:
	(cd libauth; $(MAKE))
	
libauthsrv/libauthsrv.a:
	(cd libauthsrv; $(MAKE))

libmp/libmp.a:
	(cd libmp; $(MAKE))

libsec/libsec.a:
	(cd libsec; $(MAKE))

libc/libc.a:
	(cd libc; $(MAKE))

libip/libip.a:
	(cd libip; $(MAKE))
