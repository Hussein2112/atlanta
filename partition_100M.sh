#!/bin/bash
echo "Please Enter the disk name: "
read disk

fdisk /dev/$disk << EOF
d1
n
p
1

+100M
w
EOF
