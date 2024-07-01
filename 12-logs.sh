#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo " Script started executing at $TIMESTAMP &>> $LOGFILE

VALIDATE(){
 if [ $1 - ne 0 ]
 then
    echo "Error::  $2 is $R failed $N"
    exit 1
 else
    echo " $2 is $G success"
 fi
}

if [ $ID - ne 0 ]
then 
    echo "$R Error:: Run the system with root user $N"
    exit 1 #you can give other than 0
else
    echo "You are root user"
fi #fi means reverse of if, means condition end

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MYSQL"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"
