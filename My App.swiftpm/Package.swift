// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Days since",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Days since",
            targets: ["AppModule"],
            bundleIdentifier: "com.aivarsmeijers.DaysSince",
            teamIdentifier: "UDP9QHRJQB",
            displayVersion: "1.0",
            bundleVersion: "9",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)
