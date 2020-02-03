#!/bin/sh
vfile=`echo ${1%\.*}`

ffmpeg -i "$1" -sameq "$vfile.avi"
