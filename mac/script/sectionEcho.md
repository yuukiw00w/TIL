# スクリプトの目的
分かりやすく項目の名前を区切りっぽく表示

# スクリプト
```
function sectionEcho() {
  printf "\n"
  printf "\033[32;1m--------------------- $1 ---------------------\033[0m\n"
}
```

# 使い方
```
sectionEcho "check Cocoapods version"
```
