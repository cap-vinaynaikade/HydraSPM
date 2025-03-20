// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "hydra-sdk-ios-packages",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "HydraCore",
            targets: ["HydraCore"]),
        .library(
            name: "HydraInAppMessage",
            targets: ["HydraInAppMessage"]),
        .library(
            name: "HydraPushNotification",
            targets: ["HydraPushNotification"]),
        .library(
            name: "HydraPushNotificationServiceExtension",
            targets: ["HydraPushNotificationServiceExtension"]),
        .library(
            name: "HydraInboxCore",
            targets: ["HydraInboxCore"]),
        .library(
            name: "HydraInboxUI",
            targets: ["HydraInboxUI"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.1/HydraCore.zip", checksum: "352e9371f3017422f0acb0e4aa9cf7f83c296669e94b66f6ebf9522e3b657f62"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.1/HydraInAppMessage.zip", checksum: "ca319021003ac07a21df2702e88e09243fbc1f437f0ab9cc24d7b57da812dc0c"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.1/HydraPushNotification.zip", checksum: "2a6e2b6a0b38b73f8a192e6a5db7804017a647fdaba2f40b872047b1d317b7bf"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "hhttps://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.1/HydraPushNotificationServiceExtension.zip", checksum: "b908f6b644d5f4e5f8e39346e5fe0e0256452ac871d35ce009fa7d59f1502081"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.1/HydraInboxCore.zip", checksum: "651770042a6846c0b3690bbf3ff44c5feadbcbb32237ee8d1da360e2670d0216"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.1/HydraInboxUI.zip", checksum: "06e6dd7dff54db899679778a3b24e071262075c7ca5318d9b05c0e59fa6a1a06"),
    ]
)
