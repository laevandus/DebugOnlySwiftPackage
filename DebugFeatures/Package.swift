// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DebugFeatures",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "DebugFeatures",
            targets: ["DebugFeatures"]),
    ],
    targets: [
        .target(
            name: "DebugFeatures",
            swiftSettings: [
                .define("DEBUG", .when(configuration: .debug))
            ]
        ),
        .testTarget(
            name: "DebugFeaturesTests",
            dependencies: ["DebugFeatures"]),
    ]
)
