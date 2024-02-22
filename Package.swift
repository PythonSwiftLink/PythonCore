
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
			.binaryTarget(name: "Python", url: "https://github.com/PythonSwiftLink/PythonCore/releases/download/311.0.2/Python.zip", checksum: "410d57419f0ccbc563ab821e3aa241a4ed8684888775f4bdea0dfc70820b9de6"), 
	]
)
