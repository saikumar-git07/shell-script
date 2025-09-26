#!/bin/bash

USAGE= ./wordcount.sh aboutdevops.txt

if [ $1 -ne 1 ]
then
    echo "Usage: $0 aboutdevops.txt"
    exit 1
fi
file="$1"

count word occurences, sort, ar
cat"file" | tr -cs '[:alnum:]' '\n' | tr 'A-Z' | sort | uniq -c | sort -nr | head -5