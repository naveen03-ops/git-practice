#!/bin/bash

USERID=$(id -u)
#echo "USER ID is: $USERID"

VALIDATE(){
    if [ $1 -ne 0 ]
    then    
        echo "$2 is ..FAILED"
        exit 1
    else
        echo "$2 is ..SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "please run this script with root privileges"
    exit 1
fi

dnf list installed git

VALIDATE $? "Listing git"



if [ $? -ne 0 ]
then
    echo "Git is not installed,going to install it.."
    dnf install git -y
    VALIDATE $? "Installing Git"

#     if [ $? -ne 0 ]
#     then
#     echo "Git installation is not success..check it"
#     exit 1
#     else "git installation is success"
# fi
else
    echo "Git is already installed,nothing to do"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "mysql is not installed,going to install it.."
    dnf install mysql -y
#     
    VALIDATE $? "Installing Mysql"
else
    echo "mysql is already installed,nothing to do"
fi