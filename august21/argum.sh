#!/bin/bash 


function addNumbers {

    total=$(( $1 + $2 ))

    return $total

}


addNumbers 12 55

echo $?