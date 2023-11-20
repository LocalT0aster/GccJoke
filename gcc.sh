#!/bin/bash
NAME=$(whoami)
NAME=$(echo "$NAME" | sed 's/.*/\u&/')
echo "Error while compiling $1"
echo "Caused by: You are $NAME."
