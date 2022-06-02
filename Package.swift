// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "ZenSwiftUI",
	platforms: [.iOS(.v14)],
	products: [
		.library(
			name: "ZenSwiftUI",
			type: .static,
			targets: ["ZenSwiftUI"]
		)
	],
	dependencies: [],
	targets: [
		.target(
			name: "ZenSwiftUI",
			dependencies: [],
			path: "Sources/"
		),
		.testTarget(
			name: "ZenSwiftUITests",
			dependencies: ["ZenSwiftUI"],
			path: "Tests/"
		)
	],
	swiftLanguageVersions: [.v5]
)
