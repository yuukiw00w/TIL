# Xcode内のAI向けドキュメントと Agent Skills 化メモ

## 1. Xcode内の追加ドキュメントの場所
Xcode には、以下のパスに AI 向けの追加ドキュメントが含まれています。

```bash
/Applications/Xcode.app/Contents/PlugIns/IDEIntelligenceChat.framework/Versions/A/Resources/AdditionalDocumentation
```

このディレクトリ配下にある内容を確認し、必要な資料を取り出して Agent Skills 化できます。

---

## 2. 取り出し（エクスポート）の基本例
まずはローカルにコピーして、内容を確認できる状態にします。

```bash
mkdir -p ~/tmp/xcode-ai-docs
cp -R \
  /Applications/Xcode.app/Contents/PlugIns/IDEIntelligenceChat.framework/Versions/A/Resources/AdditionalDocumentation \
  ~/tmp/xcode-ai-docs/
```

内容確認の例:

```bash
find ~/tmp/xcode-ai-docs/AdditionalDocumentation -maxdepth 3 -type f
```

---

## 3. Agent Skills 化の流れ（`swiftui-skills` 利用）
以下のリポジトリには、Xcode 側のドキュメントを Agent Skills として扱うための仕組みがあります。

- https://github.com/ameyalambat128/swiftui-skills

想定フロー:

1. `swiftui-skills` をクローン
2. README の手順に従って、`AdditionalDocumentation` の内容を変換/整理
3. 生成された Skills（`SKILL.md` など）を Codex/Agent の skills ディレクトリへ配置

例（コマンドひな形）:

```bash
git clone https://github.com/ameyalambat128/swiftui-skills.git
cd swiftui-skills
# 以降は README の手順に沿って実行
```

> 補足: 利用環境やリポジトリの更新により手順が変わる可能性があるため、
> 実行時は必ず `swiftui-skills` 側の README / スクリプトを優先してください。

