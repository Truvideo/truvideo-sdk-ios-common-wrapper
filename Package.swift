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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common-wrapper/releases/download/0.0.23/Common.xcframework.zip",
            checksum: "7d5156f71eea154ffc8b8d38e7d351e60451b6aef2fce17fa817750754068314"
        ),
        .binaryTarget(
            name: "Shared",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common-wrapper/releases/download/0.0.23/shared.xcframework.zip",
            checksum: "cc7300c9be4fdad4d152e507fc2f2558506978974ee888748fc08d463451b4ba"
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
