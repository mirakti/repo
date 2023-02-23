#!/bin/bash
#
#
#
#
#
# This is the IF-Testscript
#
#
# Initialize arrays for Locations and Greetings
declare -a USERlocations
declare -a USERgreetings
# Read Locations and Greetings from file and add each line as Element in Array
while read -r line; do
	USERlocations+=("$line")
done < userlocations.txt
while read -r line; do
	USERgreetings+=("$line")
done < usergreetings.txt
#
# Assert loading success
echo "${USERlocations[@]}"
echo "${USERgreetings[@]}"
#
#
#
# Test if location is in USERlocations and echo the location and greeting
if [[ $1 = ${USERlocations[0]} ]]
then
	echo "$1"
	echo "${USERlocations[0]}"
	echo "${USERgreetings[0]}"
else
	echo "no-match for location"
fi
echo -e
