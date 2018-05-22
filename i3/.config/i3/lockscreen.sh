#!/bin/bash

revert_dpms() {
	xset +dpms dpms 600 600 600
}

# suspend message display
pkill -u "$USER" -USR1 dunst

trap revert_dpms SIGHUP SIGINT SIGTERM
xset +dpms dpms 5 5 5
# lock the screen
i3lock -n -c 000000 -e
revert_dpms

# resume message display
pkill -u "$USER" -USR2 dunst
