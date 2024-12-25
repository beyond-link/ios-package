// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://beyondlink.s3.eu-north-1.amazonaws.com/beyondLinkSDK-0.5.2-82e1d654-e005-4b94-977e-5a6640cbc9a3.xcframework.zip"
let remoteKotlinChecksum = "ed8d1f3c5d8539462d99513538c4cd7e3b4d9309b23de1e27c985d6e8b4ee8d9"
let packageName = "beyondLinkSDK"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)