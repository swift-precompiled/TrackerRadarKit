// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "TrackerRadarKit",
    products: [
        .library(
            name: "TrackerRadarKit",
            targets: ["TrackerRadarKit_PrecompiledProduct"]
        )
    ],
    targets: [
        .target(
            name: "TrackerRadarKit_Aggregation",
            dependencies: ["TrackerRadarKit"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "TrackerRadarKit",
            url: "https://github.com/swift-precompiled/TrackerRadarKit/releases/download/3.1.0/TrackerRadarKit-0754b8025cd37a593cb6b44134ad5833aeb679f276a7626cbcf7de00896e487f.xcframework.zip",
            checksum: "0754b8025cd37a593cb6b44134ad5833aeb679f276a7626cbcf7de00896e487f"
        ),
        .target(
            name: "TrackerRadarKit_PrecompiledProduct",
            dependencies: ["TrackerRadarKit_Aggregation"]
        )
    ]
)