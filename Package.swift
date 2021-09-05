// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HelloGtk",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .executable(
            name: "HelloGtk",
            targets: ["HelloGtk"]),
    ],
    dependencies: [
    	.package(url: "https://github.com/rhx/gir2swift.git", .branch("main")),
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Kiwijane3/GtkKit.git", .branch("master"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "HelloGtk",
            dependencies: ["GtkKit"],
            resources: [.copy("ui.glade")]),
        .testTarget(
            name: "HelloGtkTests",
            dependencies: ["HelloGtk"]),
    ]
)
