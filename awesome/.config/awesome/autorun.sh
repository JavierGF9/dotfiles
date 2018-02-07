#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run /usr/lib/x86_64-linux-gnu/polkit-mate/polkit-mate-authentication-agent-1
run nm-applet
run conky -d
run urxvtd -q -o -f
run compton --config /dev/null -b --backend glx --vsync opengl-swc
