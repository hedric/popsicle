#!/bin/sh

if [ "$1" = "start" ] ; then
    echo "starting clicker"
    xdotool click --delay 24 --repeat 1000 1
    echo "clicker ended"
fi 
        
