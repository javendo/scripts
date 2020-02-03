#!/bin/bash 

#youtube-dl --max-quality=22 -o $2.flv $1
youtube-dl -o $2 $1
#ffmpeg -i $2.mkv -s 800x480 -vcodec libx264 -vpre nexus1 -b 240000 -acodec libfaac -ac 2 -ar 44000 -ab 128000 -aspect 16:9 $2.mp4
mencoder $2.mkv -oac mp3lame -lameopts q=0:aq=0 -passlogfile pass1.log -ovc xvid -xvidencopts fixed_quant=4:autoaspect -o $2.avi
#rm -rf $2.mkv
