// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Splatalyzer",
    defaultLocalization: "en",
    platforms: [.iOS(.v17), .watchOS(.v10), .macOS(.v14), .tvOS(.v17), .visionOS(.v1)],
    products: [
        .library(
            name: "Splatalyzer",
            targets: ["Splatalyzer"]),
        
        .library(
            name: "SplatalyzerUI",
            targets: ["SplatalyzerUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Splatalyzer",
            resources: [
                .process("Resources")
            ]),
        
        .target(
            name: "SplatalyzerUI",
            dependencies: ["Splatalyzer"],
            resources: [
                .process("Resources")
            ]
        ),
        
        .testTarget(
            name: "SplatalyzerTests",
            dependencies: ["Splatalyzer"],
            resources: [
                .process("Resources")
            ]
        )
    ],
    swiftLanguageModes: [.v5, .v6]
)
