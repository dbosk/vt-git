# Ethics review application — datintro26 data collection (working draft)

**Status:** draft, not filed. No reference number exists. Nothing here has been
approved, and no research use is made of any collected data until the review is
decided.

**Language:** English working draft; the filed version will be in Swedish
(portal and form to be confirmed — see §12 and §13).

**Covers the data collection behind:** the three companion papers
[dbosk/vt-terminal](https://github.com/dbosk/vt-terminal),
[dbosk/vt-git](https://github.com/dbosk/vt-git),
[dbosk/vt-latex](https://github.com/dbosk/vt-latex).

**Synchronised copy.** This file is byte-identical in the three repositories
above. Edit one copy, propagate to the others in the same round, and verify:
`md5sum ../vt-{terminal,git,latex}/ethics-application-datintro26.md`

**Last synchronised:** 2026-08-29

---

## 1. Project and responsible researcher

- **Project title:** Misconceptions and critical aspects in learning the Unix
  terminal, version control with Git, and document preparation with LaTeX: a
  variation-theoretic study in an introductory computing course.
- **Principal investigator:** Daniel Bosk, KTH Royal Institute of Technology
  (`dbosk@kth.se`). *School/department affiliation: [TO FILL].*
- **Other personnel:** the course's teachers and teaching assistants, who
  administer the course as usual and, where they act as coders of research
  data, do so under the PI's direction. *(Named list: [TO FILL before
  filing].)*
- **Data controller:** KTH Royal Institute of Technology.
- **Funding:** none specific to the study; conducted within the PI's ordinary
  teaching and research duties. *(Confirm before filing.)*
- **Collection:** the "datintro26 data collection" — the autumn 2026 instance
  of KTH's introductory computing-introduction course (datintro26) and the
  CS programme's parallel course running the same modules (2026 course code to
  be confirmed; tracked as vt-git#9, vt-latex#6, vt-terminal#7).
- **Period:** autumn term 2026; the course's grading (and hence assessment-trace
  accrual) runs the full academic year; interviews after each module.
- **Papers fed:** the three companion papers above, each covering one module
  (terminal/SSH, Git, LaTeX).

## 2. Background and purpose

The three studies apply *variation theory* and *phenomenography* to three
computing skills that introductory courses teach but the computing-education
literature covers thinly: the Unix shell, version control with Git, and
document preparation with LaTeX. Each study first maps the misconceptions and
difficulties the literature documents, derives from them the *critical
aspects* a learner must discern, and constructs *patterns of variation* that
can make those aspects discernible. The analytical part requires no human
data. The data collection covered by this application serves the empirical
validation: measuring which of the derived aspects the course's students do
and do not discern, and letting the students' own accounts correct the
analysis.

The papers' research questions (verbatim):

- **vt-terminal:** (RQ1) Which misconceptions and difficulties with the Unix
  shell — its command model, the file system, composition, and remote use —
  does the literature document? (RQ2) Which critical aspects of using the
  shell do these misconceptions and difficulties point to? (RQ3) Which
  patterns of variation can make these critical aspects discernible to
  learners?
- **vt-git:** (RQ1) Which misconceptions and difficulties with Git — its
  commit model, the staging area, branches, and remotes — does the literature
  document? (RQ2) Which critical aspects of version control with Git do these
  misconceptions and difficulties point to? (RQ3) Which patterns of variation
  can make these critical aspects discernible to learners?
- **vt-latex:** (RQ1) Which misconceptions and difficulties with LaTeX — the
  compile model, error handling, and semantic markup — do the literature and
  our course data document? (RQ2) Which critical aspects of document
  preparation with LaTeX do these misconceptions and difficulties point to?
  (RQ3) Which patterns of variation can make these critical aspects
  discernible to learners?

RQ1–RQ3 are answered by literature review and analysis; the collection
described here tests the answers empirically (which aspects students discern
before and after each module) and collects phenomenographic accounts from
which aspects can be *found* rather than argued.

## 3. Study design and methods

Chronologically, per module (terminal, Git, LaTeX):

1. **Pre-test** at module start: a diagnostic quiz whose first item is the
   consent item (§6), followed by six ungraded open free-text items asking for
   the student's own account of the phenomenon, then closed diagnostic items
   (one per candidate critical aspect) whose distractors express the
   documented misconceptions.
2. **Ordinary teaching** of the module. The teaching is the course's own and
   is **not varied or manipulated for research purposes**; the study observes,
   it does not experiment on the students.
3. **Post-test** at module end: the same open and knowledge items, so the
   paired difference measures what the module made discernible. The post-test
   also *teaches*: after submission it explains every item's alternatives and
   shows the expected ways of seeing, so taking it benefits the student
   directly.
4. **Assessment traces**: the course's ordinary grading runs for all students
   all year; for consenting students the grading outcomes are extracted as
   misconception observations (each check failure operationalises an
   undiscerned aspect). No extra assessment is added for research.
5. **Interview sub-study** after each module: semi-structured phenomenographic
   interviews with six to ten volunteers per module, following up the six open
   stems.

