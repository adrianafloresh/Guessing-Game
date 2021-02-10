#Adriana Flores

echo "GUESSING GAME"

function guess {
	echo "Enter the number of files in the current directory:"
	read answer
    files=$(ls -1 | wc -l)
}

guess

while [[ $answer -ne $files ]]
do
	if [[ $answer -lt $files ]] 
	then
		echo "Too low, try again"
	else
		echo "Too high, try again"
	fi
	guess
done

echo "CORRECT"
echo "---" && ls -1
