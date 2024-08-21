#!/bin/bash 

## create a script that uses the value entered to create a file 

function checkFile {
    read -p "Enter file name: " filename

    if [[ -f $filename ]]
    then
        echo "The file $filename exists already"

        return 222
    else
        echo "The file $filename does not exist"
        # touch $filename
        return 101
    fi


}




function createFile {
    touch $filename

}

checkFile


if [[ $? -eq 101 ]]
then
    createFile
fi