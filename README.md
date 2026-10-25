# UK Public Sector Applications: a Claude skill

Turn a private sector CV into a UK public sector application that gets through the sift.

Public sector panels can only score evidence that is written down against each criterion, in words they can match. A CV that says "drove £3M ARR" does not score against "delivering value for money" unless someone translates it. This skill does that translation, honestly.

It is a companion to [Job Match Dashboard](https://github.com/OvettC/Job-Match-Dashboard), a free, open-source tool that matches CVs against live UK job listings. Job Match Dashboard helps people find the role. This skill helps them write an application that gets past the sift.

## What it does

- Decodes the advert or candidate pack: essential and desirable criteria, behaviours, grade, and which stage assesses what. It also flags the lead criterion that large sifts start with.
- Builds an evidence bank from your CV and maps it to every criterion, rating each one Strong, Partial or Gap.
- Asks you specific questions to close the gaps instead of padding them.
- Gives you an honest view of how well your evidence fits the grade.
- Translates private sector language into public sector terms. Customers become users, revenue becomes value for money, and board reporting becomes governance.
- Drafts a personal or supporting statement, 250 word STAR behaviour examples, or a sift-ready CV, and gives word counts for each section.
- Checks the draft against a quality checklist before handing it over.

## Frameworks covered

- **Civil Service Success Profiles**: behaviours at every level from AA/AO to SCS, plus DDaT roles.
- **NHS, police, local government and devolved bodies**: see `references/other-frameworks.md`.

## Its one rule

It never invents or inflates anything. Every claim has to trace back to your CV, your own words, or an answer you gave. Panels probe claims at interview and vetting checks your history, so padding gets found.

## Install

First download `uk-public-sector-applications.skill` from the [latest release](../../releases/latest). It is a standard zip archive.

**Claude apps (claude.ai, desktop, Cowork):** go to Settings, then Capabilities, then Skills. Upload the `.skill` file and make sure the skill is switched on. Skills need to be enabled on your plan.

**Claude Code:** copy the `uk-public-sector-applications` folder into `~/.claude/skills/` for personal use, or into `.claude/skills/` inside a project.

```bash
git clone https://github.com/OvettC/uk-public-sector-applications.git
cp -r uk-public-sector-applications/uk-public-sector-applications ~/.claude/skills/
```

## Use

You do not need to name the skill. Start a conversation along these lines:

> Help me apply for this Grade 7 role. Here is the candidate pack and my CV.

The skill shows you the evidence map first, asks about any gaps, and then drafts the application.

## Repository layout

```
uk-public-sector-applications/
  SKILL.md                         Workflow and rules
  references/
    success-profiles.md            Civil Service behaviours by level
    grades.md                      Grades and how to pitch evidence
    other-frameworks.md            NHS, police, local government
    translation-guide.md           Private to public sector language
    quality-checklist.md           Final checks before submission
  assets/
    evidence-map-template.md
    statement-template.md
build.sh                           Builds dist/uk-public-sector-applications.skill
```

## Releasing

Push a version tag, for example `git tag v1.0.0 && git push --tags`. The GitHub Action builds the `.skill` file and attaches it to a release. To build it locally, run `./build.sh`.

## Disclaimer

This skill helps you present your own experience clearly. It does not guarantee success at sift or interview. Always check each draft against the advert, the employer's own guidance and any word limits on the application form.

## Licence

MIT, see [LICENSE](LICENSE). `references/success-profiles.md` contains Crown copyright material from the Cabinet Office *Success Profiles*, used under the [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).
