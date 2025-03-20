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
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraCore.zip", checksum: "0521116b19df446d79c3907f4202a62cfe43d9e3b683aec2cbdf804f613b122e"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInAppMessage.zip", checksum: "ea01f524acc39d1462648e022e6ac3032e75ede6a5bc0acc43fb689d2c7bc50a"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraPushNotification.zip", checksum: "85f0ebc233d47900c5f8126a1fd8e28aef663769f2594b8ff1017ae64f0422c0"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraPushNotificationServiceExtension.zip", checksum: "0201d1f68504ac8ab40d0b47ff99adb1388f11bbf07b876fde6eb92040cab3be"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInboxCore.zip", checksum: "3541b4f25ecb521d627482ba96eec0a6417703ca193ebee3ce5b164b3788758f"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.6/HydraInboxUI.zip", checksum: "54084d4b6f91f53aafcdd375dede9a5f75ba55347af17eb2629bde7585fe64b6"),
    ]
)
