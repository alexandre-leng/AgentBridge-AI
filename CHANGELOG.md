# Changelog

## 3.2.8 (2026-05-19)

### Added
- `scrape-emails` command: full lead generation pipeline (search → visit → extract emails → CSV)
- `extract-emails` / `extract-phones` commands and server handlers
- `--fast` mode (`BRIDGE_SCRAPE_SPEED=fast`): minimal delays for automated scraping
- `--emails` / `--phones` filter flags on `visibleText`
- `--out` CSV/JSON export support on `webSearch`, `extract`, `scrape`
- `--json-lines` compact output mode
- `--version` / `-v` CLI flag
- `BRIDGE_URL` environment variable support in CLI
- CHANGELOG.md

### Fixed
- CLI `run` command: preserved browser state across commands in one WebSocket session
- CLI output: logs go to stderr, data to stdout (clean JSON parsing)
- `human.feedback` events no longer pollute stdout
- Auto-start server path resolution in fast mode

### Changed
- Unified version source (`src/version.ts` matches `package.json`)
- Docs consolidated (canonical install guide in `docs/install.md`)
- CI: Windows + Ubuntu test matrix, code coverage reporting, npm publish workflow
- Stealth patches reinforced for better anti-detection

## 3.2.7 (2026-05-19)

### Added
- REPL mode (`repl` command)
- Batch `run` command for multi-step workflows
- Unified CLI help with categorized commands
- `docs/install.md` with agent instruction line

### Changed
- Reduced CLI entry points (single `bridge-cli.cjs`)
- `bridge.cmd` now uses CJS CLI directly (no tsx dependency)

### Fixed
- Version mismatch: `src/version.ts` synced to `package.json`
- `--help` / `--version` flags now work

## 3.2.6 (2026-05-19)

### Added
- GitHub Packages registry configuration
- `@alexandre-leng/agentbridge-ai` scoped npm package

### Fixed
- Bin entries simplified to `agentbridge` and `bridge-check` (CJS wrappers)
- Repository field in package.json

## 3.2.5 (2026-05-19)

### Changed
- Package renamed to `browser-agentbridge-ai` for npm

## 3.2.4 (2026-05-19)

### Added
- GitHub release automation
- npm package publication

## 3.2.0 - 3.2.3

Initial published releases with core AgentBridge functionality:
- WebSocket browser bridge server
- DOM-first element annotation and interaction
- Human-like behavior (Bezier curves, typing, scroll inertia)
- 12 stealth patches for anti-detection
- MCP server for AI agent integration
- Web search with auto-pagination
- Structured data extraction (7 types)
- Multi-session isolation
- Trace recording and replay
- Polite browsing with adaptive throttling
- Docker support
