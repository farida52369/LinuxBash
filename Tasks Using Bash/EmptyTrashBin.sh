#!/bin/bash

# CHANGE FILE MODE 
# $chmod +x EmptyTrashBin.sh
# $./EmptyTrashBin.sh
# ----------
# THE OUTPUT:
# Please Enter a path to your Trash Bin:
# WRITE: /home/{user_name}/.local/share/Trash/
# HIT ENTER 
# A FILE NAMED "binPath.db" WILL BE CREATED AND WOULD BE TREATED AS A DATA BASE FOR FUTURE PROCESS
# RUN THE SCRIPT AGAIN
# $./EmptyTrashBin.sh
# ----------
# THE OUTPUT:
# THE PATH:
# /home/{user_name}/.local/share/Trash/
# NOW THE TRASH BIN IS CLEANED AUTOMATICALLY.

PATH_TO_TRASH_BIN=

if test -f "./binPath.db";
then
    read -r PATH_TO_TRASH_BIN < ./binPath.db
    echo "The Path: "
    echo $PATH_TO_TRASH_BIN
    rm -rf $PATH_TO_TRASH_BIN/files/*
    rm -rf $PATH_TO_TRASH_BIN/info/*

else
    echo "Please Enter a path to your Trash Bin:"
    read PATH_TO_TRASH_BIN

    if [ -d $PATH_TO_TRASH_BIN ];
    then 
        echo $PATH_TO_TRASH_BIN > binPath.db
    else 
        echo "The Path Doesn't exist!"
    fi    
fi 

# /home/{user_name}/.local/share/Trash/files/*
# /home/{user_name}/.local/share/Trash/info/*

# THE END :))
