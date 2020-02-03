#!/bin/sh

vfile=`echo ${1%\.*}`
 
ffmpeg -i "$1" -strict experimental -vcodec libx264 -acodec aac -ar 48000 -ac 2 -y "$vfile.mp4"
