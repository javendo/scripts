#!/bin/sh

vfile=`echo ${1%\.*}`
 
ffmpeg -i "$1" -c:v libx264 -acodec aac -strict -2 -b:a 256k -vf subtitles="$vfile.srt" "$vfile.mp4"
