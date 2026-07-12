// swift-tools-version: 6.0

import PackageDescription

var products: [Product] = [
    .library(
        name: "Splatalyzer",
        targets: ["Splatalyzer"])
]

var targets: [Target] = [
    .target(
        name: "Splatalyzer",
        resources: [
            .process("Resources")
        ]),
    
    .testTarget(
        name: "SplatalyzerTests",
        dependencies: ["Splatalyzer"],
        resources: [
            .process("Resources")
        ]
    ),
    
    .executableTarget(
        name: "SplatalyzerUpdater",
        dependencies: [
            .product(name: "ArgumentParser", package: "swift-argument-parser"),
        ]
    )
]

#if canImport(SwiftUI)
products.append(
    .library(
        name: "SplatalyzerUI",
        targets: ["SplatalyzerUI"]
    )
)

targets.append(
    .target(
        name: "SplatalyzerUI",
        dependencies: ["Splatalyzer"],
        resources: [
            .process("Resources")
        ]
    )
)
#endif

let package = Package(
    name: "Splatalyzer",
    defaultLocalization: "en",
    platforms: [.iOS(.v17), .watchOS(.v10), .macOS(.v14), .tvOS(.v17), .visionOS(.v1)],
    products: products,
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0")
    ],
    targets: targets,
    swiftLanguageModes: [.v5, .v6]
)
