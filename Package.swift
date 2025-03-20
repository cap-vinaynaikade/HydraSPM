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
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraCore.zip", checksum: "6403388c92d4b40f6ccdc25c28694f91a3d30c45bf8a8fb8b67ec294fbfeeeb1"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInAppMessage.zip", checksum: "22215c1190f475d2830c8eecec10eb19e58b951413ca42ec9f08332dcdd60bf4"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraPushNotification.zip", checksum: "4a3d7e89c29614af7332ab6decb86dddc72ed7c987b1e4ea64c4a634cf093a87"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraPushNotificationServiceExtension.zip", checksum: "3760fa56d8f15c38ac3345fc08566db5f9c39c661418bf719ccd290a598f006d"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInboxCore.zip", checksum: "737f5718400e8b15a5fa83414a32a101cbce54483222726284679e0e490b0872"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInboxUI.zip", checksum: "3720537b20627903346f4ff4a0ec934387457e4b73c0660b3781bca37e1731d4"),
    ]
)
