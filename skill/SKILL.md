---
name: fpsot-spec-writing
description: Use when writing or reviewing text for an FPSOT project, such as a specification, a guide, interface text or an error message, in English or French.
---

# FPSOT writing specification

This skill summarizes the specification for agents.
It adds no rules of its own: every rule here cites a requirement ID from `spec/`, and the spec text wins on any difference.

## Prose

- Use plain language: readers find, understand and use the text (WRT-001).
- Keep sentences to 20 words or fewer (WRT-002) and paragraphs to 6 sentences or fewer (WRT-003).
- Prefer the active voice (WRT-004) and verbs over nouns made from verbs (WRT-005).
- Avoid the vague words in `rules/prose-lint.md` (WRT-006).
- Do not join clauses with a dash or a semicolon (WRT-007). Keep needed information out of parentheses (WRT-008).
- Procedures may follow ASD-STE100 Simplified Technical English (WRT-050).

## Requirements

- State each rule with a BCP 14 keyword in capitals and include the RFC 8174 conformance text (WRT-010).
- In French, use the keyword table: DOIT, NE DOIT PAS, DEVRAIT, NE DEVRAIT PAS, PEUT, and their plurals (WRT-011).
- Give each requirement its own anchored ID and paragraph, followed by its rationale (WRT-012).

## Terms

- Take terms and abbreviations from `termbase/terms.yaml`, through `{term-ID}` and `{abbr-ID}` (WRT-020).
- Spell an abbreviation out on its first use on a page with `{abbr-ID-first}` (WRT-021).

## Language

- English: US spelling, Merriam-Webster (WRT-030). French: OQLF usage (WRT-031) and gender-inclusive writing (WRT-032).
- Machine translation is a first draft only; a person reviews it before merge (WRT-033).

## Interface text

- Error messages say what happened and what to do next, without blame (WRT-040).
- Use the reader's words, not system names (WRT-041).
