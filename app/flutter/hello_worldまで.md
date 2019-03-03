# Flutterとは
Googleが開発したAndroid/iOSアプリを１つのコードで構築できるフレームワークのこと。
Dart言語を使って開発を行う。HotReloadによってコード修正後の確認が容易なのが大きな特徴の１つ。
独自の描画方式によってAndroid/iOS療法でMaterial DesignのUIを簡単に構成できる。

# セットアップについて
基本的には[公式ドキュメント](https://flutter.dev/docs/get-started/install)に手厚い説明があるため、その手順で実施すればセットアップが完了する。
以下ではmacOSでAndroid Studioを使う場合の手順を記載する。

## インストールから新しいアプリを作成するまで

1. 公式ドキュメントに最新の安定版のリンクがあるため、そこからzipファイルをダウンロードする。
2. ダウンロードしたファイルをunzipする
3. unzipしたフォルダ内のbinフォルダをPATHに追加する
4. 必要な依存関係を`flutter doctor`コマンドでチェックする
5. `flutter doctor`コマンドで案内される必要な依存関係のインストールを行う
6. iOSもしくはAndroidのシミュレータの準備を行う
7. エディタを設定する（例えば、Android StudioであればFlutterとDartのプラグインのインストールが必要）
8. File > New Flutter Projectで新しいプロジェクトの作成を行う。
9. Flutter applicationを選択してnextをクリックする。
10. Flutter SDK PathのフィールドにSDKの場所を指定していることを確認する。
11. プロジェクト名を入力してnextをクリックする。
12. finishをクリックする。



