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
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraCore.zip", checksum: "7285073f00f9516435961de39ba1ad5a4d6d3d0ca4268c67dec1df0d20156df4"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInAppMessage.zip", checksum: "b6822b00363f6d1013400a5a5af8691191de8deac8aa54be905fbdcb7f4e4bad"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraPushNotification.zip", checksum: "6a1d0481b7d5e89f01d3a2a1723d0ec978018ef433f9144ce827cdbb4667ce15"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraPushNotificationServiceExtension.zip", checksum: "db90902c6145018efe9df003a5665146c12a2d8159dd951ee257e4084ec1c38d"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInboxCore.zip", checksum: "901e46a506f9ee1036f21866e76d90bec51e58a38d853a9fdff2798864391b37"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInboxUI.zip", checksum: "5eef04716b897aa9f9a4766a36106fde1772dc84a513d92a8f6fedc667f12f95"),
    ]
)
