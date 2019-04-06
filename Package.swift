// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "TrisProject",
    dependencies: [
        .package(
            url: "https://github.com/tris-foundation/fiber.git",
            .branch("master")),
        .package(
            url: "https://github.com/tris-foundation/web.git",
            .branch("master")),
        .package(
            url: "https://github.com/tris-foundation/test.git",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "main",
            dependencies: ["Fiber", "Web", "TrisProject"]),
        .target(
            name: "TrisProject",
            dependencies: ["Web"]),
        .testTarget(
            name: "TrisProjectTests",
            dependencies: ["Test", "TrisProject"])
    ]
)
