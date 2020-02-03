#!/bin/sh

arg="$@"

for i in $arg
do
    vfile=`echo ${i%\.*}`
    video2mp4.sh "$i"
    #rm -rf "$i" "$vfile.srt"
done

