#!/bin/bash

printf "Move file to Downloads, then enter the file name (example.deb): "
read fileName

sudo dpkg -i /home/randomuser/Downloads/$fileName
sudo apt install -f

if [ $? -eq 0 ]
then
    printf "Install Successful ✅"
else
    printf "Install Failed ❌"
fi

