#!/bin/bash

read -p "Enter the username: " username

if [[ $username == "Jerryuser" ]]
    then 
        echo "Welcome $username. You are registered!"
elif [[ $username == "adamsuser" ]]
    then 
        echo "Welcome AdamsUser"
elif [[ $username == "maryuser" ]]
    then
        echo "Welcome Mary"
else
    echo "Welcome User. You are not registered!"
fi
