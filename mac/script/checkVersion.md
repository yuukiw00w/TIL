# スクリプトの目的
バージョンの整合性チェック

# スクリプト
```
function checkVersion() {
  if [ $1 != $2 ]; then
    printf "\033[31;1m$3 is not latest version（current: $1 , latest: $2 ）\033[0m\n"
    printf "\033[33;1m$4\033[0m\n"
  else
    printf "\033[32;1m$3 is up to date（Ver: $1）\033[0m\n"
  fi
}
```

# 使い方
以下のように引数に現在のバージョン、最新のバージョン、バージョンチェックするもの、最新じゃない時のメッセージを引数に入れる
```
current_ver=`bundle exec pod --version`
latest_ver=`gem list cocoapods --remote 2>/dev/null | head -n 1 | grep -oe '\d\.\d\{1,\}\.\d\{1,\}'`
checkVersion ${current_ver} ${latest_ver} "Cocoapods" "'Gemfile'を編集しVerを最新にしてPull Requestしてください"
```
