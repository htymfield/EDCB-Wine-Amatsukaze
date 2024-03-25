#!/bin/bash
# $filename$がShift-JISで渡されるため注意。2バイト文字が入るとAmatsukazeServerが受け入れない

ip=192.168.11.20
port=32768
remote_dir="\\\\NASBI\\DockerData\\EDCB-Wine\\TV-Record"
preset="auto"
out_dir="\\\\NASBI\\DockerData\\EDCB-Wine\\TV-Record\\encoded"


queue_dir="/Amatsukaze/cron/queue/*"
files=`find $queue_dir -maxdepth 0 -type f -name *.ts`

for file in $files
do
    mono /Amatsukaze/exe_files/AmatsukazeAddTask.exe \
        -f "$file" \
        -ip $ip -p $port \
        --remote-dir $remote_dir \
        -s $preset --no-move \
        -o $out_dir >> /Amatsukaze/cron/queue/current.txt
    rm $file
done
