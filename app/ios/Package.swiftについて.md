普通にNewからPackageを選択して追加して、そこにコードを移動して諸々Package.swiftを設定したらXcodeのTARGETS > Generalからリンクしてビルドする

```swift
let package = Package(
    // Xcodeの
    // frameworks, Libraries, and Embedded Contentから
    // swiftmoduleのModuleをリンクするときに
    // このnameの配下にあるものを参照する
    // 通常、Packageのディレクトリ名と同じにするが、同じでなくても問題ない
    name: "AppLibrary",
    platforms: [.iOS(.v14)],
    products: [
        // 実際にリンクするModuleはここにリストしたものになる
        // AppLibrary配下にAppModuleが表示されていて、それをリンクする
        .library(
            name: "AppModule",
            targets: ["Common", "Features"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // import Commonやimport Featuresのように実際にimportするもの
        .target(
            name: "Common",
            dependencies: []),
        .target(
            name: "Features",
            dependencies: []),
    ]
)
```


