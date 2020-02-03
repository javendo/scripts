#!/bin/sh
vfile=`echo ${1%\.*}`

mencoder "$1" -channels 6 -ovc xvid -xvidencopts fixed_quant=4 -vf harddup -oac copy -o "$vfile.avi"
