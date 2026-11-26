# Changelog

All notable changes to this project are listed here. The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and versions follow [Semantic Versioning](https://semver.org/).

## [Unreleased]

## [0.1.0] — 2026-11-25

First public release.

### Added

- Shared rules (`RULES.md`): the coordinator never executes; no sending or publishing without a human yes; declared assumptions; review before delivery; one source of truth per project; no silent deletion; no sensitive data.
- Claude Code version: `CLAUDE.md`, executor and reviewer subagents, coordinator / executor / reviewer skills, `settings.json` with ask and deny rules.
- Grok Bot version: bot brief, three skills, setup guide.
- A `lessons.md` file for every skill, read before and updated after each run.
- Project templates: brief, status, decisions, log.
- Worked example on a fictional bakery newsletter.
- `scripts/check-sensitive.sh`: grep-based sensitive-data scan with an optional private term list.
- Docs: architecture and adapting.
