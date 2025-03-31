// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "iShake",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "iShake",
            targets: ["iShake"]
        ),
    ],
    targets: [
        .target(
            name: "iShake"
        ),
    ]
)
