#!/bin/bash

# suspend message display
pkill -u "$USER" -USR1 dunst

# lock the screen
i3lock -n -c 000000 -e

# resume message display
pkill -u "$USER" -USR2 dunst
