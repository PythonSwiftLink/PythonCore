

// swift-tools-version: 5.9

import PackageDescription

let package = Package(
	name: "PythonCore", 
	platforms: [.iOS(.v13), .macOS(.v11)], 
	products: [
		.library(
			name: "PythonCore", 
			targets: [
				"PythonCore",
			]
		), 
	], 
	dependencies: [
	], 
	targets: [
		.target(
			name: "Python",
			dependencies: [
				"libPython",
			],
			resources: [
			],
			linkerSettings: [
				.linkedLibrary("bz2"), 
					.linkedLibrary("z"), 
					.linkedLibrary("ncurses"), 
					.linkedLibrary("sqlite3"), 
			]
		), 
        .target(
            name: "PythonCore",
            dependencies: [
                "Python"
            ],
            resources: [
            ],
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedLibrary("bz2"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("ncurses")
            ],
            plugins: []
        ),
//			.target(
//				name: "TestPython", 
//				dependencies: ["PythonCore"]
//			),
        //.binaryTarget(name: "libPython", path: "libPython.xcframework")
		.binaryTarget(name: "libPython", url: "https://github.com/Py-Swift/PythonCore/releases/download/311.11.0/libPython.zip", checksum: "8b796ce3deb55b59c7f203b299e5072d8d4fcccd28e36be5377576e23a1163be"),
	]
)
