# YOU DON'T HAVE TO WRITE THE NAME OF THE FILE .sh
# TO GET THE BASH PATH 
# $which bash (THE OUTPUT: /usr/bin/bash)
# THE CREATING OF THE FILE WITHOUT EXCUTION 
# $chmod +x fileName || $chmod 755 fileName
# THEN TO RUN THE SCRIPT
# $./fileName

# THE CONTENT __ VARIABLES IN BASH SCRIPT

#!/usr/bin/bash
myname="Fareeda Ragab"
echo $myname
echo myname
echo $hello # empty variable

# difference between referencing variable & command
# $ -> to prevent variable collision
ls="Hello World"
ls
echo $ls

# declaring variables is only tied with session
# once closing the window, session is gone with any declared variables

myage="22"

# difference between double & single quote
echo "Hello my name is $myname."
echo 'Hello my name is $myname.'
echo "I'm $myage years old."
# echo 'I\'m $myage years old.' # Error

# $(ls) is subshell -> allows to execute a command in the background
# and grab the output of that command and store it somewhere
files=$(ls)
echo "LS command: $files"

cwd=$(pwd)
echo "Your current working directory: $cwd"

now=$(date)
echo "System time & date: $now"

echo "Hello $myname"
# there's an environment inside your shell 
# the environment contains a bunch of variables
# basically, built-in variables
echo "Your username: $USER"

# my environment -> the same like environment in Angular framework
env=$(env)
echo "My Environment:"
echo $env

