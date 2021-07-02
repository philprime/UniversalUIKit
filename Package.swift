// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "UniversalUIKit",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)
    ],
    products: [
        .library(name: "UniversalUIKit", targets: ["UniversalUIKit"]),
    ],
    targets: [
        .target(name: "UniversalUIKit"),
        .testTarget(name: "UniversalUIKitTests", dependencies: ["UniversalUIKit"]),
    ]
)
