# SwiftUIでUndoManagerを使ったカスタムClearButtonの実装

## 概要

SwiftUIでは、`EnvironmentValues`から`UndoManager`を取得することができます。これを利用してTextFieldのカスタムなClear Buttonに`UndoManager`を紐付けると、シェイク操作で直前の削除を取り消すことができます。この仕組みにより、OSのClearButtonと同じ挙動を実現できます。

## 実装方法

### 1. UndoManagerの取得

`@Environment`プロパティラッパーを使用して、`UndoManager`を取得します。

```swift
@Environment(\.undoManager) var undoManager
```

### 2. カスタムClear Buttonの実装例

```swift
import SwiftUI

struct CustomTextFieldView: View {
    @State private var text: String = ""
    @Environment(\.undoManager) var undoManager
    
    var body: some View {
        HStack {
            TextField("入力してください", text: $text)
                .textFieldStyle(.roundedBorder)
            
            if !text.isEmpty {
                Button(action: clearText) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }
                .buttonStyle(.plain)
            }
        }
        .padding()
    }
    
    private func clearText() {
        // UndoManagerに操作を登録
        undoManager?.registerUndo(withTarget: self) { _ in
            self.text = text
        }
        
        // テキストをクリア
        text = ""
    }
}
```

### 3. シェイク操作での取り消し

上記のように`undoManager?.registerUndo`で操作を登録しておくと、デバイスをシェイクすることで「取り消す」アクションが表示され、直前の削除を復元できます。これはiOSの標準的なClear Buttonと同じ動作になります。

## ポイント

- `EnvironmentValues`から取得した`undoManager`は、SwiftUIのビューヒエラキー内で自動的に管理されます
- `registerUndo(withTarget:handler:)`を使用して、操作を登録します
- シェイク操作により、標準的なUndoダイアログが表示されます
- この実装により、ネイティブのUX体験を提供できます

## 公式ドキュメント

- [UndoManager - Apple Developer Documentation](https://developer.apple.com/documentation/foundation/undomanager)
- [EnvironmentValues.undoManager - Apple Developer Documentation](https://developer.apple.com/documentation/swiftui/environmentvalues/undomanager)
- [registerUndo(withTarget:handler:) - Apple Developer Documentation](https://developer.apple.com/documentation/foundation/undomanager/registerundo(withtarget:handler:))

## 参考

- UIKitでは、`UIResponder`の`undoManager`プロパティを通じて同様の機能にアクセスできます
- SwiftUIでは、環境値として提供されるため、より簡潔に実装できます
