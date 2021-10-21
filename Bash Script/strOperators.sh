#!/usr/bin/bash

# STRINGS OPERATORS AND COMPARISONS
# DON'T FORGET TO CHANGE MODE
# $chmod +x strOperators.sh
# $./strOperators.sh

# EQUALITY OPERATORS 
# =   with []
# ==  with [[]]

# INEQUALITY OPERATORS
# != 

# IN ALPHABETICAL ORDER (LEXICOGRAPHICAL)
# > 
# <

# TO CHECK THE EXISTENCE OF SUBSTRING 
# <VAR1> =~ .*<VAR2>.*
# <VAR1> ==  *"<VAR2>"*

# CHECK IF A STRING IS EMPTY OR NOT
# -z  returns true if the string is empty
# -n  returns true of the string is non-empty

VAR1="String"
VAR2="String"

if [ $VAR1 = $VAR2 ];
then
    echo "EQUAL."
else
    echo "NOT EQUAL!"
fi

# ------------------------------
 
[[ $VAR1 == $VAR2 ]] && echo "Equal." || echo "Not Equal!"

# -------------------------------

VAR5="Hello"
VAR6="Ubuntu"
if [[ $VAR5 > $VAR6 ]]; then
    echo "$VAR5 is Lexicographically greater than $VAR6"
else 
    echo "$VAR6 is Lexicographically greater than $VAR5"
fi

# ------------------------------

VAR3="Fareeda Ragab is Student in CSED"
if [[ $VAR3 == *"CSED"* ]]; then
    echo "Yes, CSED exists"
else
    echo "No, CSED doesn't exist!"
fi

# ------------------------------

if [[ $VAR3 =~ .*CSED.* ]]; then
    echo "Yes, CSED exists"
else
    echo "No, CSED doesn't exist!"
fi

# ------------------------------

VAR4=""
if [[ -z $VAR4 ]]; then
    echo "The String EMPTY"
else 
    echo "The String is Not EMPTY!"
fi

# ------------------------------

if [[ -n $VAR1 ]]; then
    echo "The String is Not EMPTY"
else 
    echo "The String EMPTY!"
fi

# :)
