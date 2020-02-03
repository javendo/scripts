#!/bin/sh

arg="$@"

for i in $arg
do
    vfile=`echo ${i%\.*}`
    ffmpeg -i "$i" "$vfile.avi"
done
