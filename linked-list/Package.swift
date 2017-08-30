import PackageDescription

let package = Package(
    name: "linked-list",
    targets: [
        Target(name: "App"),
        Target(name: "Run", dependencies: ["App"]),
    ],
    dependencies: []
)

