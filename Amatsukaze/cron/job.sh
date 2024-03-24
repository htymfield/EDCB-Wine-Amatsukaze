#!/bin/bash
# $filename$がShift-JISで渡されるため注意。2バイト文字が入るとAmatsukazeServerが受け入れない

date > /Amatsukaze/cron/queue/current.txt

# mono /Amatsukaze/exe_files/AmatsukazeAddTask.exe \
#    -f "$FileName$.ts" \
#    -ip 192.168.11.20 -p 32768 \
#    --remote-dir "\\\\NASBI\\DockerData\\EDCB-Wine\\TV-Record" \
#    -s "auto" --no-move \
#    -o "\\\\NASBI\\DockerData\\EDCB-Wine\\TV-Record\\encoded" 
