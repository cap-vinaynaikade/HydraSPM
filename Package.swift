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
        .binaryTarget(name: "HydraCore", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.3/HydraCore.zip", checksum: "1a1f5113d2a806b83a534f672e359fabe175f9343590295d8bc2b0a76509c410"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.3/HydraInAppMessage.zip", checksum: "25b48eb7bf90e8b04d3a4a4cb99f3d9efab9add040d6e2652d6e3b9f8dcd254a"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.3/HydraPushNotification.zip", checksum: "4e879aaa83d2b41b52b04fa74616fa55a43d9a6a3b09e57ae9883b43410660b4"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "hhttps://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.3/HydraPushNotificationServiceExtension.zip", checksum: "b858c1c692fb9c10528a66e8f50254cbfe90da9ae219a5dbcddeadf3b6dd8e3c"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.3/HydraInboxCore.zip", checksum: "c42150941b5ef64db069e9cc90d775d2d5d0704def31c489065b59d6faeed81b"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.3/HydraInboxUI.zip", checksum: "eb30b3a363eb86b3e6dff90df792f7be17f912093c86965588f68ab9466a384b"),
    ]
)
