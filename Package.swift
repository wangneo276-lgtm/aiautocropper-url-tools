// swift-tools-version: 5.7
import PackageDescription
let package = Package(
    name: "AiAutoCropperUrlTools",
    products: [.library(name: "AiAutoCropperUrlTools", targets: ["AiAutoCropperUrlTools"])],
    targets: [.target(name: "AiAutoCropperUrlTools", path: "swift/Sources/AiAutoCropperUrlTools")]
)
