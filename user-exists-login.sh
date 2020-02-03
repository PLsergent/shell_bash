#!/bin/bash

if [ $# -eq 1 ] ;then
    login=$1
    printf "$(cat /etc/passwd | awk '{split($1, str, ":"); if (str[1] == "'$login'") { printf str[3] }}')\n"
else
    printf "Usage: $0 <login>\nVeuillez passer un seul argument.\n"
	exit 1
fi