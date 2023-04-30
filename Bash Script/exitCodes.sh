# YOU DON'T HAVE TO WRITE THE NAME OF THE FILE .sh
# TO GET THE BASH PATH
# $which bash (THE OUTPUT: /usr/bin/bash)
# THE CREATING OF THE FILE WITHOUT EXCUTION COMMAND
# $chmod +x fileName || $chmod 755 fileName
# THEN TO RUN THE SCRIPT
# $./fileName

# THE CONTENT __ EXIT CODES IN BASH SCRIPT

#!/usr/bin/bash

ls -l /e
echo $? # Error: the output will be 2

ls -l
echo $? # the output will be 0

# remove then install htop to see the exit code
sudo apt remove htop
package=htop

# >>: if the file doesn't exist and append to it ..
sudo apt-get install $package >>package_install_results.log

if [ $? -eq 0 ]; then
    echo "The installation of $package was successful."
    echo "The new command is available here:"
    which $package
else
    echo "$package failed to install."
fi

# ----------------------------------------------------
directory=/etcc

if [ -d $directory ]; then
    # echo $? # output: 0
    echo "The directory $directory exits."
else
    # echo $? # output: 1
    echo "The directory $directory doesn't exist."
fi

# the exit code here will be: 0
# as the last command executed was echo
# and it executed successfully ...
# so to solve the problem is manually setting our exit code
# the modified version is down ..
echo "The exit code for this script run is $?"

# ----------------------------------------------------
# manually, creating exit code ..
# exit 199 # echo $? will be 199

# sudo apt install notexist
# exit 0 # echo $? will be 0

if [ -d $directory ]; then
    echo "The directory $directory exists."
    exit 0
else
    echo "The directory $directory doesn't exist."
    exit 199
fi

echo "We won't come here, HEHEHE ..."

# ___
