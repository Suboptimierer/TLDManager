// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TLDManager",
    products: [
        .library(
            name: "TLDManager",
            targets: ["TLDManager"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TLDManager",
            dependencies: [])
    ]
)
