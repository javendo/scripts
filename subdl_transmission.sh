#!/bin/bash

if [ "$1" ]; then
  # Argument given: <MOVIES_DIR>
  MOVIES_DIR="$1"
  [ -d "$MOVIES_DIR" ] || { echo "Error: '$MOVIES_DIR' not a directory?!?"; exit 1; }
elif [ -n "$TR_TORRENT_DIR" -a -n "$TR_TORRENT_NAME" ]; then
  # No argument given, but we have found Transmission environment variables
  MOVIES_DIR="$TR_TORRENT_DIR/$TR_TORRENT_NAME"
fi

LANGUAGE_CODE="pob"

subdl --lang $LANGUAGE_CODE "$MOVIES_DIR"
exit $?