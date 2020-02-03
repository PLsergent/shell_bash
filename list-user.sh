#!/bin/bash

cat /etc/passwd | while read line; do
    if [ $(printf "$line" | cut -d ":" -f 3) -gt 100 ] ;then
        printf "$line\n"
    fi
done