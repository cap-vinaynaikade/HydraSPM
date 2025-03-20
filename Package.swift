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
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraCore.zip", checksum: "d30ea8994177ed3d31d0a55ef5bdcf07e71a3312be2f32e77cc0679e86c07b6e"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInAppMessage.zip", checksum: "2dd376b0f6ecd0c0942609aabde01b6661cd44ac494e875cc512d4a88dd14a59"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraPushNotification.zip", checksum: "5e2668f63be33971de07b89174d246cacdd55ccda5162294a5a46cfc2e71f495"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraPushNotificationServiceExtension.zip", checksum: "a07461867ba097b899c3a49c9b2684747d03cc0c6a2bdf9b1b0ce7840f596a64"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInboxCore.zip", checksum: "4b7e887738929dd2465a6f442d4c35a8252368246bafb890fc13467dd6512e7b"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInboxUI.zip", checksum: "8ae473a9a10d826e34aa946640c30eec183860232c1bf7fbac8139c5f1900ade"),
    ]
)
