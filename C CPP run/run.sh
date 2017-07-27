#!/bin/bash

#run your C or C++ code directly from the terminal

if [ $# -ne 2 ]
then
    echo "Please Provide all the parameters.. It's required"
    clear
    return
fi

filename=$1
filetype=$2

#compile
if [ $filetype = "cpp" ]
then 
    c++ $filename -o $filename+out
elif [ $filetype = "c" ]
then 
    gcc $filename -o $filename+out
else
    echo "File type is not supported."
    clear
    return
fi

#run
./$filename+out
