#!/bin/bash 

counter=1

while [[ $counter -lt 10 ]]
do 
    echo $counter

   counter=$(( $counter + 1 ))
done