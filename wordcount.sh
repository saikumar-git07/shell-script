#!/bin/bash

USAGE= ./aboutdevops.txt

if [ $1 -ne 1 ]
then
    echo "Usage: $0 aboutdevops.txt"
    exit 1
fi
file="$1"
