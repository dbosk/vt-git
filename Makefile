LATEXFLAGS=		-shell-escape
TEX_PYTHONTEX=	yes

.PHONY: all
all: article.pdf slides.pdf

SRC+=theory.bib
SRC+=misconceptions.bib
SRC+=preamble.tex

SRC+=introduction.tex
SRC+=background.tex

SRC+=method.tex

SRC+=model.tex
SRC+=staging.tex
SRC+=branches.tex
SRC+=remotes.tex

SRC+=related-work.tex
SRC+=conclusions.tex
SRC+=search-protocol.tex

DEPENDS+=	figs/contrast-color.tikz
DEPENDS+=	figs/generalization-color.tikz
DEPENDS+=	figs/fusion-color.tikz

DEPENDS+=	didactic.sty

article.pdf: article.tex ${SRC} ${DEPENDS}
slides.pdf: slides.tex ${SRC} ${DEPENDS}

# PythonTeX's cus_dep lives in makefiles/latexmkrc (committed in the submodule);
# latexmk loads it via the root `latexmkrc` symlink.
article.pdf slides.pdf: latexmkrc

.PHONY: clean
clean:
	latexmk -C
	${RM} article.bbl article.run.xml

INCLUDE_MAKEFILES?=./makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
INCLUDE_DIDACTIC=./didactic
include ${INCLUDE_DIDACTIC}/didactic.mk
