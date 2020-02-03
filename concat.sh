#!/bin/bash

if [ "$#" -eq 2 ]; then
    concat=$*
    printf "%s" "$concat"
else
    printf "Veuillez entrer deux paramètres."
    exit 1
fi