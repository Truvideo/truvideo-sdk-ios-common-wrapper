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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common-wrapper/releases/download/0.0.21/Common.xcframework.zip",
            checksum: "unknown"
        ),
        .binaryTarget(
            name: "Shared",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common-wrapper/releases/download/LIB_VERSION/shared.xcframework.zip",
            checksum: "c7eecb84264ab5a98fbda2e1b2fed44ac4c301e31605234e336f8deff85b33d9"
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
