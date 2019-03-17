```
import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        'Hello, world!',
        tettDirection: TextDirection.ltr,
      ),
    ),
  );
}
```
runApp()関数：与えられたウィジェットをウィジェットツリーのルートとして構成する
今回の場合はCenterウィジェットをルートとしたCenter、Textのウィジェットツリーのルートとして構成し、このルートウィジェットを画面全体に表示する。

ウィジェットがなんらかの状態を保持して、その状態に依存するような場合にはStatefulWidget、そうでない場合はStatelessWidgetのサブクラスを作成し、これを記述することでアプリを書く。
ウィジェットは主にbuild関数の実装がメインで、ウィジェットツリーにおけるより下位のウィジェットについて記述を行う。

