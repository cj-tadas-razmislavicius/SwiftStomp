// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "SwiftStomp",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13)
    ],
    products: [
        .library(name: "SwiftStomp", targets: ["SwiftStomp"])
    ],
    dependencies: [
        .package(url: "git@github.com:cj-tadas-razmislavicius/Reachability.swift.git",
                 .upToNextMajor(from: "5.3.3"))
    ],
    targets: [
        .target(
            name: "SwiftStomp",
            dependencies: [
                .product(name: "ReachabilitySwift", package: "Reachability.swift"),
            ],
            path: "SwiftStomp"
        )
    ]
)
