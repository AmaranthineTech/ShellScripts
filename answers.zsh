#!/bin/zsh
#!/usr/bin/expect 

#Variables
ANS1="Arun"
ANS2="arun@amaranthine.co.in"
ARG1=$1

export ANS1
export ANS2
export ARG1 

/usr/bin/expect << "EOF"
set myValue1 $env(ANS1);
set myValue2 $env(ANS2);
set arg1 $env(ARG1);

spawn /Users/arunpatwardhan/Developer/questions.zsh
expect "1) What is your name?\r" 
send -- "$myValue1\r"

expect "2) What is your email address?"
send -- "$myValue2\r"

expect "3) Could you tell me your company website address?"
send -- "www.amaranthine.in\r"

expect "4) Please provide your mobile number?"
send -- "$arg1\r"

expect {
	"Do you like option A?" { send -- "Of course!\r" }
	"Would you prefer option B?" { send -- "Definitely!\r" }
}

expect eof
EOF