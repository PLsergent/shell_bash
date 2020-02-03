#!/bin/bash
source ./.bash_lang

if [ $# -eq 1 ] ;then
    # Get owner and argument type (file, directory, etc...)
	owner=$(stat -c '%U' $1)
	type=$(stat --printf "%F" $1)
    # Get permissions of the owner: stat give the absolute code "766" > awk to split and keep first number "7"
	abs_code=$(stat -c "%a %n" $1 | awk '{split($1, str, ""); print str[1]}')
    declare -A perms=( [1]=exécution [2]=écriture [4]=lecture ) # Map permissions string as key and code as values
    final_perm="en"
    for p in 4 2 1; do
        if [ $abs_code -ge $p ] ;then
            final_perm+=" ${perms[$p]}"
            abs_code=$((abs_code-p))
        fi
    done
	# Print result
	printf "$1 est un $type\n"
	printf "$1 est accessible par $owner $final_perm"
else
	printf "Usage: $0 /path/to/file\nVeuillez passer un seul argument."
	exit 1
fi