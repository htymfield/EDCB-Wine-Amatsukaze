# EDCB-Wine-Amatsukaze

[EDCB-Wine](https://github.com/tsukumijima/EDCB-Wine/tree/master)の録画終了時に[AmatsukazeAddTask.exe](https://github.com/nekopanda/Amatsukaze)を実行するためのDocker Compose構成一式です。

本家EDCB-Wineからの主な変更点は以下の通りです。

* `/EDCB-Wine/EDCB/RecEnd.bat`を追加しました。
録画終了時にデフォルトで呼ばれます。後述する`/Amatsukaze/cron/queue`に録画したファイル名をプッシュするのが役割です。

* `/Amatsukaze`を追加しました。
  * AmatsukazeServerにタスクを積むための実行ファイル`AmatsukazeAddTask.exe`と実行に必要なDLLを`/Amatsukaze/exe_files`に配置してあります。
  * `/Amatsukaze/cron/queue`にプッシュされているファイル名を取り出し、`AmatsukazeAddTask.exe`を呼び出すcronを登録してあります。
  * `AmatsukazeAddTask.exe`のパラメータは`/Amatsukaze/cron/job.sh`に直接記述してください。


## ややこいことをしている経緯

`RecEnd.bat`から直接`AmatsukazeAddTask.exe`を呼ぶのが一番シンプルな形ですが、なんかうまくいきませんでした。うまいやり方がわかったら教えてください。
