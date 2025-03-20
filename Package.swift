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
        .binaryTarget(name: "HydraCore", path: "./Frameworks/HydraCore.xcframework"),
        .binaryTarget(name: "HydraInAppMessage", path: "./Frameworks/HydraInAppMessage.xcframework"),
        .binaryTarget(name: "HydraPushNotification", path: "./Frameworks/HydraPushNotification.xcframework"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", path: "./Frameworks/HydraPushNotificationServiceExtension.xcframework"),
        .binaryTarget(name: "HydraInboxCore", path: "./Frameworks/HydraInboxCore.xcframework"),
        .binaryTarget(name: "HydraInboxUI", path: "./Frameworks/HydraInboxUI.xcframework"),
    ]
)
