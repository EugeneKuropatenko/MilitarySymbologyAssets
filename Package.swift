// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MilitarySymbologyAssets",
    defaultLocalization: "en",
    platforms: [.iOS(.v17), .macOS(.v13), .visionOS(.v1)],
    products: [
        .library(
            name: "MilitarySymbologyKit",
            targets: ["MilitarySymbologyKit"]),
        .library(
            name: "MilitarySymbologyUI",
            targets: ["MilitarySymbologyUI"]),
    ],
    targets: [
        .target(
            name: "MilitarySymbologyKit",
            dependencies: ["MilitaryAssetsDB"],
            path: "Sources/MilitarySymbologyKit"
        ),
        .target(
            name: "MilitarySymbologyUI",
            dependencies: ["MilitarySymbologyKit"],
            path: "Sources/MilitarySymbologyUI",
            resources: [.process("Resources")]
        ),
        .binaryTarget(
            name: "MilitaryAssetsDB",
            url: "https://github.com/EugeneKuropatenko/MilitarySymbologyAssets/releases/download/assets/MilitaryAssetsDB.xcframework.zip",
            checksum: "9db098ac86802184ceb60886f9c0cd1f2ecb4e678beee6601f649dcb3d3db181"
        )
    ]
)
