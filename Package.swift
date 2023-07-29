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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.1.0-rc.1")
	],
	targets: [
		.target(name: "GXCoreModule_SD_Store_StoreInteropWrapper",
				dependencies: [
					"GXCoreModule_SD_Store_StoreInterop",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS, .watchOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Store_StoreInterop",
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_SD_Store_StoreInterop-1.1.0-rc.1.xcframework.zip",
			checksum: "e825ae80515fa7ec7071a0f98e06fe39f304d2ef24de1d9382407b5b5f182ea6"
		)
	]
)