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
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.1/HydraCore.zip", checksum: "09330c0219ba32d5187fb2622311cfa2e5dd8c791e446396daa14f839e8ffb63"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.1/HydraInAppMessage.zip", checksum: "3371c7770bc075340f3c922566eb322d0ce294f8e357d548c0f2a2315820d3c4"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.1/HydraPushNotification.zip", checksum: "88dc439941cea72f8d6f2d0c00cc8535784dc2dbcaf1e3d7afa525d304099b18"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "hhttps://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.1/HydraPushNotificationServiceExtension.zip", checksum: "be537d71b6dc6cfc767fa9f10058ff85eb09e7e2fdb4df36d88a445d3f6c45ff"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.1/HydraInboxCore.zip", checksum: "b75377e86740b0204572985330d451d21c450c00297d87ab0e7339a2559ab691"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.1/HydraInboxUI.zip", checksum: "6155599e7b7c9212473228197d92c6dd0316853f4c7f4edf05c4ba5373be0b0d"),
    ]
)
