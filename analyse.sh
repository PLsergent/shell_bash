#!/bin/bash

content="Bonjour, vous avez rentré $# paramètres.
Le nom du script est $0
Le 3ème paramètre est $3
Voici la liste des paramètres : $*  
"

printf "%s" "$content";