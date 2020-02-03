#!/bin/sh

arg="$@"

for i in $arg
do
    vfile=`echo ${i%\.*}`
    3gp2mp4.sh "$i"
    #rm -rf "$i" "$vfile.srt"
done

