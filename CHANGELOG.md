# Changelog

All notable changes to this specification are listed here.
The format follows [Keep a Changelog 1.1.0](https://keepachangelog.com/en/1.1.0/),
and versions follow [Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.7] - 2026-11-10

### Added

- Term base: the abbreviations CGCD, OCEL, OCSF and OTLP, and the terms legal hold and privacy impact assessment, for the observability specification.
- Term base: the terms access token, authorization engine and identity provider, for the identity and access specification.

## [0.2.5] - 2026-11-08

### Added

- Term base: the abbreviations ASVS, CVE, CVSS, NIST, OSV, SBOM and SSDF, and the term vulnerability, for the security specification.

## [0.2.4] - 2026-11-08

### Added

- Term base: the abbreviation BDD and the term test double, for the testing specification.

## [0.2.3] - 2026-11-07

### Added

- Term base: the abbreviations OWL, SHACL, SQL and XML, for the data models specification.

### Changed

- Term base: the definition of party now covers every person or organization a system records, not only registry holders.

## [0.2.2] - 2026-11-05

### Added

- Term base: the abbreviations CSV, JSON-LD, RDF and SKOS, for the vocabularies specification.

## [0.2.1] - 2026-11-05

### Added

- Term base: the abbreviations ARIA, BPMN, CSS and UML, for the accessibility, diagrams and style specifications.

## [0.2.0] - 2026-11-04

### Changed

- WRT-030 now requires US spelling, with the Merriam-Webster dictionary as the reference, instead of Canadian spelling and TERMIUM Plus. This is a change of rule: English text must now use US spelling. Most standards bodies and open-source projects write in US English, so readers and tools expect it. French usage under WRT-031 is unchanged.
- Pages link each outside standard where they name it, and list their sources in a References section.
- Code blocks name their language.
- The WRT-011 table now heads its first column "English keyword".
- The index, the skill, the README, AGENTS.md and publiccode.yml now say US English instead of Canadian English.
- English text and the English fields of the term base use US spelling, such as "license" in the CSL and entitlement definitions.
- The repository turns on the References and US spelling checks in `.fpsot-checks`.

## [0.1.2] - 2026-11-04

### Added

- Term base: 20 abbreviations and one term for the naming, data types, internationalization and RESTful API specifications: ASCII, CORS, HSTS, HTTP, HTTPS, IANA, ICU, IETF, JSON, OWASP, PO, REST, TLS, URI, UTC, UTF-8, UUID, WGS 84, XLIFF and locale. Entries without a Grand dictionnaire terminologique record keep the English full form in French, as BCP and CSL already do.

## [0.1.1] - 2026-11-03

### Fixed

- Term base: CLDR stands for "Unicode Common Locale Data Repository".
- Term base: the French full forms of RFC, SSH, SVG and URL now spell the abbreviation out, such as "document RFC (Request for Comments)".
- Comparison data: the Canada WRT-001 row cites the Canada.ca Content Style Guide, which sets the sentence length. The Canada and Québec WRT-032 rows are "looser": neither bans what FPSOT bans in full, and Québec still allows the generic masculine.

## [0.1.0] - 2026-11-02

### Added

- Prose rules WRT-001 to WRT-008 and WRT-050.
- Requirement keywords WRT-010 to WRT-012, with the French keyword table.
- Term rules WRT-020 and WRT-021, and the shared term base with its LinkML model.
- Language rules WRT-030 to WRT-033.
- Interface text rules WRT-040 and WRT-041.
- Comparison with Canada and Québec.
