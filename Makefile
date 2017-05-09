
include ../dprmk/mk.global

SUBDIRS = util Microline/XmL Xlt source

all: help build

build:
	@$(MKNPD) target TARGET=

clean:
	@$(MKNPD) target TARGET=clean
	@$(MKNPD) -C doc clean

target: $(SUBDIRS)

$(SUBDIRS):
	@echo Building $@ $(TARGET)
	@$(MAKE) -C "$@" $(TARGET)

.PHONY: all help doc man build clean target $(SUBDIRS)

help:
	@$(MKNPD) -C doc $@

doc:
	@$(MKNPD) -C doc $@

man:
	@$(MKNPD) -C doc $@
