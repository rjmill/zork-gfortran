FC = g77 -g -fugly-logint
SOURCE = dungeon.o game.o gdt.o objects.o parser.o rooms.o subr.o timefnc.o verbs.o
EXE = dungeon.exe

all : dungeon

dist : dungeon
	strip $(EXE)

dungeon : $(SOURCE)
	$(FC) -o $(EXE) $^

