#!/bin/bash

# Change state of TouchPad and TrackPoint using xinput
# Author: Javier Gómez Fernández
# Date: 2018-05-23

get_xinput_id() {
	local id=$(xinput list | grep -i $1)
	[ -z "$id" ] && return 255
	return $(echo $id | egrep -o "id=[0-9]+" | cut -d "=" -f 2)
}

toggle_xinput_device() {
	get_xinput_id $1
	local id=$?

	[ $id -eq 255 ] && return 1

	if xinput list-props $id | egrep -q "Device Enabled.*:.*1"
	then
		xinput disable $id
	else
		xinput enable $id
	fi
}

toggle_xinput_device "touchpad"
toggle_xinput_device "trackpoint"
