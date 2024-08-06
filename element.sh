#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]; then
  echo -e "Please provide an element as an argument."
  exit
fi

ELEMENT=$($PSQL "SELECT * FROM elements e INNER JOIN properties p USING (atomic_number) INNER JOIN types USING (type_id) WHERE e.atomic_number::text = '$1' OR e.symbol = '$1' OR e.name = '$1';")

if [[ -z $ELEMENT ]]; then
  echo -e "I could not find that element in the database."
  exit
fi

IFS='|' read -r TYPE_ID ATOMIC_NUMBER SYMBOL NAME MASS MELTING BOILING TYPE <<< $ELEMENT

echo -e "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."