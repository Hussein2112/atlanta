#!/bin/bash
STUDENTS=/root/students.txt
echo "===================================="
while read student
do
echo "Removing $student from the wheel group"
usermod -G $student $student
sleep 1
echo "===================================="
echo "===================================="
done < $STUDENTS
