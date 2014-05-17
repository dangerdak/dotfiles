#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

## MY ADDITIONS

# Change default editor to vim, system-wide
export VISUAL="/usr/bin/vim -p -X"

# Enable 256 colors on xterm
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
else
	export TERM='xterm-color'
fi

# Grep color highlighting
export GREP_COLOR='1;31'
alias grep='grep --color=auto'

# Add git completion
source ~/.git-completion.sh
