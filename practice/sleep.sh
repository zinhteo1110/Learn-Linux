#!/bin/bash
# procesing delays in a script
# ==> follow the ebook "Linux shell scripting cookbook, 2nd Edition.pdf - page 35"

#Filename: sleep.sh

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

