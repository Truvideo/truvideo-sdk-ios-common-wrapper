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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common/releases/download/0.0.26/Common.xcframework.zip",
            checksum: "43fcac1b0801d7c3f06ba256be78b133f3317e16d96bbd84ec0b110b59448c76"
        ),
        .binaryTarget(
            name: "Shared",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-shared/releases/download/0.0.29/shared.xcframework.zip",
            checksum: "c76dc5b6150e9f20e69adddde9a093288013264c7ad787966aa6b4900e5dad4b"
        ),
        .target(
            name: "CommonTargets",
            dependencies: [
                .target(name: "Common"),
                .target(name: "Shared")
            ],
            path: "Sources"
        )
    ]
)
