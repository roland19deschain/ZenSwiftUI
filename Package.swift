// swift-tools-version: 5.10

import PackageDescription

let package = Package(
	name: "ZenSwiftUI",
	platforms: [.iOS(.v16)],
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
