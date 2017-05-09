
include ../../dprmk/mk.global
include ../mk.local

PROGRAM1 = $(BLD)/nedit
PROGRAM2 = $(BLD)/nnc

CSOURCES1 = \
	calltips.c \
	file.c \
	help.c \
	highlight.c \
	highlightData.c \
	interpret.c \
	macro.c \
	menu.c \
	nedit.c \
	parse_noyacc.c \
	preferences.c \
	rangeset.c \
	rbTree.c \
	regexConvert.c \
	regularExp.c \
	search.c \
	selection.c \
	server.c \
	server_common.c \
	shell.c \
	shift.c \
	smartIndent.c \
	tabDragDrop.c \
	tags.c \
	text.c \
	textBuf.c \
	textDisp.c \
	textDrag.c \
	textSel.c \
	undo.c \
	userCmds.c \
	window.c \
	windowTitle.c

CSOURCES2 = \
	nnc.c \
	server_common.c \

CLDLIBLIBS1 = -lX11 -lXt -lXm -lXext -lICE -lm -lNUtil -lXmL -lXlt
CLDLIBLIBS2 = -lX11 -lXt                       -lNUtil

CDEFINES_local = $(CDEFINES_nedit)
CINCLUDE_local = $(CINCLUDE_nedit)
COPT_local     = $(COPT_nedit)

CLDLIBDIRS_local = -L../Microline/XmL/$(BLD) -L../util/$(BLD) -L../Xlt/$(BLD)

LOCALOBJCLEAN = localobjclean
LOCALEXECLEAN = localexeclean

all:
	@$(MKNPD) PROGRAM="$(PROGRAM1)" CSOURCES="$(CSOURCES1)" build CLDLIBLIBS_local="$(CLDLIBLIBS1)"
	@$(MKNPD) PROGRAM="$(PROGRAM2)" CSOURCES="$(CSOURCES2)" build CLDLIBLIBS_local="$(CLDLIBLIBS2)"

build: $(PROGRAM)

$(PROGRAM): $(COBJECTS)
	@echo building $@
	@$(call mkcexe,$@,$^)

include ../../dprmk/mk.rules

localclean:
	@$(MKNPD) PROGRAM="$(PROGRAM1)" CSOURCES="$(CSOURCES1)" LOCALCLEAN= clean
	@$(MKNPD) PROGRAM="$(PROGRAM2)" CSOURCES="$(CSOURCES2)" LOCALCLEAN= clean

localobjclean:
	@$(MKNPD) PROGRAM="$(PROGRAM1)" CSOURCES="$(CSOURCES1)" LOCALOBJCLEAN= objclean
	@$(MKNPD) PROGRAM="$(PROGRAM2)" CSOURCES="$(CSOURCES2)" LOCALOBJCLEAN= objclean

localexeclean:
	@$(MKNPD) PROGRAM="$(PROGRAM1)" CSOURCES="$(CSOURCES1)" LOCALEXECLEAN= execlean
	@$(MKNPD) PROGRAM="$(PROGRAM2)" CSOURCES="$(CSOURCES2)" LOCALEXECLEAN= execlean
