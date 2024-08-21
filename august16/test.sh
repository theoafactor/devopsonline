#!/bin/bash
username="James;John"
data=$(echo $username | cut -d";" -f1)

echo $data