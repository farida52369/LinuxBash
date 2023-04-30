# YOU DON'T HAVE TO WRITE THE NAME OF THE FILE .sh
# TO GET THE BASH PATH
# $which bash (THE OUTPUT: /usr/bin/bash)
# THE CREATING OF THE FILE WITHOUT EXCUTION COMMAND
# $chmod +x fileName || $chmod 755 fileName
# THEN TO RUN THE SCRIPT
# $./fileName

# THE CONTENT __ BASIC MATH IN BASH SCRIPT

#!/usr/bin/bash
num1=100
num2=150
num3=4

# $(()) -> tells the bash to evaluate the expression 
# inside the parentheses and return the result
num4=$(($num1 + $num2))
num5=$(($num1 - $num3))
num6=$(($num1 / $num3))
num7=$(($num1 * $num3))

# addition
echo "addition of $num1 + $num2: "
echo $num4
expr $num1 + $num2

# subtraction
echo "subtraction of $num1 - $num3: "
echo $num5
expr $num1 - $num3

# division
echo "division of $num1 / $num3: "
echo $num6
expr $num1 / $num3

# multiplication
echo "multiplication of $num1 * $num3: "
echo $num7
expr $num1 \* $num3

# ___
