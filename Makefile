
include ../dprmk/mk.global

SUBDIRS = util Microline/XmL Xlt source

all: build

build:
	@$(MKNPD) target TARGET=

clean:
	@$(MKNPD) target TARGET=clean

target: $(SUBDIRS)

$(SUBDIRS):
	@echo Building $@ $(TARGET)
	@$(MAKE) -C "$@" $(TARGET)

.PHONY: all build clean target $(SUBDIRS)

