## contents.xcworkspacedataとは
xcworkspaceに入っているファイルで、workspaceを開いたときに左のペインに表示されるファイルやグループの階層構造が規定されている。
このファイルに記載されているFileRefかGroupがworkspaceに紐付けされる。
GroupとしてProjectやPackageが指定でき、それらが指定されているとworkspaceとして開いたときにそれらをビルドできるようになっている。

## Packageを紐づける時のちょっとしたトリック

```
<FileRef
  location = "group:BuildTools">
</FileRef>
```

のようにFileRefでPackageを紐づけると、Packageの依存解決などが自動で行われる。
これを避けたい場合、BuildToolsのグループそのものをFileRefで割り当てずに以下のようにcontainer:のGroupで手動で階層を作って中のファイルをそこに紐づけることで自動で依存解決されることを防ぐことができる。

```
<Group
  location = "container:"
  name = "BuildTools">
    <FileRef
      location = "group:BuildTools/Package.swift">
    </FileRef>
    <FileRef
      location = "group:BuildTools/Package.resolved">
    </FileRef>
   </Group>
```

特に開発しているアプリとBuildToolsのパッケージでライブラリの依存関係の干渉を避けたいなどのケースで有効。
