# Release Notes

## v1.0.2 - December 21, 2025

- Added `didReceiveShutdownEvent` to `STNPlayerDelegate` + example in the sample app
- Provide "player name" and "player id" to the report events
- Fix - make "midroll" ads available
- Fix - infinity loading animation if ads is not playing and continue playing when closing the screen with ads playing
- Fix - missing some query params (play_code, version)

## v1.0.1 - December 16, 2025

- Bug fix: Added fixes to start playing when changing player mode and stop when leaving the screen
- Fix vPlayerVideoStart event
- Bug fix: make sure that correlator query param is removed before we add it, to avoid duplicates

## v1.0.0 - December 11, 2025

- First release ever (alpha)