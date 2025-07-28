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
	dependencies: [
		.package(url: "https://github.com/roland19deschain/ZenSwift", from: "2.1.15"),
		.package(url: "https://github.com/roland19deschain/ZenUIKit", from: "2.1.7")
	],
	targets: [
		.target(
			name: "ZenSwiftUI",
			dependencies: [
				.product(name: "ZenSwift", package: "zenswift"),
				.product(name: "ZenUIKit", package: "zenuikit"),
			],
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
