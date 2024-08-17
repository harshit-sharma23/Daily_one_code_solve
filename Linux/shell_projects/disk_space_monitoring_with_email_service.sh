#!/bin/bash


##Monitoring free DISK spand and Sent an alert EMAIN
#df : Short(Disk Free), displays information about total space and available space on a file system
#-H : Human readable mode

#tr :tr, which stands for translate. As the name implies, the tr command is used to translate, squeeze, and delete characters from standard input
#-d : delete

TO="Harshit.89659@gmail.com"
FILE_SYSTEM_UTILIZATION=$(df -H | grep "sda2" | awk '{print $5}' | tr -d %)
echo "Current File system space is ${FILE_SYSTEM_UTILIZATION}"

if [[ $FILE_SYSTEM_UTILIZATION -ge 80 ]]
then
        echo "Warning : Disk Space is low - $FILE_SYSTEM_UTILIZATION % !!" | mail -s "Disk Space Alert" $TO
else
        echo "All Good!!"
fi