#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Add .scripts directory to PATH
export PATH=$PATH:/home/dangerdak/.scripts
# Add global npm directory to path
export PATH=/home/dangerdak/.npm-global/bin:$PATH

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
