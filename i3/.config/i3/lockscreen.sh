#!/bin/bash

# Suspends dunst notifications and locks the screen
# Author: Javier Gómez Fernández
# Date: 2018-05-23
# References: man page of i3lock

revert_dpms() {
	xset +dpms dpms 600 600 600
}

# Suspend notifications
pkill -u "$USER" -USR1 dunst

trap revert_dpms SIGHUP SIGINT SIGTERM
xset +dpms dpms 5 5 5

i3lock -n -c 000000 -e

revert_dpms

# Resume notifications
pkill -u "$USER" -USR2 dunst
