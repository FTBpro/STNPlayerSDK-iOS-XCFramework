# STNPlayer iOS SDK

A comprehensive iOS video player SDK with sticky behavior, customizable UI, and built-in monetization support.

## Requirements

- iOS 15.6+
- Swift 5.0+
- Xcode 14.0+

## Installation

### CocoaPods

Add the following to your `Podfile`:

```ruby
pod 'STNPlayerSDK'
```

Then run:
```bash
pod install
```

## Quick Start

### SwiftUI
```swift
import SwiftUI
import STNPlayerSDK

struct ContentView: View {
    let config = STNPlayerConfig(
        publisherId: "your-publisher-id",
        playerData: PlayerData(
            playerId: "your-player-id",
            playlistItem: PlaylistItem(playlistId: "your-playlist-id")
        )
    )

    var body: some View {
        ScrollView {
            STNPlayerRepresentable(config: config)
        }
    }
}
```

### UIKit
```swift
import UIKit
import STNPlayerSDK

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let config = STNPlayerConfig(
            publisherId: "your-publisher-id",
            playerData: PlayerData(
                playerId: "your-player-id",
                playlistItem: PlaylistItem(playlistId: "your-playlist-id")
            )
        )

        let playerView = STNPlayer(config: config)
        playerView.pin(to: containerView)
        playerView.observeScroll(of: scrollView, in: view)
    }
}
```

## Features

- **Sticky Video Player** - Automatically sticks to screen edges when scrolled
- **SwiftUI & UIKit Support** - Native integration for both frameworks
- **Customizable UI** - Configure colors, controls, and player appearance
- **Monetization** - Built-in support for pre-roll and mid-roll ads via Google IMA
- **Event Tracking** - Comprehensive delegate callbacks for video and ad events
- **Fullscreen Support** - Automatic rotation handling and fullscreen controls

## Dependencies

The SDK requires the following dependencies (automatically managed by CocoaPods):
- Google Ads IMA iOS SDK
- PrebidMobile SDK (~> 3.1.1)

## Documentation

For detailed documentation, implementation examples, and API reference, see the [Developer Guide](Docs/DevelopersGuide.md).

## License

Copyright 2025 MinuteMedia. All rights reserved.
