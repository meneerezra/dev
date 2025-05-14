#!/bin/bash
os="NULL" 
if [ -z $1 ]
then
    echo "Provide an argument (linux/mac)"
elif [ $1 != "mac" ] && [ $1 != "linux" ];
then
    echo "Invalid os/argument (linux/mac)"
    exit 1
fi
os=$1
echo $os



