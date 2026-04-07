// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterChartBoost",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterChartBoost",
            targets: ["REVUPMediaMaxAdapterChartBoostTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
        .package(url: "https://github.com/revup-tnk/REVUP-iOS-ChartBoost.git", exact: "1.0.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterChartBoostTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterChartBoost"),
                .target(name: "REVUPMediaMaxAdapterChartboostMediationAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "REVUPWithChartBoost", package: "REVUP-iOS-ChartBoost"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterChartBoost",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterChartBoost.zip",
            checksum: "b70eb8eaa2cd38343ec7381526cab3b4904afe594c6d58beb298c04d2f3df522"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterChartboostMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/AppLovinMediationChartboostAdapter.xcframework.zip",
            checksum: "48687bf6b115740380811a9bf9aa7e0e9fc6049fbc22660fda80813c13491d91"
        ),
    ]
)
