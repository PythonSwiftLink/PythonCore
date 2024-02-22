
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
    	.binaryTarget(name: "Python", url: "https://github.com/PythonSwiftLink/PythonCore/releases/download/311.0.3/Python.zip", checksum: "d9cdee7a9c90129f1bdecfc489a81e1f822e43c40dcc0f6b589df3a59bf11741"), 
    ]
)