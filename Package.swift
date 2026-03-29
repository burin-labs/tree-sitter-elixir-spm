// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TreeSitterElixir",
    products: [.library(name: "TreeSitterElixir", targets: ["TreeSitterElixir"])],
    targets: [
        .target(
            name: "TreeSitterElixir",
            path: "Sources/TreeSitterElixir",
            sources: ["src/parser.c", "src/scanner.c"],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("src")]
        )
    ]
)
