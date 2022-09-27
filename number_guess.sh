#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"
GAME(){
  if [[ $1 ]]
  then
  echo -e "\n$1\n"
  fi
echo -e "\nEnter your username:\n"
read USERNAME
if [[ ! $USERNAME =~ ^[A-Za-z0-9\_]{2,}$ ]]
then
GAME "please enter a valid username"
else
    USER_CHECK=$($PSQL "SELECT username,games_played,best_game FROM users WHERE username='$USERNAME'")
    if [[ -z $USER_CHECK ]]
    #new user
    then
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
    INSERT_NEW_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
    echo -e "\nGuess the secret number between 1 and 1000:"
    RANDOM_NUM=$(( RANDOM % 1000 +1 ))
    COUNTER=0
    read GUESS
    let "COUNTER+=1"
    while [[ ! $GUESS =~ ^[0-9]+$ ]]
    do
    echo "That is not an integer, guess again:"
    read GUESS
    done
    until [[ $GUESS -eq $RANDOM_NUM ]]
    do
    if [[ $GUESS -lt $RANDOM_NUM ]]
    then
    echo -e "It's higher than that, guess again:"
    read GUESS
    elif [[ $GUESS -gt $RANDOM_NUM ]]
    then
    echo -e "It's lower than that, guess again:"
    read GUESS
    fi
    let "COUNTER+=1"
    done
    echo "You guessed it in $COUNTER tries. The secret number was $RANDOM_NUM. Nice job!"
    UPDATE_NEW_USER=$($PSQL "UPDATE users SET games_played=1,best_game=$COUNTER WHERE username='$USERNAME'")
    else
    #old user
    echo $USER_CHECK | while read USERNAME BAR GAMES_PLAYED BAR BEST_GAME
    do
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    done
    echo -e "\nGuess the secret number between 1 and 1000:"
    RANDOM_NUM=$(( RANDOM % 1000 +1 ))
    COUNTER=0
    read GUESS
    let "COUNTER+=1"
    while [[ ! $GUESS =~ ^[0-9]+$ ]]
    do
    echo "That is not an integer, guess again:"
    read GUESS
    done
    until [[ $GUESS -eq $RANDOM_NUM ]]
    do
    if [[ $GUESS -lt $RANDOM_NUM ]]
    then
    echo -e "It's higher than that, guess again:"
    read GUESS
    elif [[ $GUESS -gt $RANDOM_NUM ]]
    then
    echo -e "It's lower than that, guess again:"
    read GUESS
    fi
    let "COUNTER+=1"
    done
    echo "You guessed it in $COUNTER tries. The secret number was $RANDOM_NUM. Nice job!"
    echo $USER_CHECK | while read USERNAME BAR GAMES_PLAYED BAR BEST_GAME
    do
    let "GAMES_PLAYED+=1"
    if [[ $COUNTER -le $BEST_GAME ]]
    then
    BEST_GAME=$COUNTER
    fi
    UPDATE_OLD_USER=$($PSQL "UPDATE users SET games_played=$GAMES_PLAYED,best_game=$BEST_GAME WHERE username='$USERNAME'")
    done
    fi
fi
}
GAME
