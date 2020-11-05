#!/bin/bash
echo "Welcome to User Registration System"

read -p "enter the name:" name

if [[ "$name" =~ ^[A-Z][a-zA-Z]* ]]
then
    echo "valid name"
else
    echo "Invalid name"
fi

read -p "Enter Email:" email
if [[ "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]
then
    echo "Email address $email is valid."
else
    echo "Email address $email is invalid."
fi

read -p "Enter a phone number: " phoneNumber
phone="^[0-9]{10}$"
if [[ $phoneNumber =~ $phone ]]
then
	echo "Valid Phone Number"
else
	echo "Invalid Phone Number"
fi
echo $phoneNumber
