#!/bin/bash
#
#
# This is the WHILE-Testscript for Chatty
#
#
declare -i iterator
iterator=0
#
#
echo "test"
#
# While Test
while [[ ${iterator} -le 5 ]]
do
	echo "${iterator}"
	(($iterator++))
done
