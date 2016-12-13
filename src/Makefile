SHELL = /bin/sh
# gfortran options:
#  -g ->include source level debugging support
#  -ffixed-form -> for Fortran 77 fixed form parsing
#  -fd-lies-as-code -> include debugging statements
#  -fd-lines-as-comments -> ignore debugging statements
#DEBUG= -fd-lines-as-code
DESTDIR = ../dist
FC = gfortran
FFLAGS = -g -ffixed-form -fd-lines-as-comments $(DEBUG)
OBJS = dungeon.o game.o gdt.o objects.o parser.o rooms.o subr.o timefnc.o verbs.o
DATA_FILES = data/dtext data/dindx
EXE = dungeon
DIST_FILE = ${EXE}_distribution.tgz

all : ${EXE}

dist : all
	rm -rf ${DESTDIR}
	mkdir -p ${DESTDIR}
	cp ${EXE} ${DESTDIR}
	strip ${DESTDIR}/$(EXE)
	cp ${DATA_FILES} ${DESTDIR}
	tar czf ${DIST_FILE} ${DESTDIR}

${EXE} : $(OBJS)
	$(FC) -o $(EXE) $^

clean:
	rm -f ${EXE} ${OBJS}

clobber: clean
	rm -rf ${DESTDIR} ${DIST_FILE}

install:
	@echo "install rule not implemented yet."
