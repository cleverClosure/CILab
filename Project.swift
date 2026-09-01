// CILab — учебное приложение для статьи про CI/CD.
// Автор: Tim Isaev

import ProjectDescription

let project = Project(
    name: "CILab",
    packages: [
        .remote(
            url: "https://github.com/apple/swift-collections",
            requirement: .upToNextMajor(from: "1.1.0")
        ),
    ],
    targets: [
        .target(
            name: "CILab",
            destinations: .iOS,
            product: .app,
            bundleId: "com.cleverclosure.cilab",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .default,
            sources: ["CILab/Sources/**"],
            dependencies: [
                .package(product: "OrderedCollections"),
            ],
            settings: .settings(base: [
                "DEVELOPMENT_TEAM": "F5PC84GW85",
            ])
        ),
        .target(
            name: "CILabTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.cleverclosure.cilab.tests",
            infoPlist: .default,
            sources: ["CILab/Tests/**"],
            dependencies: [.target(name: "CILab")]
        ),
    ]
)
