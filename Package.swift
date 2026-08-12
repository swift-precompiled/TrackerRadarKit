// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "TrackerRadarKit",
    products: [
        .library(
            name: "TrackerRadarKit",
            targets: ["TrackerRadarKit"]
        )
    ],
    targets: [
        .target(
            name: "TrackerRadarKit_Aggregation",
            dependencies: ["TrackerRadarKit"],
            packageAccess: false,
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "TrackerRadarKit",
            url: "https://github.com/swift-precompiled/TrackerRadarKit/releases/download/3.1.0/TrackerRadarKit-7edc1578fecc8402a40379651e8c7a56f8c228e69b2926c6012f1f9bbd8be21c.xcframework.zip",
            checksum: "7edc1578fecc8402a40379651e8c7a56f8c228e69b2926c6012f1f9bbd8be21c"
        )
    ]
)