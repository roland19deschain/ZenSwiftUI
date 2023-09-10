// swift-tools-version: 5.7
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
			path: "Sources/",
			swiftSettings: [
//				.unsafeFlags([
//					"-Xfrontend",
//					"-warn-long-function-bodies=50",
//					"-Xfrontend",
//					"-warn-long-expression-type-checking=50"
//				])
			]
		),
		.testTarget(
			name: "ZenSwiftUITests",
			dependencies: ["ZenSwiftUI"],
			path: "Tests/"
		)
	],
	swiftLanguageVersions: [.v5]
)
