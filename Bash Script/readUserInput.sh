#!/usr/bin/bash

# USING READ BUILT-IN FUNCTION TO READ A LINE FROM THE CONSOLE
# DON'T FORGET TO CHANGE THE MODE
# $chmod +x readUserInput.sh
# $./readUserInput.sh
 
# read <var>
# read -s <var>
# read -p "What u wanna add before read command" <var>
# read -s <var>  
# TAKE THE INPUT WITHOUT SHOWING WHAT THE USER TYPING
# read -a <var>
# READ THE INPUT AS ARRAY
# read -t <timeValSec> <var> 
# read -n <nChars> <var> 
# read -d <SpecificCharacter> <var> 
# TAKING INPUTS DOESN'T STOP UNTIL YOU PUT THE SPECIFIC CHARACTER

read NAME
echo "My Name is $NAME"

# ------------------------------

read -p "UserName: " USERNAME
read -sp "Password: " PASSWORD
echo
echo "UserName: $USERNAME  -  PassWord: $PASSWORD"

# -----------------------------

read -a ARR
LEN=${#ARR[@]}
for (( i=0 ; i<=$LEN ; i++ )) 
do
    if [ $i -eq $LEN ]; then
        break;
    fi
    echo "${ARR[i]} " 
done

# ------------------------------

read -t 5 NAMETIMEOUT
echo "The Name: $NAMETIMEOUT"

# ------------------------------

read -n 7 NAMESPECIFICNUMOFCHARS
echo "The Name: $NAMESPECIFICNUMOFCHARS"

# -----------------------------

read -d - NAMEWITHD
echo "HELLO: $NAMEWITHD"

# -----------------------------


