FC := gfortran

FFLAGS ?= -g -ffixed-form -fd-lines-as-comments

SRC_DIR := src
DATA_DIR := data
BUILD_DIR := build

_DATA_FILES := dtext dindx
DATA_FILES := $(patsubst %,$(DATA_DIR)/%,$(_DATA_FILES))

_SRCS := dungeon.f game.f gdt.f objects.f parser.f rooms.f subr.f timefnc.f verbs.f
SRCS := $(patsubst %,$(SRC_DIR)/%,$(_SRCS))
OBJS := $(patsubst %,$(SRC_DIR)/%,$(_SRCS:.f=.o))

BIN := dungeon
BIN_FILE := $(patsubst %,$(BUILD_DIR)/%,$(BIN))

all: main

createdir:
	mkdir -p $(BUILD_DIR)

main: $(BIN)
	cp $(DATA_FILES) $(BUILD_DIR)

$(BIN): $(OBJS) | createdir
	$(FC) $(FFLAGS) -o $(BIN_FILE) $^

clean:
	rm -f $(BIN_FILE) $(OBJS)
	rm -r $(BUILD_DIR)
