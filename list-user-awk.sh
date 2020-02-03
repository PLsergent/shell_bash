#!/bin/bash

# The cleanest one but do not display the whole line
printf "$(cat /etc/passwd | awk '{split($1, str, ":"); if (str[3] > 100) { print $1 }}')\n"