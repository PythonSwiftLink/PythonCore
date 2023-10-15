// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription



let package = Package(
    name: "PythonCore",
    platforms: [.macOS(.v11), .iOS(.v13)],
    products: [
        .library(
            name: "PythonCore",
            targets: ["PythonCore"]
        ),
    ],
    targets: [
        .target(
            name: "PythonCore",
            dependencies: ["Python"],
            linkerSettings: [
                .linkedLibrary("ncurses"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("z"),
            ]
        ),
		.binaryTarget(name: "Python", path: "Python.zip")
    ]
)



