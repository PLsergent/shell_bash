#!/bin/bash

if [ "$#" -eq 2 ]; then
    printf "$*\n"
else
    printf "Veuillez passer deux paramètres.\n"
    exit 1
fi