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
# Effect of tapping modifier keys: left caps lock acts as esc, super acts as tab
xcape -e 'Caps_Lock=Escape;Super_L=Tab'

# Run window manager
exec i3
