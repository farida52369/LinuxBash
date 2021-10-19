
# -eq  ||  ==
# -ne  ||  !=
# -gt  ||  >
# -lt  ||  <
# -ge  ||  >=
# -le  ||  <=

#!/usr/bin/bash

VAR1=5
VAR2=10

if [ $VAR1 -gt $VAR2 ]
then
echo "$VAR1 greater than $VAR2"
elif [ $VAR1 -lt $VAR2 ]
then
echo "$VAR1 less than $VAR2"
else
echo "$VAR1 equal $VAR2"
fi

# BE CAREFUL FOR THE BRACKETS [ $VAR1 -gt $VAR2 ] NOT [$VAR1 -gt $VAR2]
