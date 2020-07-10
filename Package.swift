// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "MediaBrowser",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "MediaBrowser",
            targets: ["MediaBrowser"])
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage", from: "5.8.3"),
        .package(url: "https://github.com/luispadron/UICircularProgressRing", from: "6.5.0")
    ],
    targets: [
        .target(
            name: "MediaBrowser",
            dependencies: ["SDWebImage", "UICircularProgressRing"],
            path: "MediaBrowser")
    ]
)
