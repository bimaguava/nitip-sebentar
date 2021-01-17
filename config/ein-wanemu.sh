#!/bin/sh

echo "APPLYING ROUTE SCRIPT!!!"
echo "############### ............."
echo "########################## ............."

route add -net 192.168.190.0 netmask 255.255.255.0 gateway 10.0.0.2
