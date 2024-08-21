#!/bin/bash 

## this script creates a new user account

## 1. Get the username from the terminal 
read -p "Enter your username: " username 

echo "Great! You entered $username!"

## 2. Get the username password 
read -p "Enter your password: " password

## create the account
sudo useradd $username 

## add the password
echo "$username:$password" | sudo chpasswd

echo "New user created successfully!"


