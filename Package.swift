// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Store_StoreInterop",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Store_StoreInterop",
			targets: ["GXCoreModule_SD_Store_StoreInteropWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.2.0-beta.21")
	],
	targets: [
		.target(name: "GXCoreModule_SD_Store_StoreInteropWrapper",
				dependencies: [
					"GXCoreModule_SD_Store_StoreInterop",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Store_StoreInterop",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Store_StoreInterop-1.2.0-beta.21.xcframework.zip",
			checksum: "046260b55a0ffa881bdcec1591ed22dffa3d0d3d07d46d2b07534b3ace9c92a5"
		)
	]
)