#!/bin/zsh

/usr/bin/osascript << EOF 
display notification "By using this computer you agree to terms and conditions of use set down by the company." \
					  with title "Terms & Conditions" \
					  subtitle "Acknowledge" \
					  sound name "Alert"
	    message theAlertMessage \
		as informational \
		buttons {"Accept"} default button "Accept"
EOF