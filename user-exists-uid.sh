#!/bin/bash

if [ $# -eq 1 ]; then
    uid=$1
    awk -F: '$3 == "'$uid'" { print $3 }' /etc/passwd
else
    printf "Usage: $0 <uid>\nVeuillez passer un seul argument.\n"
	exit 1
fi