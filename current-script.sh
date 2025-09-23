#!/bin/bash

COURSE="devops from current script"


echo "before calling other script, course: $COURSE"
echo "PID of current shell script: $$"

./other-script.sh

echo "after calling the other script, course: $COURSE"