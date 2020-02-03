#!/bin/sh

vfile=`echo ${1%\.*}`
 
ffmpeg -i "$vfile.mp4" -strict -2 -vf "transpose=1" "$vfile-1.mp4"
