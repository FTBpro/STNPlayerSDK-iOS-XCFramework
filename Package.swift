// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "STNPlayerSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "STNPlayerSDK",
            targets: ["STNPlayerSDKWrapper"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios",
            from: "3.28.10"
        ),
        .package(
            url: "https://github.com/Cherrypick-Consulting/prebid-mobile-ios.git",
            branch: "mm-3.2.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "STNPlayerSDK",
            path: "STNPlayerSDK.xcframework"
        ),
        .target(
            name: "STNPlayerSDKWrapper",
            dependencies: [
                "STNPlayerSDK",
                .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios"),
                .product(name: "PrebidMobile", package: "prebid-mobile-ios")
            ],
            path: "Sources"
        )
    ]
)
