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
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraCore.zip", checksum: "5af08e314bf8faa1d99f57e17fd7b83299c9be0d0934483e7445849afa3a5149"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInAppMessage.zip", checksum: "195ce69159c0dd29a729638f609bd238b8f22d899c738679e70b8f352dfb8f3b"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraPushNotification.zip", checksum: "b77566ceac6f7dcef2aa3f899261d88efaccc7bb60129fe5a6d5288d9e8fcd8d"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraPushNotificationServiceExtension.zip", checksum: "bd7622115a778b1d8e0e4f0ea45028fa9229ac8237bf6a7e2eda3b44283789ab"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInboxCore.zip", checksum: "7348edcf12af1248e147a7888c6eaad5c9664ca71d224d84b9f9a29e286a7910"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInboxUI.zip", checksum: "dc5258c30e6965db2e7f10aaa784b9c4a782f81e2de8ab1dea74a69be682b41e"),
    ]
)
