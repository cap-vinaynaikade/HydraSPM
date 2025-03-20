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
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraCore.zip", checksum: "f47e84296693e8094ec6d8966e4f9a48ce1d8dc543a47f098ca78942ae53d539"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInAppMessage.zip", checksum: "6f9616aa9eabde1d71f744a868fc9d1e035ba363bcc3dcee20e224018d651892"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraPushNotification.zip", checksum: "1b8624a217b112c90f627a191198bae95a6edd79b36fd47622a42faad71641a1"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraPushNotificationServiceExtension.zip", checksum: "64f9aceee684484566a2ef504f7e6bbd15b7d2e076646e4c6966c65777046a16"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInboxCore.zip", checksum: "ee1a84a782aeea6fc79b8aaa39201b66563d01fe6faea064e19f57fb2a96909a"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInboxUI.zip", checksum: "811ae12380ca13d86a8425052dbd21d131544d77e0a639b250a2438762ca1267"),
    ]
)
