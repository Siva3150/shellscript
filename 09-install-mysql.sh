#!/bin/bash

ID=$(id -u)

if [ $ID - ne 0 ]
then 
 echo "Run the system with root user"
else
 echo "You are root user"
 fi

 yum install mysql -y