#!bin/bash
# type what you re searching in /etc
echo "what do you wanna grep?: "
read usrvariable
ls -la /etc | grep $usrvariable
