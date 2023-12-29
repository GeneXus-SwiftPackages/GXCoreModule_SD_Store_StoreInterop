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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.3.3")
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
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_SD_Store_StoreInterop-1.3.3.xcframework.zip",
			checksum: "4c6e5b1382606e0a586babed09aa223fab68e868fe193f8db7229dfa91a7d45a"
		)
	]
)