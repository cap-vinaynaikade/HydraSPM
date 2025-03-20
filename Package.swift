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
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraCore.zip", checksum: "b2bb490e3de0e299e57cb40eaaf241a29001da42eebedf57bd263f261294bf4c"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInAppMessage.zip", checksum: "b90015811e7325a95e35bd1355242eb02d56748c0780b714398f834849f8545e"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraPushNotification.zip", checksum: "28b3c3beaf74c8d0d9492e025fde8713137db7672a155b5e3c757f46dee09b55"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraPushNotificationServiceExtension.zip", checksum: "754abb52d7dbd275fbf4e2534c9e053f126cc3f587187f7e9d7cd5426736996c"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInboxCore.zip", checksum: "d9c18ab3a6d6c2d1b6a6a29ad8d2ad389bc1faf1a1114b8ae463ef6e798b962a"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInboxUI.zip", checksum: "7b2a8d46d611a02ce380d0040e9f45db06743d9e0b5035af28ddbc41858dbf13"),
    ]
)
