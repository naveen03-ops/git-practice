#!/bin/bash

USERID=$(id -u)
#echo "USER ID is: $USERID"

if [ $USERID -ne 0 ]
then
echo "please run this script with root privileges"
exit 1
fi

dnf install git -y