#!/bin/zsh

# Questions
# --------------------------------------------------
echo "1) What is your name?"
read -s NAME
echo $NAME 

echo "2) What is your email address?"
read -s EMAIL
echo $EMAIL 

echo "3) Could you tell me your company's website address?"
read -s WEBSITE
echo $WEBSITE 

echo "4) Please provide your mobile number?"
read -s MOBILE
echo $MOBILE 

# Choice
# --------------------------------------------------
RESULT=$(($RANDOM % 2))
if [[ $RESULT == 1 ]]; then
	echo "Do you like option A?"
else 
	echo "Would you prefer option B?"
fi

read -s OPTION
echo $OPTION 