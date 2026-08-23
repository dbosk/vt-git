# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with
code in this repository.

## What this is

An academic paper (work in progress), *"Version control through the lens of
variation theory: misconceptions and critical aspects of Git"* (Bosk),
cataloguing learners' misconceptions of Git — commit model, staging area,
branches, remotes — and analysing how to teach against them using
phenomenography and variation theory. Companion to vt-prog-misconceptions
(same method, introductory programming), vt-debug (debugging), and
vt-terminal (the Unix shell); it grows out of the datintro course-revision
work in the introtools repository (see `introtools:evaluation/improvements.md`
and `introtools:literature/mental-models.md`).

## Build

```sh
make            # builds both article.pdf and slides.pdf
make article.pdf
make clean
```

Build machinery comes from the `makefiles/` and `didactic/` git submodules;
after a fresh clone:

```sh
git submodule update --init --recursive
```

Requires a TeX distribution with `minted` (Pygments, `-shell-escape`),
`pythontex`, and `biber`. Outputs land in `ltxobj/`; `article.pdf` and
`slides.pdf` at the root are symlinks.

## Architecture: one source, two outputs

The content `.tex` files are compiled twice from the same source — once as a
prose article (`article.tex`, memoir + beamerarticle) and once as Beamer
slides (`slides.tex`). Both input the same `preamble.tex` and the same
content files (`introduction.tex`, `background.tex`, `method.tex`,
`model.tex`, `staging.tex`, `branches.tex`, `remotes.tex`,
`related-work.tex`, `conclusions.tex`, `search-protocol.tex`).

Consequences when editing content files:

- Every content file starts with `\mode*`; slide-only material goes in
  `\mode<presentation>{...}` or `\begin{frame}...`; article-only prose is the
  default outside frames.
- Research questions live in `restatable` environments (thm-restate) —
  stated once in `introduction.tex` **inside a frame** (so both builds
  execute them), restated with `\rqmisconceptions*` etc. in `method.tex` and
  `conclusions.tex`. Never write literal "RQ1".
- Citations use `\autocite` (biblatex verbose style; didactic places them in
  the margin/footnotes).

## Bibliography discipline

`misconceptions.bib` entries carry provenance blocks (CLAIM / FOUND-VIA /
PICKED / QUOTE / VERIFIED) per the backing-claims skill; do not add a
citation without one, and do not cite beyond what the VERIFIED line
supports. Entries with `VERIFIED: TODO` (du Boulay 1981, Ben-Ari 1998) are
tracked as introtools issues #124–#125. Postner et al. 2026 is a poster —
low evidence weight. `theory.bib` holds the variation-theory base (NCOL
etc.), shared with the companion papers.

## State of the paper

Scaffold stage: research questions, method skeleton, seeded literature, and
preliminary aspect/pattern analyses per chapter are in place. The systematic
literature-search phase (`search-protocol.tex`) has run in several rounds,
including a measurement round (2026-08-23, scholar session
`vt-git-measurement`, exported to `literature-review/`): has learners'
Git understanding been measured? — no Git concept inventory, diagnostic
instrument or phenomenographic study exists; what is measured is
perception/confidence, skill checkoffs and repository behaviour; the
difficulties are documented from course observation (Isomöttönen & Cochez),
a teacher focus group (Eraslan et al. 2020, abstract only), repository data
and a usability analysis of professionals (Church et al. 2014, hidden
dependencies). `% TODO`/`% XXX` comments mark the open work.

Tooling hazard learned in that round: never run two `scholar` commands on
the same session concurrently (`enrich`/`classify` load the session file
and write it back, dropping searches recorded in between).
