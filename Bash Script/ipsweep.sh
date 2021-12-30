#!/bin/bash

if [ "$1" == "" ] || [ "$2" == "" ]
then 
    echo "You forgot an IP address!"
    echo "Syntax: ./ipsweep.sh 192.168 1"

else
for ip in `seq 1 254`; do
    ping -c 1 $1.$ip.$2 | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done    
fi

# ./ipsweep.sh 192.168 1
