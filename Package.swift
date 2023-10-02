// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Common",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Common",
            targets: ["CommonTargets"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Common",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common-wrapper/releases/download/0.0.22/Common.xcframework.zip",
            checksum: "9d1bcd237dc503539fa2fc8ecab95d2f264b4d9df19df104270a1612fbfc4230"
        ),
        .binaryTarget(
            name: "Shared",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common-wrapper/releases/download/0.0.22/shared.xcframework.zip",
            checksum: "494147c2b282f7883f3f382d932b4401999ecf69eb6ab638ebb787f695b93af5"
        ),
        .target(
            name: "CommonTargets",
            dependencies: [
                .target(name: "Common")
                .target(name: "Shared")
            ],
            path: "Sources"
        )
    ]
)
