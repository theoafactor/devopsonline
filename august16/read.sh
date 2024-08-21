#!/bin/bash

## this script reads the users from the inventory file
## .. using while loop

while read -r line;
do 
    
    ## check for heading 
    ## heading contains Firstname,Lastname,Email,Username

    check_heading=$(echo $line | grep "Firstname,Lastname,Email,Username")

    ## check if $check_heading contains data or has matches
    if [[ $check_heading ]]
    then 
        echo ""
    else
        ## echo the $line
        firstname=$(echo $line | cut -d"," -f1)
        lastname=$(echo $line | cut -d"," -f2)
        username=$(echo $line | cut -d"," -f4)

        echo $username

        sudo useradd $username 

        ## generate the password randomly
        $first_random=$( echo $RANDOM)
        $second_random=$( echo $RANDOM )

        random="$first_random_$second_random"

        password="password_$random"

        echo "$username:$password" | sudo chpasswd

    fi

    

done < "inventory.csv"