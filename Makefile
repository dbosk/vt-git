LATEXFLAGS=		-shell-escape
TEX_PYTHONTEX=	yes

.PHONY: all
all: article.pdf slides.pdf programs

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
SRC+=quiz.tex

# The appendix literate program: woven into the article (quiz.tex), tangled
# into the two quiz descriptions and the analysis program.
NOWEB_SUFFIXES+=	.json

# Weave with syntax highlighting: the dbosk noweb fork's autolang/tominted
# filters typeset each chunk with minted (see the literate-programming
# skill).  The custom lexer keeps chunk references hyperlinked inside
# docstrings; it must sit where LaTeX runs, whitelisted by hash in
# ~/.config/latexminted.
NOWEAVEFLAGS.tex=	-n -delay -autolang -autodefs python3 -index \
			-filter 'tominted -lexer noweb_lexer.py'
NOWEB_LIB=	$(shell sed -n 's/^LIB=//p' "`command -v noweave`" | head -1)
noweb_lexer.py:
	cp ${NOWEB_LIB}/noweb_lexer.py $@
article.pdf: noweb_lexer.py

.PHONY: programs
programs: quiz-knowledge-start.json quiz-knowledge-end.json analyze_quiz.py
quiz-knowledge-start.json: quiz.nw
	${NOTANGLE.json}
quiz-knowledge-end.json: quiz.nw
	${NOTANGLE.json}
analyze_quiz.py: quiz.nw
	${NOTANGLE.py}

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
	${RM} quiz.tex noweb_lexer.py
	${RM} quiz-knowledge-start.json quiz-knowledge-end.json analyze_quiz.py

INCLUDE_MAKEFILES?=./makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
INCLUDE_DIDACTIC=./didactic
include ${INCLUDE_DIDACTIC}/didactic.mk
