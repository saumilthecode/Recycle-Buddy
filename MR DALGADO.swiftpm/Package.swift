// swift-tools-version: 5.9

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "MRDALGADO",
    platforms: [
        .iOS("17.5")
    ],
    products: [
        .iOSApplication(
            name: "MRDALGADO",
            targets: ["AppModule"],
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .leaf),
            accentColor: .presetColor(.green),
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
    dependencies: [
        .package(url: "https://github.com/ivanvorobei/SPConfetti", "1.4.2"..<"2.0.0")
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                .product(name: "SPConfetti", package: "spconfetti")
            ],
            path: ".",
            swiftSettings: [
                .enableUpcomingFeature("BareSlashRegexLiterals")
            ]
        )
    ]
)