Analysis: closed items are scored per aspect; open accounts and interview
transcripts are pooled per item and coded phenomenographically into categories
of description and an outcome space. Coding is inductive and done by hand; a
language model drafts a suggested category per account in separate
`suggested_*` columns, always verified by a human coder (§7).

## 4. Participants and recruitment

- **Population:** students of datintro26 (first-year students in KTH's
  computing-introduction course) and of the CS programme's parallel course
  running the same modules. Expected cohort: approximately [TO FILL: expected
  N per course].
- **Recruitment:** the pre-test quiz is part of the course's module; its first
  item asks for research consent (§6). Interview volunteers are recruited from
  consenting students after each module.
- **Dependency relationship:** the participants are the PI's (and the other
  teachers') own students. Mitigations: participation is opt-in;
  the consent item states explicitly that participation does not affect the
  grade; grading runs identically for all students regardless of consent;
  research extraction happens after the fact and filters by consent, so no
  teacher sees during the course who consented; declining costs the student
  nothing (the quiz itself is a course element with pedagogical value either
  way).
- **Compensation:** none.
- Teachers and teaching assistants are not data subjects in this collection
  (unlike the companion prgi26 collection).

## 5. Data collected

| Source | Content | Personal-data category | Identifiers | Pseudonymisation | Retention |
|---|---|---|---|---|---|
| Pre/post quizzes (closed items) | chosen alternatives, scores | ordinary (study performance) | platform name + login ID | analysis keys on login ID; name only in coding sheet | [TO FILL: KTH retention rule] |
| Pre/post quizzes (open items) | free-text accounts of the phenomenon | ordinary (student-written text) | as above | as above; quotes anonymised in publication | as above |
| Assessment traces (all three) | grading check pass/fail per attempt, attempt timing | ordinary (study performance) | repository/account identity → login ID | login ID key | as above |
| Git process data (vt-git only) | commit granularity and timing, commit messages, branch use from the students' course repositories | ordinary; commit messages are student-written text | repository identity → login ID | login ID key; messages quoted only anonymised | as above |
| Submitted LaTeX sources (vt-latex only) | the students' submitted documents, statically analysed for markup use | ordinary (student-written text/code) | submission identity → login ID | login ID key | as above |
| Server state (vt-terminal only) | the state the student produced on the shared course server, as checked by the lab grading | ordinary | account identity → login ID | login ID key | as above |
| Interviews | audio recording, transcript | ordinary; audio is identifiable by nature | participant identity | transcripts pseudonymised at transcription; recordings never published | recordings deleted after transcription [TO CONFIRM] |

Explicit statements:

- **(a)** No special categories of personal data (GDPR Art. 9) are sought by
  any instrument.
- **(b)** Free-text answers, commit messages, and interview recordings could
  in principle contain special-category data volunteered incidentally. The
  handling rule is redaction at the point of transcription or coding:
  incidental sensitive content is removed from the analysis data and never
  quoted.
- **(c)** Indirect identifiability: name and login ID make a row directly
  identifiable; both stay in the coding sheet, which is the only place they
  meet the data. What leaves the coding sheet into the analysis data is keyed
  by login ID (pseudonym); what leaves the analysis into publication is
  aggregate or anonymised.

## 6. Consent procedure and non-participation

The consent item is the first item of each module's pre-test, worded (verbatim,
identical across the three modules so a student who has answered one recognises
the next):

> I consent to my answers in these quizzes, and my submissions in the course,
> being used pseudonymised in computing education research. My participation
> does not affect my grade.

- The item is answered Yes/No, carries no points, and the quiz proceeds
  identically either way.
- The consent covers, per module: the pre- and post-test answers (closed and
  open), the course's assessment record for that module's labs (including, for
  the Git module, the process data in the pushed repositories, and for the
  LaTeX module, the submitted sources), and being asked about interview
  participation.
- **Interviews get separate, explicit consent** before any recording, covering
  the recording, transcription, and pseudonymised quotation.
- **Withdrawal:** a participant can withdraw consent at any time by contacting
  the PI (`dbosk@kth.se`); their rows are then removed from research
  extractions. Withdrawal does not affect the course or the grade.
- **Non-participation:** a non-consenting student's data is never extracted
  for research. The grading record remains the course's own administrative
  record, as for any course, and is not research data.
- **Known limitation of the current wording:** the phrase "these quizzes, and
  my submissions in the course" is narrower than a reader of this application
  might expect for the assessment-trace and process-data sources. Proposed
  improved wording, to be adopted once this application is decided (the papers
  deliberately freeze the deployed wording until then):

  > I consent to my answers in this module's quizzes, my course submissions
  > and the course's assessment record of them, and — if I separately agree to
  > one — a recorded interview, being used pseudonymised in computing
  > education research. My participation is voluntary, does not affect my
  > grade, and I can withdraw at any time by contacting the responsible
  > researcher.

- A **participant information sheet** (§11) will accompany the consent item
  and spell out scope, storage, rights, and contacts.

## 7. Data management

- **Storage:** [TO FILL: KTH-approved storage system, e.g. KTH OneDrive/
  project storage; where the coding sheet lives; where recordings live].
