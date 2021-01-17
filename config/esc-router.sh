#!/bin/sh

echo "APPLYING ROUTE SCRIPT!!!"
echo "########### ..............."
echo "############################ ........."

route del default
route add -net 0.0.0.0 netmask 0.0.0.0 gateway 10.10.10.1

route add -net 192.168.1.0 netmask 255.255.255.0 gateway 10.10.10.1
route add -net 192.168.0.0 netmask 255.255.255.0 gateway 10.10.10.1


