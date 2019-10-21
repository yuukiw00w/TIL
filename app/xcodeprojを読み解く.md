## Xcodeにおける基本的なプロジェクト構成について
Xcodeにはアプリケーションの構成単位として、Target/Project/Workspaceの3種類が存在する。

### Target
Targetとは、具体的なビルド対象一つ一つを表す構成要素です。
Targetにはアプリケーションやライブラリ、テストなどが存在し、個々のビルド対象に対してコンパイラやリンカのフラグなどを個別に設定することができます。
実際にビルド対象となるファイルはこのTargetに紐づけられ、それらのファイルはTarget設定に基づいてビルドが実行されます。

### Project
Projectとは、Targetを一つ以上含む構成要素です。
ProjectはTargetをグルーピングするもので、各Targetに共通の設定を規定することができます。
Projectは共通の設定を規定するものの、個々のTargetで規定されている設定が優先されます。
ProjectにはTargetだけでなく、その他のProjectをSubProjectとして紐づけることが可能です。

### Workspace
Workspaceとは、Projectを一つ以上含む構成要素です。
WorkspaceはProjectをグルーピングするもので、各Projectに共通の設定を規定することができます。
Workspaceに含まれるProjectはそれぞれ同じ階層に存在するため、個々のProjectから別のProjectに相互に参照することが可能です。
CocoaPodsを利用している場合によく利用されます。

## Target
### タブ構成
XcodeのTargetを選択すると、以下のタブが表示されます。

* General
* Signing & Capabilities
* Resource Tags
* Info
* Build Settings
* Build Phases
* Build Rules

### General
Generalタブには以下の項目が存在します。

* Identity
* Deployment Info
* App Icons and Launch Images
* Embedded Content
* Deployment Assets

#### Identity
Identityの項目には以下の要素が含まれます。

* Display Name：アプリの表示名（ホーム画面のアプリアイコンの下に表示される名前）
* Bundle Identifier：アプリを唯一に識別するID。ドメインを逆から書いた「com.companyName.productName」という書き方が一般的
* Version：アプリのバージョン。内部ではCFBundleShortVersionStringというキーで値が保持される。表記用のバージョンで、App Storeにはこちらが表示される
* Build：内部管理用のバージョン。内部ではCFBundleVersionというキーで値が保持される。ピリオドで区切られた3つの数字推奨。
