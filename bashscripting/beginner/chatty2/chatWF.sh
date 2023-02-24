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
declare -s ucity
read ucity
#  Initialize iterator and start to test for each City in the USERlocations-Array
declare -i i
i=0
while [[ ${i} -lt ${#ULocations[@]} ]]
do
	# Test if the userlocation is in USERlocations and echo the location and greeting
	if [[ ${ucity} = ${ULocations[i]} ]]
	then
		echo "${ULocations[i]}"
		echo "${UGreetings[i]}"
	else
		# show for each try
		echo "no-match for location $i"
		((i++))
	fi
done