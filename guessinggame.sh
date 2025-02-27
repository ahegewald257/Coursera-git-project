#!/usr/bin/env bash

# file: guessinggame.sh

file_count=$(ls -l | grep '^-' | wc -l)
result=1
guessresult(){
    if [[ $1 =~ ^[0-9]+$ ]]; then
        if [[ $1 -eq file_count ]]; then
            echo "Congratulations that is correct."
            result=0
        elif [[ $1 -lt file_count ]]; then
            echo "Your guess is too low, try again."
            result=1
        elif [[ $1 -gt file_count ]]; then
            echo "Your guess is too high, try again."
            result=1
        fi
    else
        echo "Unknown value provided, please provide a number"
        result=1
    fi
}

while [[ $result -gt 0 ]]
do
    echo -n "Please guess the number of files in the current directory: "
    read response
    guessresult $response
done
