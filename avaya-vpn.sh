#!/bin/sh

[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@" $(whoami)

BASEDIR=$(dirname $0)

read -p "Security code: " TOKEN
read -p "Region (emea/apac/[na]): " REGION
REGION=${REGION:-na}

if [ "$UID" -ne "0" ] ; then
   echo "You must be root to do that!"
   exit 1
fi

expect -f $BASEDIR/openconnect-expect.exp abadin 726826${TOKEN} ${REGION}
