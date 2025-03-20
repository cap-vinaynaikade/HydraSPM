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
        .binaryTarget(name: "HydraCore", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.6.3/HydraCore.zip", checksum: "b54c124bae2c1cc4a9423880bfeba8a4962b21683390c1321472a216f2305179"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.6.3/HydraInAppMessage.zip", checksum: "f8ee2f94f61a67815bd0a40fd358a15c65cd2cb247345a86e728c703b25a7c6c"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.6.3/HydraPushNotification.zip", checksum: "27d769415fd349f692e49ac5b61706548db77251789227d2ebd1fb4702303879"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.6.3/HydraPushNotificationServiceExtension.zip", checksum: "452ca15ac48cbef76bcb2ecf3b6edb4369193cf8c44c2370c25e57c0d1f2acf6"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.6.3/HydraInboxCore.zip", checksum: "b57170dcbeb57fd1ae62802b73add4c42c462d4c17cc716e1b8ea32196a6eac0"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.6.3/HydraInboxUI.zip", checksum: "3735835deecdb46bc2c42822120a166495191acd054fbe0ba1d6d56ae1e8ceaf"),
    ]
)
