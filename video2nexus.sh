#!/bin/sh
vfile=`echo ${1%\.*}`
#ffmpeg -i "$1" -s 800x480 -vcodec mpeg4 -acodec libfaac -ac 2 -ar 16000 -r 13 -ab 32000 -aspect 16:9 "$vfile.mp4"
#https://develop.participatoryculture.org/trac/democracy/wiki/ConversionMatrix
ffmpeg -i "$1" -s 800x480 -vcodec mpeg4 -acodec aac -ac 1 -ar 16000 -r 13 -ab 32000 -aspect 16:9 "$vfile.mp4"
