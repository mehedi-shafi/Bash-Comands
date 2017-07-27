#!/bin/bash

#run your C or C++ code directly from the terminal

if [ $# -ne 1 ]
then
    echo "Please Provide the file name.. It's required"
    clear
    exit
fi

filename=$1

#compile
gcc $filename -o $filename+out


#run
./$filename+out
