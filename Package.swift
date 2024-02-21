
// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "PythonCore", 
    platforms: [.iOS(.v13), .macOS(.v11)], 
    products: [
    	.library(
        	name: "PythonCore", 
        	targets: [
        		"PythonCore",
				"Python",
				"PythonExtra"
        	]
    	), 
    ], 
    dependencies: [
    ], 
    targets: [
    	.target(
        	name: "PythonCore", 
        	dependencies: [
        		"Python",
				"PythonExtra"
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
				name: "PythonExtra",
				dependencies: [
					"Python"
				]
				   
			),
		.target(
			name: "TestPython",
			dependencies: ["PythonCore"]
		),
		.binaryTarget(name: "Python", path: "Python.xcframework")
    ]
)
