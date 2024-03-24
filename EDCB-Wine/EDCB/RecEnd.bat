#!/bin/bash
# $filename$がShift-JISで渡されるため注意。2バイト文字が入るとAmatsukazeServerが受け入れない


# RecEndから直接mono AmatsukazeAddTask.exeするのがうまくいかない。
# ファイル名のみ渡してCRONに実行してもらう。
# 親含め、/Amatsukaze/cron/queueのパーミッションに注意
echo "$FileName$.ts" &> "/Amatsukaze/cron/queue/$FileName$.ts.dat"

