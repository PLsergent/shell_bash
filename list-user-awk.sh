#!/bin/bash

# The cleanest one but do not display the whole line
awk -F: '$3 > 100 { print $1 }' /etc/passwd