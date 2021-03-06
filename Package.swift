import PackageDescription

let package = Package(
    name: "sample",
    targets: [
        Target(name: "sample", dependencies: [])
    ],
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 1, minor: 0),
        .Package(url: "https://github.com/IBM-Swift/HeliumLogger.git", majorVersion: 1, minor: 0),
        .Package(url: "https://github.com/IBM-Swift/Swift-cfenv.git", majorVersion: 1, minor: 7),
        .Package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", majorVersion: 14),
        .Package(url: "https://github.com/IBM-Bluemix/cf-deployment-tracker-client-swift.git", majorVersion: 0, minor: 4)
    ],
    exclude: ["Makefile", "Package-Builder"])
