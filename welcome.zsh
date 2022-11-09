#!/bin/zsh

/usr/bin/osascript << EOF 
display notification "By using this computer you agree to terms and conditions of use set down by the company." \
					  with title "Terms & Conditions" \
					  subtitle "Acknowledge" \
					  sound name "Alert"set theAlertText to "Terms and conditions of use"set theAlertMessage to "By using this computer you agree to terms and conditions of use set down by the company."display alert theAlertText \
	    message theAlertMessage \
		as informational \
		buttons {"Accept"} default button "Accept"
EOF
