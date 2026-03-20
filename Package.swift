// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "EnvironmentCheckerPlugin",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "EnvironmentCheckerPlugin", targets: ["EnvironmentCheckerPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "6.0.0")
    ],
    targets: [
        .target(
            name: "EnvironmentCheckerPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/EnvironmentCheckerPlugin"
        ),
        .testTarget(
            name: "EnvironmentCheckerPluginTests",
            dependencies: ["EnvironmentCheckerPlugin"],
            path: "ios/Tests/EnvironmentCheckerPluginTests"
        )
    ]
)
