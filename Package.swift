// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MilitarySymbologyAssets",
    platforms: [.iOS(.v17), .macOS(.v13), .visionOS(.v1)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MilitarySymbologyAssets",
            targets: ["MilitarySymbologyAssets"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MilitarySymbologyAssets",
            dependencies: ["MilitaryAssetsDB"],
            path: "Sources"
            ),
        .binaryTarget(
                    name: "MilitaryAssetsDB",
                    url: "https://github.com/EugeneKuropatenko/MilitarySymbologyAssets/releases/download/assets/MilitaryAssetsDB.xcframework.zip",
                    checksum: "9db098ac86802184ceb60886f9c0cd1f2ecb4e678beee6601f649dcb3d3db181"
                )
    ]
)
