
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
        	"Python"
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
    	.binaryTarget(name: "Python", url: "https://github.com/PythonSwiftLink/PythonCore/releases/download/311.0.1/Python.zip", checksum: "a7edf861252ef04d71c20a5a15d285682316ae1641140aaee07bfb9c474b7a0a"), 
    ]
)