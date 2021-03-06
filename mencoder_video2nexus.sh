#!/bin/sh
vfile=`echo ${1%\.*}`
mencoder -of lavf -lavfopts format=mp4 -vf dsize=800:480:0,scale=0:0,expand=800:480:-1::::,harddup -sws 9 -ovc x264 -x264encopts crf=24:force_cfr:bframes=0:nocabac:no8x8dct:global_header -oac faac -faacopts br=128:mpeg=4:object=2:raw -af volnorm=1 -channels 2 -srate 44100 -delay 0.3 "$1" -o "$vfile.mp4"
