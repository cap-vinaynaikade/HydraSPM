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
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraCore.zip", checksum: "50eedac058eb02b03034839203c5e8ead5053470b6f34f4cc2fc1932e9ae19f5"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInAppMessage.zip", checksum: "a6ca8bb4da8ce016e5018fb14a18d1b1db25f5282e53f5ce495123e80fb8b770"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraPushNotification.zip", checksum: "e236d58668053324850d4ac4253ce6a6cb2831813a198a86facb2247fd05464e"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraPushNotificationServiceExtension.zip", checksum: "35a249e42faec919d51c1c4a0b31364af45e97db3e318a581c0eba88de2d13ef"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInboxCore.zip", checksum: "d0a33d074d4c0dccec8b9a425d54d1493797f4bd53e5739c0cb4ccaf0e661acc"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInboxUI.zip", checksum: "97fa0e866acf53d224c0029066823952d10aed4fc1fcfc12f0f6b21e8034da5e"),
    ]
)
