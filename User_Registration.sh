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


read -p "enter the password:" password

len="${#password}"
if [ $len -ge 8 ]
then
	echo "$password" | grep -q [0-9]
	if [ $? -eq 0 ]
	then
		echo "$password" | grep -q [A-Z]
		if [ $? -eq 0 ]
		then
			echo "$password" | grep -q [a-z]
			if [ $? -eq 0 ]
			then
				echo "Strong password"
			else
				echo "weak password include lower case character"
			fi
		else
		echo "weak password include capital character"
		fi
	else
	echo "please include the numbers in password it is weak password"
	fi
else
echo "password lenght should be greater than or equal 8 hence weak password"
fi
