#!/bin/bash
echo "Welcome to User Registration System"

echo "enter the name:"
read name
if [[ "$name" =~ ^[A-Z][a-z]$ ]]
then
    echo "valid name"
else
    echo "Invalid name"
fi
