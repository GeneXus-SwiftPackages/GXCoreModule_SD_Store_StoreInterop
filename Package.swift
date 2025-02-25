// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Store_StoreInterop",
	platforms: [.iOS("15.0"), .watchOS("10.0"), .tvOS("18.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Store_StoreInterop",
			targets: ["GXCoreModule_SD_Store_StoreInteropWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.1.0-beta.3")
	],
	targets: [
		.target(name: "GXCoreModule_SD_Store_StoreInteropWrapper",
				dependencies: [
					"GXCoreModule_SD_Store_StoreInterop",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Store_StoreInterop",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Store_StoreInterop-3.1.0-beta.3.xcframework.zip",
			checksum: "d15cf3e2e050810ffce21b7b58ec077a9223914be6a274f195c1ae41a5fd8984"
		)
	]
)