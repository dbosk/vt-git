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

## The instrument (`quiz.nw`)

`quiz.nw` is a literate program (noweb; `make programs` tangles
`quiz-knowledge-{start,end}.json` and `analyze_quiz.py`, all gitignored).
Each quiz has an opener (consent / preparation, position 1), six open
essay items (positions 3–8, the phenomenographic accounts; items 4, 6 and
8 are the open twins of the closed *what a commit keeps*, *seeing another
branch* and *why they cannot see it* — placed *before* the closed items
and shown one at a time without backtracking so the distractors cannot
seed the accounts) and the closed knowledge items (positions 11–22, one
per candidate critical aspect, in chapter order; item 11 — the closed
twin of open item 4 — is in the end quiz only, so the start quiz has 11
closed items and the end quiz 12). `multiple_attempts` and
`result_view_settings` are nested objects (Canvas ignores the keys written
flat). Every item except the openers carries `feedback.neutral` — for
closed items a short account of why the key is right, for open items a
*provisional* outcome space (3–4 ordered levels; to be replaced by the
empirical one after cohort 1, issue #8) — shown only in the end quiz via
`display_item_feedback` (false in the start quiz); `analyze_quiz.py`
ignores feedback so the coder and the LLM pre-coding never see it. The two JSONs carry canvaslms `modules` specs: each quiz is the
sole, must-submit item of its own datintro26 module ("Git pre-test" /
"Git post-test"), and the appendix prose gives the `modules
create`/`modules edit --prerequisite` commands that chain pre-test →
Collaboration (the Git module) → post-test, restating Collaboration's
existing prerequisite "The terminal". Deployed 2026-08-23 to datintro26
(modules at positions 5 and 7, Collaboration at 6; quiz ids 394105 /
394106), unpublished; settings read back from the New Quizzes API and
confirmed. Test changes in "Sandbox dbosk" first and delete the test
artefacts afterwards; re-sync item edits with `canvaslms --no-cache quizzes edit -c datintro26 -a <id> -f <json> --replace-items` (the cache does not see freshly created quizzes; canvaslms#425).
Items are keyed by title in the Canvas report (substring match — no open
title may be a substring of a closed one); `analyze_quiz.py` reads the
answer key from the tangled **end**-quiz JSON, skips items a report does
not carry, filters by consent, prints per-item facility and distractor
counts, paired pre/post gains (`--quiz both --results start.csv end.csv`)
and writes a long-format coding sheet for the accounts (optional `--llm`
pre-coding in separate `suggested_*` columns). Activate the
`literate-programming` skill before editing `quiz.nw`.
