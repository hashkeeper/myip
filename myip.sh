#!/usr/bin/bash

verbose=false

while getopts v flag
do
	case "${flag}" in
		v) verbose=true;;
	esac 
done

if [ "$verbose" = true ]; then
    curl -w "\n" -s https://ipinfo.io/
    exit 0
elif [ "$verbose" = false ]; then
    curl -w "\n" -s https://ipecho.net/plain
    exit 0
fi