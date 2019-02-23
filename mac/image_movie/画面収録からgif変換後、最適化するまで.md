* QuickTime Playerでファイル＞新規画面収録から任意の画面を収録
* 名前を付けて保存
* できたmovファイルをffmpegを利用してgifに変換
* ffmpegは`brew install ffmpeg`でインストール可能
* コマンドは`ffmpeg -i input_file.mov -r frame_rate(10, 24, etc) output_file.gif`から対応
* https://ezgif.com/optimze でgifの最適化が可能なので、必要に応じて最適化する
