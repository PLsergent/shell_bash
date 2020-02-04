#!/bin/bash

if [ $# -eq 1 ]; then
    uid=$1
    printf "$(cat /etc/passwd | awk '{split($1, str, ":"); if (str[3] == "'$uid'") { printf str[3] }}')\n"
else
    printf "Usage: $0 <uid>\nVeuillez passer un seul argument.\n"
	exit 1
fi