# Release Notes

## v1.0.3 - December 31, 2025

- Update SDK to use IMA SDK version 3.28.10 (latest)
- Update ad tag builder logic to match android
- Fix query params: output, ad_rule, plcmt + remove pxmd param
- Remove irrelevant params and add logic to skip custom params if we have the in the query params
- Fix player events with null values
- Update `cpm` to `floor price`
- Implement skipable content variable
- Fix: descriptionUrl must be a valid URL
- Added fixes to query params to make preroll works for each video
- Fix - fix sticky position values
- Update "demand owner" logic
- Fixed the pre-roll ad loading issue between playlist videos
- Fix next stay buttons + rename didRequstAdsForCurrentVideo
- Fixed UI Thread Safety Issues
- remove every `nth` logic from code - not needed anymore
- fix ad pause on player minimize
- 

## v1.0.3 - December 23, 2025

- Fix - Added a possible fix to show midroll/preroll ads
- Fix - Hide player content if we are waiting for server response
- Internal - Remove type from config


## v1.0.2 - December 21, 2025

- Update PlayerConfig and Ad Tag URL - moving from `articleId` to `descriptionUrl`
- Added `didReceiveShutdownEvent` to `STNPlayerDelegate` + example in the sample app
- Provide "player name" and "player id" to the report events
- Fix - make "midroll" ads available
- Fix - infinity loading animation if ads is not playing and continue playing when closing the screen with ads playing
- Fix - missing some query params (play_code, version)
- Eliminate `stickyPlayerType` from STNPlayerConfig

## v1.0.1 - December 16, 2025

- Bug fix: Added fixes to start playing when changing player mode and stop when leaving the screen
- Fix vPlayerVideoStart event
- Bug fix: make sure that correlator query param is removed before we add it, to avoid duplicates

## v1.0.0 - December 11, 2025

- First release ever (alpha)