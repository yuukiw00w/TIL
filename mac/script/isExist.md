# スクリプトの目的
該当のコマンドが存在するかどうか

# スクリプト
```
function isExist() {
  type $1 >/dev/null 2>&1
}
```

# 使い方
以下のようにチェックしたいコマンドを引数に入れる
```
if ! isExist brew; then 
  sectionEcho "install homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
```
