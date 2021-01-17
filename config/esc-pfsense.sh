#!/bin/sh

echo "APLYING ROUTE SCRIPT!!!"
echo "############## ...................."
echo "######################## ............."

route add -net 192.168.0.0/24 192.168.1.1
route del default
route add -net 0.0.0.0/0 192.168.1.1

route add -net 192.168.195.0/24 10.10.10.2
route add -net 192.168.175.0/24 10.10.10.2
