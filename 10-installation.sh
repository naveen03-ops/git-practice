#!/bin/bash

USERID=$(id -u)
#echo "USER ID is: $USERID"

if [ $USERID -ne 0 ]
then
echo "please run this script with root privileges"
exit 1
fi

dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git is not installed,going to install it.."
    dnf install git -y
    if [ $? -ne 0 ]
    then
    echo "Git installation is not success..check it"
    exit 1
    else "git installation is success"
fi
else
    echo "Git is already installed,nothing to do"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "mysql is not installed,going to install it.."
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
    echo "mysql installation is not success..check it"
    exit 1
    else "mysql installation is success"
fi
else
    echo "mysql is already installed,nothing to do"
fi