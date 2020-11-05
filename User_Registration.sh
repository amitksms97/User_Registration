#!/bin/bash
echo "Welcome to User Registration System"

read -p "enter the name:" name

if [[ "$name" =~ ^[A-Z][a-zA-Z]* ]]
then
    echo "valid name"
else
    echo "Invalid name"
fi
