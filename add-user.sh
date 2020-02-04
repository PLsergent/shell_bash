#!/bin/bash

if [ $(id -u) -eq 0 ]; then
	read -p "Enter username : " username
	read -s -p "Enter password : " password
    printf "\n"
    read -p "Enter comment : " comment
    read -p "Enter UID : " uid
    read -p "Enter GID : " gid

    # Password encryption
    pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
    # -m : Create /home/user folder -N : no user group
    useradd -m -p $pass -c $comment -u $uid -N $username
    # useradd will handle itself if username of uid already exists
    [ $? -eq 0 ] && printf "User has been added to system!" || printf "Failed to add a user!\n"
else
	echo "Only root may add a user to the system"
	exit 2
fi