
include ../../dprmk/mk.global

ARCHIVE = $(BLD)/libXlt.a

CSOURCES = \
	BubbleButton.c \
	SlideC.c
	
all: build

build: $(ARCHIVE)

$(ARCHIVE): $(COBJECTS)
	@echo building $@
	@$(call mkar,$@,$^)

include ../../dprmk/mk.rules

