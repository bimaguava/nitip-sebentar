#!/bin/sh

echo "APLYING ROUTE SCRIPT!!!"
echo "####### .........................."
echo "########## ........................."

route add -net 10.10.10.0 netmask 255.255.255.252 gateway 192.168.1.6
route add -net 192.168.195.0 netmask 255.255.255.0 gateway 192.168.1.6
route add -net 192.168.175.0 netmask 255.255.255.0 gateway 192.168.1.6

echo "DONE!!!"
