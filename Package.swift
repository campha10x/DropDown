// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DropDown",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DropDown",
            targets: ["DropDown"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DropDown",
            path: "DropDown", resources: [.process("DropDownCell.xib")]),
        .testTarget(
            name: "DropDownTests",
            dependencies: ["DropDown"], path: "DropDownTests"),
    ]
)
