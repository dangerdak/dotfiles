#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Add .scripts directory to PATH
export PATH=$PATH:/home/dangerdak/.scripts

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
