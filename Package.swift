// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "TrisProject",
    dependencies: [
        .package(
            url: "https://github.com/tris-foundation/fiber.git",
            .branch("master")),
        .package(
            url: "https://github.com/tris-foundation/http.git",
            .branch("master")),
        .package(
            url: "https://github.com/tris-foundation/test.git",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "main",
            dependencies: ["Fiber", "HTTP", "TrisProject"]),
        .target(
            name: "TrisProject",
            dependencies: ["HTTP"]),
        .testTarget(
            name: "TrisProjectTests",
            dependencies: ["Test", "TrisProject"])
    ]
)
