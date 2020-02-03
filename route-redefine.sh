#! /usr/bin/env bash
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

WIRELESS_INTERFACE=wlp3s0
TUNNEL_INTERFACE=tun0
GATEWAY=$(netstat -nr inet | grep -E '^0.0.0.0' | grep $WIRELESS_INTERFACE | awk '{print $2}')

echo "Resetting routes with gateway => $GATEWAY"
echo 1
ip route del default dev $WIRELESS_INTERFACE
echo 2
ip route del default dev $TUNNEL_INTERFACE
echo 3
ip route add default via $GATEWAY dev $WIRELESS_INTERFACE
#route add -net default dev $GATEWAY
echo 4
for subnet in 10.130.0.0/16 135.20.0.0/16
do
  ip route add $subnet via 135.105.97.102 dev $TUNNEL_INTERFACE metric 1
done
