#!/bin/sh

arg="$@"

for i in $arg
do
    vfile=`echo ${i%\.*}`
    video2mp4st.sh "$i"
    #rm -rf "$i" "$vfile.srt"
done

