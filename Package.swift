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
        .binaryTarget(name: "HydraCore", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.0/HydraCore.zip", checksum: "93df83da02cf5202de3f8003885dea90abaf2caf22fa240e49e65093603a30c2"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.0/HydraInAppMessage.zip", checksum: "52b78309ad20413fbcd19dcdd94c19fea2ab532cca373ac8aad8c0120bda3342"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.0/HydraPushNotification.zip", checksum: "48c4c26320ed15ac45799c55482148d7e358b172d116d6bb47ef89a3db80af9f"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.0/HydraPushNotificationServiceExtension.zip", checksum: "cdd2de897086e3fa4e802f90d78eb975f655c7573cd9209148a4f509a3b52bb5"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.0/HydraInboxCore.zip", checksum: "c2d648423ed3ccaa9ee261e2a6a1e222a63e49b6925b66b36363f941fbc294a6"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.0/HydraInboxUI.zip", checksum: "6a2107e5dd340065890f193af3fd808fad8e2b76819f3d0eff8ecc0c51ae0def"),
    ]
)
