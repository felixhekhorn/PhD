# Uncomment appropriate flag (machine dependent)
#
# Linux
#
LIBCERN=/usr/local/lib/cernlib/95a/lib
FFLAGS= -O2
# FFLAGS= -g
#
# SGI IRIX
#
# LIBCERN=/usr/people/products/cern/v95a/lib
# FFLAGS= -mips2 -g2 -trapuv -Nn20000
# FFLAGS= -mips2 -O
#
# DEC alpha OSF/1
#
#LIBCERN=/arch/72/cernlib
# FFLAGS=-O1 -tune host
#FFLAGS=-O 
# FFLAGS=-p -O0
# FFLAGS=-g -check_bounds -synchronous_exceptions

hvq.x:	hvqdis.o \
	sig0.o \
	sig1.o \
	sig1q.o \
	misc.o \
	v2.o \
	hist.o \
	pdf.o \
	me.o
	f77 $(FFLAGS) \
	hvqdis.o \
	sig0.o \
	sig1.o \
	sig1q.o \
	misc.o \
	v2.o \
	hist.o \
	pdf.o \
	me.o \
	-L$(LIBCERN) -lpdflib -lmathlib -lpacklib -lsocket -lnsl \
	-o hvqdis.x

clean:
	rm -f *.o core *~ *.x

me.so: me.f
	f2py -c -m me me.f