- **Access:** the PI and the coders (course teachers/TAs acting under the
  PI's direction) access the coding sheet; the analysis data (pseudonymised)
  is accessed by the research team only.
- **Pseudonym key:** the student's login ID (an institutional identifier). The
  coding sheet is the only artefact where name, login ID and data co-occur.
- **Retention and deletion:** [TO FILL per KTH's rules for research data;
  recordings deleted after verified transcription].
- **Third-party processing:**
  - *Canvas* (the learning platform) hosts the quizzes and submissions as the
    course's ordinary platform; research extraction happens via its API.
  - *The course Git server* hosts the student repositories (vt-git).
  - *Recording tool* for interviews: [TO FILL — KTH Zoom or local recorder;
    if Zoom, note KTH's agreement].
  - *Language-model pre-coding:* the analysis programs can send the open
    free-text answers to a large language model to draft suggested codes
    (kept in separate columns, always human-verified). **[TO FILL: which
    model/service, under what agreement, and whether submitted data is used
    for training; alternative: a locally hosted model.]** Until this is
    settled, pre-coding is not run on real student data.
- No data leaves the EU/EES except as covered by the platform agreements
  above. *(Verify each.)*

## 8. Legal basis (GDPR) — proposed, to be confirmed

Proposed, not asserted: processing is necessary for a task in the public
interest (Art. 6(1)(e) — research at a state university), with the safeguards
of Art. 89 and the Swedish supplementary provisions (lagen (2018:218) med
kompletterande bestämmelser till EU:s dataskyddsförordning; forskningsdatalagen
context). Consent per §6 is the *ethical* basis for participation; it is not
necessarily the *legal* basis for the processing, and the two must not be
conflated in the filed version. **Verify with KTH's data protection officer
before filing.**

## 9. Risks and benefits

Risks:

- *Perceived pressure* from the teacher–student dependency (mitigations in
  §4).
- *Identifiability in small subsamples:* the interview groups are six to ten
  people; reporting is aggregate and quotes are anonymised, and no per-person
  results are published.
- *Incidental disclosure* in free text or interview (handled by the redaction
  rule, §5b).

Benefits:

- The diagnostic instruments have direct pedagogical value: the post-test
  explains every item after submission, so the students learn from the
  measurement itself.
- The findings improve the modules for later cohorts.
- The studies contribute instruments and analyses to computing-education
  research where the literature is thin.

Overall assessment: low risk, with the mitigations listed.

## 10. Publication and anonymisation plan

- Results are reported in aggregate; individual free-text answers are quoted
  only anonymised.
- Interview recordings are never published; transcripts are published, if at
  all, only as anonymised excerpts.
- The course and institution are anonymised in the published papers before
  submission.
- No raw data is shared or deposited; [TO DECIDE: whether an anonymised,
  aggregated dataset is deposited, and where].

## 11. Attachments (for the filed version)

1. Participant information sheet — **to be written** (tracked as a follow-up
   issue in the paper repositories).
2. The consent item, verbatim (§6).
3. The instruments: the papers' literate appendices are the authoritative
   instrument definitions (vt-terminal/vt-git/vt-latex `quiz.nw`, tangling the
   deployed quiz files).
4. Data-management plan (expanded from §7).

## 12. Does this collection require review under the Ethics Review Act? (open question)

**Arguments that it does not:** the collection processes only ordinary
personal data (no special categories are sought); there is no physical
intervention; no method is used that aims to affect the participant physically
or psychologically beyond the course's ordinary teaching, which is not
manipulated for research; there is no obvious risk of harm.
Under etikprövningslagen (2003:460) §§3–4, research requires review chiefly
when it processes special-category personal data or data on legal offences, or
involves physical or psychological intervention or obvious risk of harm — none
of which appears to apply.

**Arguments that it might:** free-text answers, commit messages and interview
recordings can incidentally carry sensitive content, and audio recordings are
identifiable by nature; a reviewer may take the position that instruments
which *can* capture special-category data should be reviewed; institutional
practice may call for review or an advisory statement for student-subject
research regardless of the strict legal threshold.

**What must be verified, and by whom:** the PI verifies with KTH's
research-ethics support and KTH's data protection officer whether (a) review
by the Swedish Ethical Review Authority is required, (b) an advisory statement
should be requested, or (c) an internal KTH assessment suffices.

*This section states arguments, not a legal conclusion. No filing decision has
been taken.*

## 13. To do before filing

- [ ] Confirm portal and form (Ethical Review Authority via Prisma, or KTH
      internal route) — depends on §12.
- [ ] Translate to Swedish.
- [ ] Write the participant information sheet (Swedish + English).
- [ ] Fill all [TO FILL] placeholders: department, personnel, expected N,
      storage systems, retention periods, recording tool.
- [ ] Settle the language-model pre-coding: model/service, agreement, or local
      hosting (§7).
- [ ] Confirm the CS programme course's 2026 code (vt-git#9, vt-latex#6,
      vt-terminal#7) and whether that course needs separate mention.
- [ ] Verify GDPR legal basis with KTH's DPO (§8).
- [ ] Decide data deposition (§10).
