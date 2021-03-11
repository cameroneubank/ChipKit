// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ChipKit",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ChipKit",
            targets: ["ChipKit"]),
    ],
    targets: [
        .target(
            name: "ChipKit"),
        .testTarget(
            name: "ChipKitTests",
            dependencies: ["ChipKit"]),
    ]
)
