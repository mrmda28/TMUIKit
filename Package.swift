// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TMUIKit",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "TMUIKit",
            targets: ["TMUIKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftGen/SwiftGenPlugin", from: "6.6.2"),
    ],
    targets: [
        .target(
            name: "TMUIKit",
            exclude: [
                "../../swiftgen.yml"
            ],
            plugins: [
                .plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")
            ]
        ),
        .testTarget(
            name: "TMUIKitTests",
            dependencies: ["TMUIKit"]
        )
    ]
)
