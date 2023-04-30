# YOU DON'T HAVE TO WRITE THE NAME OF THE FILE .sh
# TO GET THE BASH PATH
# $which bash (THE OUTPUT: /usr/bin/bash)
# THE CREATING OF THE FILE WITHOUT EXCUTION COMMAND
# $chmod +x fileName || $chmod 755 fileName
# THEN TO RUN THE SCRIPT
# $./fileName

# THE CONTENT __ WHILE LOOPS IN BASH SCRIPT

#!/usr/bin/bash

myvar=1

while [ $myvar -le 10 ]
do
	echo $myvar
	myvar=$(($myvar + 1))
	sleep 0.5
done


while [ -f ~/myFile ]
do
	echo "At $(date), the file exists."
	sleep 0.5
done

echo "At $(date), The file no longer exists."


# ____
