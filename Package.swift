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
        .binaryTarget(name: "HydraCore", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.3/HydraCore.zip", checksum: "841aaa55b2dc860d1e1c257416740d39041ef9f3bf55e91703ece9d8f79a86b2"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.3/HydraInAppMessage.zip", checksum: "828c5336eb84da36ea1a5e7a29b787ae2cc5c3d9a9b76b064c657f7b9a6b004e"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.3/HydraPushNotification.zip", checksum: "dbf559b772ac14009310d216d8af01b962bf7d42285ab18aa3f3a519961097a4"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "hhttps://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.3/HydraPushNotificationServiceExtension.zip", checksum: "4cff6a22be64e88f67fa592ddad45bfab9e3f3df692f22c2d3e4afd6464c96f7"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.3/HydraInboxCore.zip", checksum: "fda155efe3f20686393904ccc674c5429253514de8a387437378142cf54c3394"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/Capillary/hydra-sdk-ios-packages/releases/download/1.0.3/HydraInboxUI.zip", checksum: "d02da7f7997b4b157f068be1c45aab035da0e5bd832b966fec96e6ce9914f4e0"),
    ]
)
