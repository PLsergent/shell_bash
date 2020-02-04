#!/bin/bash

# Regex to check if number only handle integers
re='^[0-9]+$'
while : ; do
    read -p "Quelle note ? ([0-20]) " grade
    if [[ $grade =~ $re && ( $grade -le 20 && $grade -ge 0 ) ]]; then break; fi
done

declare -A grades=( [10]="insuffisant" [12]="moyen" [14]="assez bien" [16]="bien" [20]="très bien" )

for g in 10 12 14 16 20; do
    if [ $grade -le $g ]; then
        printf "${grades[$g]}\n"
        break
    fi
done

while : ; do
    read -n1 -p "Quitter ? (q) " quit
    if [ $quit = "q" ]; then exit 0; fi
done