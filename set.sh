#!/bin/bash

set -e 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
     echo "please run this scipt with root access"
     exit 1
else
     echo "you are a super user"
fi

dnf install mysqql -y
dnf install git -y

echo "is script is proceeding ?"