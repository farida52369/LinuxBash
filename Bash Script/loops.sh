#!/usr/bin/bash

# FIRST TYPE
for i in 1 2 3 4
do 
    echo "Current: $i"
done

# SECOND TYPE
# IF THE NUM OF ITERATION LONG
for i in {5..10}
do
    echo "Current: $i"
done

# PUTTING CONDITION
for (( i=0 ; i<10 ; i++ ))
do 
    echo "Hello #$i"
done

# PUTTING CONDITION AND SPECIFIC NUM OF STEPS
for i in {1..10..2}
do 
    if [[ $i -eq 9 ]];
    then
        break;
    fi
    echo "#$i"
done


# CONTINUE
for (( i=0 ; i <= 30 ; i+=5 ))
do 
    if [[ $i -eq 15 ]];
    then 
        continue;
    fi
    echo "#$i is appearing NOW"
done

# __
