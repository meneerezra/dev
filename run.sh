#!/bin/bash
os="NULL" 
configDir="$HOME/.config"
if [ -z $1 ]
then
    echo "Provide an argument (linux/mac)"
    exit 1
elif [ $1 != "mac" ] && [ $1 != "linux" ];
then
    echo "Invalid os/argument (linux/mac)"
    exit 1
fi
os=$1

mkdir -p "$configDir"

for dir in ./config/global/*/
do 
    baseDir=$(basename "$dir")
    echo "Removed $baseDir from $configDir"
    rm -rf "$configDir/$baseDir"
    cp -R "$dir" "$configDir/$baseDir"
    echo "Copied $baseDir"
done

for dir in ./config/$os/*/
do
    baseDir=$(basename "$dir")
    echo "Removed $baseDir from $configDir"
    rm -r "$configDir/$baseDir"
    cp -R "$dir" "$configDir/$baseDir"
    echo "Copied $baseDir"
    hyprctl reload
done
