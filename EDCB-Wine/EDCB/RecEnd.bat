#!/bin/bash
# $filename$がShift-JISで渡されるため注意。2バイト文字が入るとAmatsukazeServerが受け入れない


# RecEndから直接mono AmatsukazeAddTask.exeするのがうまくいかない。
# ファイル名のみ渡してCRONに実行してもらう。
# 書き込みするのにはパーミッションが必要なので注意
echo "piyo" > "/Amatsukaze/cron/queue/$FileName$.ts"

