
include ../../dprmk/mk.global

ARCHIVE = $(BLD)/libNUtil.a

CSOURCES = \
	check_lin_tif.c \
	clearcase.c     \
	DialogF.c       \
	fileUtils.c     \
	fontsel.c       \
	getfiles.c      \
	managedList.c   \
	misc.c          \
	motif.c         \
	prefFile.c      \
	printUtils.c    \
	utils.c         \
	vmsUtils.c
	
all: build

build: $(ARCHIVE)

$(ARCHIVE): $(COBJECTS)
	@echo building $@
	@$(call mkar,$@,$^)

include ../../dprmk/mk.rules

