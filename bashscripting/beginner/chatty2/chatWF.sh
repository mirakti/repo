#!/bin/bash
#
# This is the IF-Testscript
#
#
# Initialize arrays for Locations and Greetings
declare -a ULocations
declare -a UGreetings
# Read Locations and Greetings from file and add each line as Element in Array
# read if file exists
while read -r line; do
 ULocations+=("$line")
done < userlocations.txt
while read -r line; do
 UGreetings+=("$line")
done < usergreetings.txt
#
read -r -p "Enter your location: " ucity
#  Initialize iterator and start to test for each City in the USERlocations-Array
i=0
while [[ ${i} -lt ${#ULocations[@]} ]]; do
 if [[ ${ucity} = ${ULocations[i]} ]]; then
  echo "${ULocations[i]}"
  echo "${UGreetings[i]}"
  break
 else
  # show for each try
  echo "no-match for location $i"
  ((i++))
 fi
done