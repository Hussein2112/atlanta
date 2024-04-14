#!/bin/bash

arr=(Alpha Bravo Charlie Delta Echo)

echo "Array arr[1]: ${arr[2]}"
echo "Array arr all: ${arr[@]}"
echo "Array arr length: ${#arr[@]}"
echo "Array arr elements filled: ${!arr[@]}"

