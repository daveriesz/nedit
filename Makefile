
PROGRAM1 = source/nedit
PROGRAM2 = source/nedit-nc

NEDITSRC = \
	source/nedit.c \
	source/file.c \
	source/menu.c \
	source/window.c \
	source/selection.c \
	source/search.c \
	source/undo.c \
	source/shift.c \
	source/help.c \
	source/preferences.c \
	source/tags.c \
	source/userCmds.c \
	source/shell.c \
	source/regularExp.c \
	source/macro.c \
	source/text.c \
	source/textSel.c \
	source/textDisp.c \
	source/textBuf.c \
	source/textDrag.c \
	source/server.c \
	source/highlight.c \
	source/highlightData.c \
	source/interpret.c \
	source/parse.c \
	source/smartIndent.c \
	source/regexConvert.c \
	source/tabDragDrop.c \
	source/rbTree.c \
	source/windowTitle.c \
	source/calltips.c \
	source/server_common.c \
	source/rangeset.c

CFLAGS = -O -I/usr/X11R6/include -DUSE_DIRENT -DUSE_LPR_PRINT_CMD -DBUILD_UNTESTED_NEDIT

CSOURCES = abc/def.c ghi/jkl.c #$(NEDITSRC)
COBJECTS = $(CSOURCES:%.c=$(call cobj,%.c))

OBJSFX = .o
PFM := `uname -s`_`uname -m`

cobj = $(PFM)/$(1:.c=$(OBJSFX))
dashi  = /I$(1)


all: $(PROGRAM1) $(PROGRAM2)

$(PROGRAM1): $(COBJECTS)



info:
	@echo COBJECTS = $(COBJECTS)

include mk.rules
