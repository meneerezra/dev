#!/bin/bash
os="NULL" 
configDir="$HOME/.config"
if [ -z $1 ]
then
    echo "Provide an argument (linux/mac/global)"
    exit 1
elif [ $1 != "mac" ] && [ $1 != "linux" ] && [ $1 != "global" ];
then
    echo "Invalid os/argument (linux/mac/global)"
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

if [ $os == "global " ]
then
    exit 1
fi

for dir in ./config/$os/*/
do
    baseDir=$(basename "$dir")
    echo "Removed $baseDir from $configDir"
    rm -r "$configDir/$baseDir"
    cp -R "$dir" "$configDir/$baseDir"
    echo "Copied $baseDir"
done

if [ $os == "linux" ]
then
    echo "Hyprland reloaded"
    hyprctl reload
fi

