#!/bin/sh

case $1 in
cropdetect)
	mplayer dvd://1 -chapter 3 -vf cropdetect
	;;
*)
	mencoder dvd://1 -vf crop=$1,scale=704:304 -ovc xvid -xvidencopts bvhq=1:chroma_opt:quant_type=mpeg:bitrate=658:pass=1 -oac copy -o /dev/null
	mencoder dvd://1 -vf crop=$1,scale=704:304 -ovc xvid -xvidencopts bvhq=1:chroma_opt:quant_type=mpeg:bitrate=658:pass=2 -alang en -oac mp3lame -lameopts br=96:cbr:vol=6 -o $2
	;;
esac

