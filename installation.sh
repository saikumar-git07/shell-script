#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
     echo "please run this scipt with root access"
     exit 1
else
     echo "you are a super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]

then
    echo "mysql installation is failure"
else 
    echo "mysql installation is success"
fi