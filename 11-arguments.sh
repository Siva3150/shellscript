#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total:: $SUM"

echo "Total arguments:: $@"

echo "How many arguments passed: $@"

echo "script name:: $0"