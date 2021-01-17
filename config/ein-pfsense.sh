#!/bin/sh

echo "APPLYING ROUTE SCRIPT!!!"
echo "###################### ..............."

route del default
route add -net 0.0.0.0/0 10.0.0.1
route add -net 192.168.160.0/24 10.0.0.1

route add -net 192.168.137.0/24 10.0.0.1
route add -net 192.168.1.0/24 10.0.0.1
route add -net 192.168.0.0/24 10.0.0.1
