#!/bin/bash

MODO=static
DEV=$1
IP=192.168.0.1
NT=255.255.255.0
NW=192.168.0.0
BR=192.168.0.255
GT=192.168.0.253

echo "source /etc/network/interfaces.d/*

auto lo
iface lo inet loopback

" > /tmp/confderede

if [ $MODO == "dhcp" ]; then
echo "
auto $DEV
allow-hotplug $DEV
iface $DEV inet dhcp
" >> /tmp/confderede
fi

if [ $MODO == "static" ]; then
echo "
auto $DEV
allow-hotplug $DEV
iface $DEV inet static
	address $IP
	netmask $NT
	network $NW
	broadcast $BR
	gateway $GT
" >> /tmp/confderede
fi
