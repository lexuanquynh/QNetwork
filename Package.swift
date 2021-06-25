// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QNetwork",
    platforms: [
            .macOS(.v10_12),
            .iOS(.v10),
            .tvOS(.v10),
            .watchOS(.v3)
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "QNetwork",
            targets: ["QNetwork"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "14.0.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "QNetwork",
            dependencies: ["Moya"]),
        .testTarget(
            name: "QNetworkTests",
            dependencies: ["QNetwork"]),
    ]
)
