#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Activate vi mode with <Escape>:
# set -o vi

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# nnn config
export NNN_USE_EDITOR=1

# Define defaults

export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
