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
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.4/HydraCore.zip", checksum: "491e597e7555527e1421b240ccd8c698e7840d832869b0ee2c93d93c7133d74f"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.4/HydraInAppMessage.zip", checksum: "ec6cabe1c506f01e26256a82ed8da13ed26261ce247761fb3a94afc561782393"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.4/HydraPushNotification.zip", checksum: "cd537fa50b6b89f5c910d8b5d6bd3a68d346e4a95f71cc07d6345c7383d78e91"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.4/HydraPushNotificationServiceExtension.zip", checksum: "594d5f02141d0d070c4ac1956cd870ba540e4f7b5bb54b7cd1b2448d808488bc"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.4/HydraInboxCore.zip", checksum: "ee5272bab38cb3afa7cf6667c44af43027df068e97b9691020657c9e8710b6c9"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.4/HydraInboxUI.zip", checksum: "37281642ab574dca0b188879290a3552af99d13dbdcda629be46a9c2175fa755"),
    ]
)
