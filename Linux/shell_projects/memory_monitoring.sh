#!/bin/bash

## We are writing the script for monitoring the momory
# free : Allows you to check for memory RAM on your system or linux system,
# -mt: total amount

# grep : Grep, short "short for “global regular expression print" searches for PATTERNS in each FILE.

#awk :  Allows users to process and manipulate data and produce formatted reports
THRSHOLD_MEMORY=5000
FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
echo "The Remaining memory space is $FREE_SPACE"


if [[ $FREE_SPACE -le $THRSHOLD_MEMORY ]]
then
        echo "Warning : RAM is runing low with - $FREE_SPACE M"
else
        echo "RAM is running smoothly - $FREE_SPACE M"     
fi

# Upgradation options: Email alert