#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is....FAILURE"
        exit 1
        echo "$2 is....SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1
else 
    echo "you are super user"
fi

dnf install mysql -y 
VALIDATE $?  "installing MYSQL"

dnf install git -y
VALIDATE $?  "installing GIT"

echo "is script is proceeding?"
