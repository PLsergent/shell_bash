#!/bin/bash

if [ $# -eq 1 ] ;then
    # List all files and dirs with full path
    list=$(ls -d $1*)
    files="########## fichier dans $1\n"
    dirs="########## répertoires dans $1\n"
    for item in $list ;do
        if [ -f $item ] ;then
            files+="$item\n"
        elif [ -d $item ] ;then
            dirs+="$item\n"
        fi
    done
    printf "$files$dirs"
else
    printf "Usage: $0 /path/to/file\nVeuillez passer un seul argument.\n"
	exit 1
fi