
include ../../dprmk/mk.global
include ../mk.local

ARCHIVE = $(BLD)/libXlt.a

CSOURCES = \
	BubbleButton.c \
	SlideC.c

CFLAGS_local = $(CFLAGS_nedit)
	
all: build

build: $(ARCHIVE)

$(ARCHIVE): $(COBJECTS)
	@echo building $@
	@$(call mkar,$@,$^)

include ../../dprmk/mk.rules

