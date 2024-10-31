// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RNDeviceName",
    platforms: [.iOS(.v14),
                .tvOS(.v14)],
    products: [
        .library(
            name: "RNDeviceName",
            targets: ["RNDeviceName"]),
    ],
    targets: [
        .target(
            name: "RNDeviceName",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "RNDeviceNameTests",
            dependencies: ["RNDeviceName"],
            path: "Tests"),
    ],
    swiftLanguageModes: [.v6]
)
