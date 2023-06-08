// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "YoutubeDL-iOS",
    platforms: [.iOS(.v13), .macOS(.v11)],
    products: [
        .library(
            name: "YoutubeDL",
            targets: ["YoutubeDL"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pvieito/PythonKit.git", from: "0.3.1"),
        .package(url: "https://github.com/kewlbear/Python-iOS.git", from: "0.1.1-b")
    ],
    targets: [
        .target(
            name: "YoutubeDL",
            dependencies: ["Python-iOS", "PythonKit"]),
    ]
)
