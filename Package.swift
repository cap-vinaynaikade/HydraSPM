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
        .binaryTarget(name: "HydraCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraCore.zip", checksum: "504907eb5b4f57267fe4e90018a52ae0fc303ec9b99342cd6c7580c3f5fa0e6a"),
        .binaryTarget(name: "HydraInAppMessage", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInAppMessage.zip", checksum: "5ff6b7b54e4afae120005ec8fc97291f49807ffe9df7f31f150d1e1d529b954c"),
        .binaryTarget(name: "HydraPushNotification", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraPushNotification.zip", checksum: "6d219b45405d8718c60cac8629561bb8ba73f011e5904fbf81b43a47cad930f0"),
        .binaryTarget(name: "HydraPushNotificationServiceExtension", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraPushNotificationServiceExtension.zip", checksum: "4f9e9fac19c285db532481ed94fddfbe23dd3afb6ac6fd6548ed69d541c4b2de"),
        .binaryTarget(name: "HydraInboxCore", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInboxCore.zip", checksum: "abfd337170f108e40986c6d92312b2f67fb8b243966d3193a9cc2026439821d8"),
        .binaryTarget(name: "HydraInboxUI", url: "https://github.com/cap-vinaynaikade/HydraSPM/releases/download/1.0.5/HydraInboxUI.zip", checksum: "656380322e92ca208e4aabc1d13d23048f0aa1fc6cd8f443978a39e9235eab61"),
    ]
)
