#!/bin/sh

echo "Aplying route script"
echo "########....."
route add -net 192.168.190.0 netmask 255.255.255.0 gw 192.168.160.1
