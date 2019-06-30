// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Atomic",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v5),
    ],
    products: [
        .library(
            name: "Atomic",
            targets: ["Atomic"]),
    ],
    dependencies: [ ],
    targets: [
        .target(
            name: "Atomic",
            dependencies: []),
        .testTarget(
            name: "AtomicTests",
            dependencies: ["Atomic"]),
    ]
)
