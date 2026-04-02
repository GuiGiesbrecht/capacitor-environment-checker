# Changelog

All notable changes to this project will be documented in this file.

## [1.0.1] - 2026-04-02
- Converted Android plugin from Kotlin to Java for better native compatibility.

## [1.0.0] - 2026-03-20
- First stable release.
- Added `isTestFlight()` API with typed response.
- Implemented iOS TestFlight detection via `sandboxReceipt` heuristic.
- Added deterministic safe fallback for Android and Web (always false).
- Added CI quality gates (lint, build, and tests).
- Updated repository metadata URLs to the correct GitHub repository.

## [0.1.0] - 2026-03-20
- Initial public release.
- Added isTestFlight() API with typed response.
- Implemented iOS TestFlight detection via sandboxReceipt heuristic.
- Added deterministic safe fallback for Android and Web (always false).
- Added lint/build/test CI workflow.
