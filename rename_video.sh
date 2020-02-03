#!/bin/bash

PATTERN="$1"
for f in $PATTERN
do
    #if [[ -z "$EXTENSION" ]]; then
	#    EXTENSION=`echo $f | awk -F . '{print tolower($0)}'`
    #fi
    #FILE=`echo $f | awk -F . '{print $1}'`
    EXTENSION=`echo ${f:(-3)} | awk '{print tolower($0)}'`
    VIDEO_NAME=`ffprobe 2> /dev/null -show_format $f | grep TAG:creation_time= | cut -d '=' -f 2 | sed 's/[:-]//g' | cut -d '.' -f 1 | sed 's/T/-/' | awk -F . '{print $0}'`
    FINAL_NAME=$VIDEO_NAME.$EXTENSION
    if [[ ! -z "$FINAL_NAME" ]]; then
	echo "$f -> $FINAL_NAME"
	mv $f $FINAL_NAME
    fi
done

