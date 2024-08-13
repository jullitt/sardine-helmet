#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "~~~ Number Guess ~~~\n"
echo -e "Enter your username:"
read NAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$NAME';")

if [[ -z $USER_ID ]]; then
  INSERT_TO_USERS=$($PSQL "INSERT INTO users (name) VALUES ('$NAME');")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$NAME';")
  echo -e "Welcome, $NAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*)FROM games WHERE user_id = '$USER_ID';")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id = '$USER_ID';")

  echo -e "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.\n"
fi

NUMBER_RANDOM="$((1 + $RANDOM % 1000))"
GUESS_COUNTER=0
GUESSED=0

echo -e "Guess the secret number between 1 and 1000:"


function NUMBER_GUESS() {
  if [[ $1 ]]; then
    echo $1
  fi

  while [[ $GUESSED = 0 ]]; do
    read NUMBER_INPUT

    if ! [[ "$NUMBER_INPUT" =~ ^[0-9]+$ ]]; then
      echo -e "That is not an integer, guess again:"
    elif [[ $NUMBER_INPUT > $NUMBER_RANDOM ]]; then
      GUESS_COUNTER=$(($GUESS_COUNTER + 1))
      echo -e "It's lower than that, guess again:"
    elif [[ $NUMBER_INPUT < $NUMBER_RANDOM ]]; then
      GUESS_COUNTER=$(($GUESS_COUNTER + 1))
      echo -e "It's higher than that, guess again:"
    else
      GUESS_COUNTER=$(($GUESS_COUNTER + 1))
      echo -e "You guessed it in $GUESS_COUNTER tries. The secret number was $NUMBER_RANDOM. Nice job!"
      INSERT_TO_GAMES=$($PSQL "INSERT INTO games (guesses, user_id) VALUES ($GUESS_COUNTER, $USER_ID);")
      GUESSED=1
    fi
  done
}

NUMBER_GUESS