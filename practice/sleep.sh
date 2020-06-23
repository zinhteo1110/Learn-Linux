#!/bin/bash
# procesing delays in a script
# ==> follow the ebook "Linux shell scripting cookbook, 2nd Edition.pdf - page 35"

#Filename: sleep.sh
#===================================describle==========================================
# tput sc ==> to store the cursor position.
# tput rc ==> to restore the cursor position.
#====================================================================================== 
echo -n Count:
tput 

count=0;
while true;
do
    if [ $count -lt 40 ];
    then
        let count++;
        sleep 1;
        tput rc
        tput ed
        echo -n $count;
    else exit 0;
    fi 
done

