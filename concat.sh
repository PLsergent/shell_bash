#!/bin/bash

if [ "$#" -eq 2 ]; then
    CONCAT=$*
    printf "%s" "$CONCAT"
else
    printf "Veuillez entrer deux paramètres."
    exit 1
fi