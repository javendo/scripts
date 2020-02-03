#!/bin/sh
vfile=`echo ${1%\.*}`

mencoder "$1" -oac mp3lame -lameopts q=0:aq=0 -passlogfile pass1.log -ovc xvid -xvidencopts fixed_quant=4:autoaspect -o "$vfile.avi"
