#!/bin/sh

#mencoder dvd://$1 -oac mp3lame -aid $2 -lameopts q=0:aq=0 -passlogfile pass1.log -ovc xvid -xvidencopts pass=2:autoaspect:bitrate=-1500000 -o $3.avi
mencoder dvd://$1 -oac mp3lame -alang $2 -slang pt -lameopts q=0:aq=0 -passlogfile pass1.log -ovc xvid -xvidencopts fixed_quant=4:autoaspect -o $3.avi
