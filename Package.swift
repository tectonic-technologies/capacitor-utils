// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TectonicTechnologiesCapacitorUtils",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "TectonicTechnologiesCapacitorUtils",
            targets: ["TectonicCapacitorUtilsPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "TectonicCapacitorUtilsPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/TectonicCapacitorUtilsPlugin"),
        .testTarget(
            name: "TectonicCapacitorUtilsPluginTests",
            dependencies: ["TectonicCapacitorUtilsPlugin"],
            path: "ios/Tests/TectonicCapacitorUtilsPluginTests")
    ]
)
