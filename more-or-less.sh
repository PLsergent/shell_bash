#!/bin/bash

if [ $# -eq 1 ] ;then
    list=$(ls -d $1*)
    for item in $list ;do
        # Check if text file
        if [ $(file $item | grep text | wc -l) -eq 1 ] ;then
            while : ; do
                read -p "Voulez vous lire le fichier $item ? (y/n) " choice
                if [[ $choice != "" && ( $choice = "y" || $choice = "n" ) ]];then break; fi
            done
            
            if [ $choice = "y" ] ;then
                printf "\n" 
                more $item
                printf "\n" 
            fi
        fi
    done
else
    printf "Usage: $0 /path/to/dir/\nVeuillez passer un seul argument.\n"
	exit 1
fi