#!/bin/bash

nFiles=$(ls -p | grep -v / | wc -l)

rightGuess=false

echo "How many files in the currect directory??"

run_until_correct() {
  while [ $rightGuess == false ]; do
    echo "Please input your guess."
    read guess
      if [ $guess -eq $nFiles ]; then
        echo "Correct. Congratulations."
        rightGuess=true
      elif [ $guess -lt $nFiles ]; then
        echo "Incorrect. Too low."
      else 
        echo "Incorrect. Too high"
      fi
  done
}

run_until_correct

