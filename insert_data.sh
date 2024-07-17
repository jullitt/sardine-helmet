#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

unset dupes
declare -A dupes

array=()
newarray=()

while IFS=, read -r year round winner opponent winner_goals opponent_goals; do 
    if [[ $year == "year" ]]; then 
      continue;
    fi
    array+=("$opponent")
    array+=("$winner")
  done < games.csv

for i in "${array[@]}"; do
  if [[ -z ${dupes[$i]} ]]; then
    echo $i
      newarray+=("$i")
    fi
    dupes["$i"]=1
done

for value in "${newarray[@]}"
do
     $PSQL "INSERT INTO teams (name) VALUES ('$value');"
done

while IFS=, read -r year round winner opponent winner_goals opponent_goals; do 
    if [[ $year == "year" ]]; then 
      continue;
    fi
    winner_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner';")
    opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent';")

    $PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ('$year', '$round', $winner_id, $opponent_id, $winner_goals, $opponent_goals);"
  done < games.csv