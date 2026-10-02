# Ethics assessment and data-protection documentation — datintro26 data collection (not subject to the Ethics Review Act)

**Status:** assessed 2026-09-01 — the collection is **not subject to the
Ethics Review Act**, so no application is filed and no reference number will
exist (§12). This document is the internal ethics self-assessment of the
collection and the basis for the participant information
(`participant-information-datintro26.md`, §11). It was drafted as a review
application, which is why it keeps an application's structure.

**Language:** English; the participant information is in Swedish and
English.

**Covers the data collection behind:** the three companion papers
[dbosk/vt-terminal](https://github.com/dbosk/vt-terminal),
[dbosk/vt-git](https://github.com/dbosk/vt-git),
[dbosk/vt-latex](https://github.com/dbosk/vt-latex).

**Synchronised copy.** This file is byte-identical in the three repositories
above. Edit one copy, propagate to the others in the same round, and verify:
`md5sum ../vt-{terminal,git,latex}/ethics-application-datintro26.md`

**Last synchronised:** 2026-09-08

---

## 1. Project and responsible researcher

- **Project title:** Misconceptions and critical aspects in learning the Unix
  terminal, version control with Git, and document preparation with LaTeX: a
  variation-theoretic study in an introductory computing course.
- **Principal investigator:** Daniel Bosk, KTH Royal Institute of Technology
  (`dbosk@kth.se`). *School/department affiliation: [TO FILL].*
- **Other personnel:** the course's teachers and teaching assistants, who
  administer the course as usual and, where they act as coders of research
  data, do so under the PI's direction. *(Named list: [TO FILL].)*
- **Data controller:** KTH Royal Institute of Technology.
- **Funding:** none specific to the study; conducted within the PI's ordinary
  teaching and research duties. *(Confirm.)*
- **Collection:** the "datintro26 data collection" — the autumn 2026 instance
  of KTH's introductory computing-introduction course (datintro26) and the
  CS programme's parallel course running the same modules. In Canvas
  (2026-09-08) the terminal pre-/post-tests are deployed in DD1317 HT26
  (prgi26) as well as in datintro26, and the Git and LaTeX ones in
  datintro26 only; *[PI to confirm that DD1317 is the parallel course and
  that it runs only the terminal module]* (tracked as vt-git#9, vt-latex#6,
  vt-terminal#7).
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
data. The data collection covered by this document serves the empirical
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
| Pre/post quizzes (closed items) | chosen alternatives, scores | ordinary (study performance) | platform name + login ID | analysis keys on login ID; name only in coding sheet | archived securely for at least 10 years (KTH's rule, in the wording of KTH's consent template) |
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
- **Deployed wording and its scope (decided 2026-09-08):** the phrase "these
  quizzes, and my submissions in the course" is narrower than a reader of
  this document might expect for the assessment-trace and process-data
  sources. The wording stays as deployed for the HT26 cohort, who have
  already answered it; what closes the gap for them is the participant
  information sheet (§11), delivered at the end of the course (a Canvas page
  in the course's closing module, linked from the post-tests) and by email
  to everyone who answered Yes. The improved wording below is adopted for
  the next cohort — and, for the parallel prgi26 collection, which had not
  been deployed when the route was decided, from the start:

  > I consent to my answers in this module's quizzes, my course submissions
  > and the course's assessment record of them, and — if I separately agree to
  > one — a recorded interview, being used pseudonymised in computing
  > education research. My participation is voluntary, does not affect my
  > grade, and I can withdraw at any time by contacting the responsible
  > researcher.

- The **participant information sheet** (§11,
  `participant-information-datintro26.md`) spells out purpose, scope,
  storage, rights and contacts. It is the GDPR information the students
  receive (route above); from the next cohort it is linked from the consent
  item itself.

## 7. Data management

- **Storage:** [TO FILL: KTH-approved storage system, e.g. KTH OneDrive/
  project storage; where the coding sheet lives; where recordings live].
- **Access:** the PI and the coders (course teachers/TAs acting under the
  PI's direction) access the coding sheet; the analysis data (pseudonymised)
  is accessed by the research team only.
- **Pseudonym key:** the student's login ID (an institutional identifier). The
  coding sheet is the only artefact where name, login ID and data co-occur.
- **Retention and deletion:** the data is archived securely for at least
  10 years per KTH's rules (the wording of KTH's consent template);
  recordings are deleted after verified transcription.
- **Third-party processing:**
  - *Canvas* (the learning platform) hosts the quizzes and submissions as the
    course's ordinary platform; research extraction happens via its API.
  - *The course Git server* hosts the student repositories (vt-git).
  - *Recording tool* for interviews: [TO FILL — KTH Zoom or local recorder;
    if Zoom, note KTH's agreement].
  - *Language-model pre-coding:* the analysis programs can send the open
    free-text answers to a large language model to draft suggested codes
    (kept in separate columns, always human-verified). **Decided
    2026-09-08:** the analysis program anonymises the text *before* the
    model sees it — it strips the login ID and the name, applies the
    redaction rule of §5(b), sends the text under an opaque index, and joins
    the suggested codes back onto the pseudonymised rows itself. The model
    thus sees only what could be published (§10), so no personal data is
    disclosed and no processor agreement is needed. Until that pipeline is
    implemented in the analysis programs, pre-coding is not run on real
    student data.
- No data leaves the EU/EES except as covered by the platform agreements
  above. *(Verify each.)*

## 8. Legal basis (GDPR)

Processing is necessary for a task in the public interest (Art. 6(1)(e) —
research at a state university), with the safeguards of Art. 89 and the
Swedish supplementary provisions (lagen (2018:218) med kompletterande
bestämmelser till EU:s dataskyddsförordning). Consent per §6 is the
*ethical* basis for participation; it is not the *legal* basis for the
processing, and the two are not conflated in the participant information
(which nevertheless keeps KTH's template wording on withdrawing consent).
KTH is the data controller. The student data is processed on KTH's own
learning platform (Canvas) as course data, which KTH already covers as a
platform for student data; no separate notification of the processing to
KTH's data protection officer is made (decision 2026-09-08). The
participant information gives dataskyddsombud@kth.se as the contact for
the data subjects' rights, as KTH's template does.

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

## 11. Accompanying documents

1. Participant information sheet — `participant-information-datintro26.md`
   (Swedish and English; a synchronised copy in the three repositories;
   published as a Canvas page in the course and delivered per §6). Built to
   KTH's recipe (§12): the purpose of the research plus the GDPR wording of
   KTH's consent-form template.
2. The consent item, verbatim (§6).
3. The instruments: the papers' literate appendices are the authoritative
   instrument definitions (vt-terminal/vt-git/vt-latex `quiz.nw`, tangling the
   deployed quiz files).
4. Data management: §7 stands in for a separate data-management plan.

## 12. Assessment under the Ethics Review Act

**Checklist run (2026-09-08).** KTH's "Checklist for legally required ethics
review" (Research Support Office; intranet page "Forskningsetik — stöd till
forskare"), applied to this collection:

| Question | Answer |
|---|---|
| 1. Information about living persons collected or processed? | Yes |
| 1.1 Traceable to a person through an identifier? | Yes — login ID; the name in the coding sheet |
| 1.2 Traceable by combining pieces of information? | Yes — e.g. a free-text account with the course context |
| 2. Processed for research purposes? | Yes |
| 3.1–3.8 Ethnic background, religious or philosophical beliefs, political opinions, union membership, health, sexual life or orientation, genetic or biometric data, offences? | No — none is sought by any instrument (§5a). Interview audio is not biometric data in the GDPR sense, since it is not processed to identify a person; incidental sensitive content in free text or recordings is handled by the redaction rule (§5b). |
| 4.1 Obvious risk of harm? | No (§9) |
| 4.2 Physical procedures on human beings? | No |
| 4.3 Method intended to affect participants physically or psychologically? | No — the teaching is the course's own and is not manipulated for research (§3) |
| 4.4 Traceable biological samples? | No |

Result: personal data is processed, so the GDPR applies (§8) and the
participants must be informed and access restricted (§7, §11); none of the
criteria of §§3–4 of etikprövningslagen (2003:460) is met, so the Ethics
Review Act does not apply and no approval from Etikprövningsmyndigheten is
required. Per the checklist's appendix, the research ethics of such a
project "are handled internally by the group performing the research".

**Confirmation by KTH's research-ethics support.** On 2026-08-31 the PI put
the collections to researchethics@kth.se (Research Support Office): quizzes
that are course elements anyway, the consent item and its terms (voluntary,
no effect on the grade, pseudonymised results), the submissions, and — for
the parallel prgi26 collection — the voluntary school-background items and
the code-writing logs, together with the checklist assessment above. KTH's
research-ethics advisor answered on 2026-09-01:

> Nej, det låter inte som att du behöver ha etikgodkännande för den
> forskningen. Försäkra dig bara om att du informerar studenterna på ett
> sätt som gör GDPR nöjd. I sidfoten på samtyckesblankettmallen så ser du
> ett exempel på en GDPR-formulering som är ok. Komplettera den med att
> beskriva forskningens syfte för deltagarna så borde det vara
> tillräckligt.

(No, it does not sound as if you need ethics approval for that research.
Just make sure you inform the students in a way that satisfies the GDPR:
the footer of the consent-form template has a GDPR wording that is fine;
supplement it with a description of the research purpose for the
participants, and that should be sufficient.) The participant information
(§11) follows that recipe.

**Caveats recorded.**

- (a) The description sent to RSO did not mention the interview recordings
  (nor prgi26's think-aloud recordings and staff baseline). The checklist
  assessment above covers them — audio is ordinary personal data — but the
  advisor's answer should not be read as an assessment of the recordings
  specifically (decision 2026-09-08: no follow-up query).
- (b) The earlier draft's arguments that review *might* be required
  (incidental sensitive content in free text or recordings; institutional
  practice for student-subject research) were weighed and do not change
  the outcome: incidental content is handled by the redaction rule (§5b),
  and the institution's own research-ethics support answered the question
  of institutional practice.
- (c) KTH's Ethics Committee (Etikutskottet) offers advisory opinions on
  research-ethically controversial projects; this collection is not one,
  and no opinion is requested (decision 2026-09-08).

*Decision trail: nytid #243 (Daniel Bosk's task list); the RSO email is
kept in the PI's mailbox, not in the repository.*

## 13. Remaining work

- [x] Route: not subject to the Ethics Review Act (§12) — no filing, no
      translation, no Etikutskottet opinion.
- [x] Legal basis and data-protection officer: stated in §8; no separate
      notification (decision 2026-09-08).
- [x] Language-model pre-coding: anonymise-then-map-back in the analysis
      program (§7); the implementation is tracked in nytid, and pre-coding
      stays off until it lands.
- [x] Participant information sheet written (§11).
- [ ] Deliver the participant information to the HT26 cohort (§6): Canvas
      page at the end of the course and email to the consenting students.
- [ ] Fill the remaining [TO FILL] placeholders: department, personnel,
      expected N, storage systems, recording tool.
- [ ] Confirm the parallel course (DD1317, terminal module only?) (vt-git#9,
      vt-latex#6, vt-terminal#7).
- [ ] Decide data deposition (§10).
- [ ] Adopt the improved consent wording (§6), linked to the information
      sheet, for the next cohort.
