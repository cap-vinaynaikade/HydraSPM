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
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraCore.zip", checksum: "bd98e8d073fdff04c8558b9864ef487ce92c958a5ad6d1938beee0934b0f4fa2"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInAppMessage.zip", checksum: "17ef7ef441e46d175843cfa627c4931f4de287dba6e2e7d2ead9c0919a027d7c"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraPushNotification.zip", checksum: "02d7abac8e1b95cb9314b3e3bf9cbf743460b5b4b1d7d54ec3765d46aa61ccef"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraPushNotificationServiceExtension.zip", checksum: "2c8323d47b638b759156efc066d21e8551905e464b1f21551be26f7143696842"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInboxCore.zip", checksum: "260a1f3a1f3eb0fdc673053e6104bcbe8886eb71c94d5d160785150460b15c1f"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInboxUI.zip", checksum: "1d22b43adee25f33579bce3ecd786330893714342f10419283b78cdc5ee24108"),
    ]
)
