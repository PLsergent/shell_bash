#!/bin/bash

if [ $# -eq 1 ]; then
    login=$1
    awk -F: '$1 == "'$login'" { print $3 }' /etc/passwd
else
    printf "Usage: $0 <login>\nVeuillez passer un seul argument.\n"
	exit 1
fi