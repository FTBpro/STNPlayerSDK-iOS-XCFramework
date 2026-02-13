# Release Notes

## v1.0.7 - February 13, 2026

- Add ConfigMapper for flexible configuration handling
- Fix playing content when tags are missing
- Update publisher response structure with additional cust_param fields
- Add new fields for adImpression event and update CPM/netCPM calculation
- Implement config structure update with allowClose parameter handling
- Report SDK and app version in player events
- Remove player ID from config (now uses server response)
- Add "ios" platform identifier to version property

## v1.0.6 - January 22, 2026

- Fix slots for pre-roll and mid-roll video ads.
- Provide another target for request/response events
- Remove default publisher response if something is wrong

## v1.0.5 - January 14, 2026

- fix order between `playerInjected` and `playerEmbedReportsApi` events.
- Added a fix to continue playing ads when return from other screen
- Disable stay/next buttons if user interact with player
- Implement poster image
- Provide demand owner from the server response
- Disable midroll in the player config
- Implemnt sounds off if auto play is on
- Add an additional property for auto play

## v1.0.4 - December 31, 2025

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
