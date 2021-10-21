#!/usr/bin/bash

OPTION=$1
case $OPTION in 
    -f) FILE=$2
        echo "File Name: $FILE"
        ;;
    -d) DIR=$2
        echo "Directory Name: $DIR"
        ;;
    *)
        echo "`basename $0`: usage : [-f : FILE] & [-d : DIR]"
        exit 1
        ;;
esac

# DON'T FORGET TO CHANGE THE MODE 
# $chmod +x useCase.sh
# $./useCase.sh
# OUTPUT:
# useCase.sh : usage : [-f : FILE] & [-d : DIR]
# $./useCase.sh -f index.html
# OUTPUT:
# File Name: index.html
# $./useCase.sh -d /home/Downloads
# OUTPUT:
# Directory Name: /home/Downloads
