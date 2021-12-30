#!/bin/bash

# CHANGE FILE MODE 
# $chmod +x ipsweep.sh
# RUN THE SCRIPT
# $./ipsweep.sh <var1> <var2>
# THE SCRIPT GET THE LIST OF IP ADDRESSES "<var1>.guessfrom(1:254).<var2>
# GREP -> GET THE LINES THAT HAVE THE WORD AFTER PROVIDED
# CUT -> BASCIALLY WORK LIKE SPLIT IN ANY PROGRAMMING LANGUAGE
# (-d " ")  -> DEKIMITER " " 
# (-f 4) -> FIELD FOUR __ CONSIDER CUT SPLIT THE LINE TO ARRAY AND WE WANT FIELD NUM 4
# FOR EXAMPLE: HELLO WORLD WE DONE HERE!
# $cut -d " " -f 4  # [HELLO, WORLD, WE, DONE, HERE!] OUTPUT: DONE
# TR -> TRANSLATE
# FOR EXAMPLE: HELLO:
# $tr -d ":"  # OUTPUT: HELLO


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
# THE END :))
