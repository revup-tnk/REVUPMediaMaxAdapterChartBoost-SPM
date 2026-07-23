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
        .package(url: "https://github.com/revup-tnk/REVUP-iOS-ChartBoost.git", exact: "1.1.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterChartBoostTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterChartBoost"),
                .target(name: "REVUPMediaMaxAdapterChartboostMediationAdapter"),
                .product(name: "REVUPWithChartBoost", package: "REVUP-iOS-ChartBoost"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterChartBoost",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterChartBoost.zip",
            checksum: "098ae2fc6ca3a3e1bf8402ac08951da9d5daf854c6da1f0a12f53199c3c2cebe"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterChartboostMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationChartboostAdapter.xcframework.zip",
            checksum: "7c6c0a63ecc185069922b7b681f59b5d514b2e789518082f384fc23151b7fa91"
        ),
    ]
)
