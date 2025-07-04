import ProjectDescription

let project = Project(
    name: "ClubManager",
    targets: [
        .target(
            name: "ClubManager",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.ClubManager",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["ClubManager/Sources/**"],
            resources: ["ClubManager/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "ClubManagerTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.ClubManagerTests",
            infoPlist: .default,
            sources: ["ClubManager/Tests/**"],
            resources: [],
            dependencies: [.target(name: "ClubManager")]
        ),
    ]
)
