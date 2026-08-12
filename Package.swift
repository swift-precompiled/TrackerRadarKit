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
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "TrackerRadarKit",
            url: "https://github.com/swift-precompiled/TrackerRadarKit/releases/download/3.1.0/TrackerRadarKit-3b691c0ad225500b9951615f81c0cd67cad425f92679f393a18302c9472b5aff.xcframework.zip",
            checksum: "3b691c0ad225500b9951615f81c0cd67cad425f92679f393a18302c9472b5aff"
        )
    ]
)