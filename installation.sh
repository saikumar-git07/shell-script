#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
     ech0 "please run this scipt with root access"
     exit 1
else
     echo "you are a super user"
fi

dnf install mysql -y