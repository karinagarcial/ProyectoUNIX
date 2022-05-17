#!/usr/bin/env bash

juego(){

echo "I want you to guess the number of files in my directory"

echo "what's your guess"

read guess

b=$(ls | wc -l)



while [ $guess -ne $b ];

do
 if [ $guess -gt $b ]
	then
		echo "the number you guessed is too high, guess again "
			read guess
 	 elif [[ $guess -lt $b ]]
		then
			echo "the number you guessed is too low, guess again "
			read guess
fi
 done

echo "You guessed the correct number!"

}
juego
