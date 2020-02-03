#!/bin/sh

#systemctl status iptables

echo 1 > /proc/sys/net/ipv4/ip_forward

iptables -A POSTROUTING -t nat -s 192.168.1.0/24 -o tun0 -j MASQUERADE
#iptables -A POSTROUTING -t nat -s 192.168.1.0/24 -o wlp3s0 -j MASQUERADE

#iptables --list-rules -t nat
#iptables --list-rules
#iptables -nvL --line-numbers