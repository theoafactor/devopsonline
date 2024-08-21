for n in {1..10};
do
    echo $n

    if [[ $n == 5 ]]
    then
        break
    fi
done