
SUBDIRS = source

all: build


build:
	@$(MAKE) -s target TARGET=

clean:
	@$(MAKE) -s target TARGET=clean

target: $(SUBDIRS)

$(SUBDIRS):
	@$(MAKE) -C "$@" "$(TARGET)"

.PHONY: all build clean target $(SUBDIRS)
