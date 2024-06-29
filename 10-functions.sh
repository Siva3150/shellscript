#!/bin/bash

ID=$(id -u)

VALIDATE(){
 if [ $? - ne 0 ]
 then
    echo "Error::  installation is failed"
    exit 1
 else
    echo " installation is success"
 fi
}

if [ $ID - ne 0 ]
then 
    echo "Error:: Run the system with root user"
    exit 1 #you can give other than 0
else
    echo "You are root user"
fi #fi means reverse of if, means condition end

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE
