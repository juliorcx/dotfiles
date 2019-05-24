#!/bin/sh

sessions=$(tmux ls | awk '{print $1}' | cut -f1 -d':' | sort)

new=1
for old in $sessions
do
    tmux rename -t $old $new
    ((new++))
    done
