#!/usr/bin/env sh

function down {
	options="cancel\nshutdown\nreboot\nlock"
	selected=$(echo -e $options | dmenu)
	if [[ $selected =  "shutdown" ]]; then
		 loginctl poweroff 
	elif [[ $selected = "reboot" ]]; then
		loginctl reboot
    elif [[$selected = "lock"]]; then
        slock
    elif [[ $selected = "cancel" ]]; then
		return
	fi
}

down
