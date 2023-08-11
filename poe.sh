#!/bin/bash

# key press   11 = 2, gives 245 if toggleFlask true
# key press   67 = F1 toggle clicker script
# key press   68 = F2 toggle flasks

KEYBOARD="USB Keyboard"

toggleClick=true
toggleFlask=true

xinput test "$KEYBOARD" | while read in ; do

    if [[ $in = "key press   11" ]] ; then 
        if [ "$toggleFlask" = true ] ; then
            xdotool key 4
            xdotool key 5
        fi

    elif [[ $in = "key press   67" ]] ; then
        if [[ "$toggleClick" = true ]] ; then
            # launch clicker script with & and move on
            sh $PWD/clicker.sh start & 
            toggleClick=false
         
        else
            # kill clicker running xdotool
            kill -9 $(pgrep xdotool)
            toggleClick=true
        fi
    elif [[ $in = "key press   68" ]] ; then
        if [[ "$toggleFlask" = true ]] ; then
            toggleFlask=false
        else
            toggleFlask=true
        fi
    fi
done
