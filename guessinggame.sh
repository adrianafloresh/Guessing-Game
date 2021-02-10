#!/usr/bin/env bash

echo "GUESSING GAME"

function ask {
	echo "Enter the number of files in the current directory:"
	read answer
    files=$(ls -1 | wc -l)
}

ask

while [[ $answer -ne $files ]]
do
	if [[ $answer -lt $files ]] 
	then
		echo "Too low, try again"
	else
		echo "Too high, try again"
	fi
	ask
done

echo "CORRECT"
echo "---" && ls -1