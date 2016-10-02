# gfortran options:
#  -g ->include source level debugging support
#  -ffixed-form -> for Fortran 77 fixed form parsing
#  -fd-lies-as-code -> include debugging statements
#  -fd-lines-as-comments -> ignore debugging statements
#DEBUG= -fd-lines-as-code
DEST = ../dist
FC = gfortran -g  -ffixed-form -fd-lines-as-comments $(DEBUG)
OBJS = dungeon.o game.o gdt.o objects.o parser.o rooms.o subr.o timefnc.o verbs.o
DATAFILES = data/dtext data/dindx
EXE = dungeon

all : ${EXE}

dist : ${EXE}
	rm -rf ${DEST}
	mkdir -p ${DEST}
	cp ${EXE} ${DEST}
	strip ${DEST}/$(EXE)
	cp ${DATAFILES} ${DEST}

dungeon : $(OBJS)
	$(FC) -o $(EXE) $^

clean:
	rm -rf ${DEST}
	rm -f ${EXE} ${OBJS}
