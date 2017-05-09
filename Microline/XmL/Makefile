
include ../../../dprmk/mk.global

ARCHIVE = $(BLD)/libXmL.a

CSOURCES = \
	Folder.c \
	Grid.c \
	GridUtil.c \
	Progress.c \
	Tree.c \
	XmL.c

all: build

build: $(ARCHIVE)

$(ARCHIVE): $(COBJECTS)
	@echo building $@
	@$(call mkar,$@,$^)

include ../../../dprmk/mk.rules

