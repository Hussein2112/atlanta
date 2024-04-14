#!/bin/bash
STUDENTS=/root/students.txt
echo "===================================="
while read student
do
echo "Adding $student to the wheel group"
usermod -aG wheel $student
sleep 1
echo "===================================="
echo "===================================="
done < $STUDENTS
