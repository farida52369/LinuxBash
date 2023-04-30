# YOU DON'T HAVE TO WRITE THE NAME OF THE FILE .sh
# TO GET THE BASH PATH
# $which bash (THE OUTPUT: /usr/bin/bash)
# THE CREATING OF THE FILE WITHOUT EXCUTION COMMAND
# $chmod +x fileName || $chmod 755 fileName
# THEN TO RUN THE SCRIPT
# $./fileName

# THE CONTENT __ IF STATEMENT IN BASH SCRIPT

#!/usr/bin/bash

mynum=200

# == -> the same as -eq
# !  -> not equal
# != -> the same as -ne
# >  -> the same as -gt
# 
if [ $mynum == 200 ]
then 
	echo "The num equals 200."
else
	echo "The num doesn't equal 200."
fi

# ---------------------------------------------------------------

# check the presence of files on the file system
# -f -> file
if [ -f ~/ifStatement ]
then
	echo "The files exists."
else
	echo "The file doesn't exist."
fi

# check the presence of directories on the file system
# -d -> directory
if [ -d ~/Documents ]
then 
	echo "The directory exists."
else
	echo "The directory doesn't exist."
fi

# ---------------------------------------------------------------

# installing htop using script
# check the existing of the htop ..
# if yes, inform the user
# if not, install it
# then run it ...
command=/usr/bin/htop

if [ -f $command ]
then
	echo "$command is available, Let's run it .."
else
	echo "$command is NOT available, install it .."
	sudo apt update && sudo apt install -y htop
fi
$command

# ---------------------------------------------------------------

c=htop

# [] are used in the if statement if we're using the test command
# even without mentioning it `$man test`
# instead, here we're using a normal command
# `$command -v $c` -> checking the existence of $c
if command -v $c
then 
	echo "$c is available, Let's run it .."
else
	echo "$c is NOT available, Install it .."
	sudo apt update && sudo apt install -y $c
fi
$c

# ____
