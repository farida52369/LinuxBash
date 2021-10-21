#!/usr/bin/bash

echo "Script Name: $0" 
echo "User Name: $1"
echo "Age: $2"
echo "Full Name: $3"

# PUT IN THE SHELL
# $./posParameters.sh Fareeeda 21 "Fareeda Ragab"
# OUTPUT:
# Script Name: ./posParameters.sh
# User Name: Fareeda
# Age: 21
# Full Name: Fareeda Ragab

# TO READ ALL THE ARGUMENTS 
# USING FOR LOOP TO PRINT THE ARGUMENTS ONE BY ONE
for FILE in "$@"
do
    echo "$FILE"
done

# Double, Single, Without Quotes in echo
# TO PRINT ALL THE ARGUMENTS 
echo $@
echo "$@"
# TO PRINT THE NUM OF ARGUMENTS
echo $#  
# GIVE A SINGLE WORD AS OPPOSED TO A LIST OF ARGUMENTS
echo $*




