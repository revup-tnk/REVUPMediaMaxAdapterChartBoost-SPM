// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterChartBoost",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterChartBoost",
            targets: ["REVUPMediaMaxAdapterChartBoostTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Chartboost.git", exact: "9140200.0.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterChartBoostTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterChartBoost"),
                .product(name: "AppLovinMediationChartboostAdapter", package: "AppLovin-MAX-Swift-Package-Chartboost"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterChartBoost",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMaxAdapterChartBoost.zip",
            checksum: "c1230dc1cc2a1a70978370acff3169db492a0aa214858087fa77a72270f12b82"
        ),
    ]
)
