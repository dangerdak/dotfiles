#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

# Add Xresources (update x resources db) 
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Apply key mappings - disable caps, caps->ctrl, tab->super
xkbcomp -I$HOME/.xkb ~/.xkb/keymap $DISPLAY
# For special keys eg volume
xbindkeys

# Run window manager
exec i3
