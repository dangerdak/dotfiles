#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

## MY ADDITIONS

# Don't list hidden files when pressing tab
bind 'set match-hidden-files off'

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

# Keep screen on
alias watchonline='xset s off; xset -dpms'
alias nowatchonline='xset s 600 600; xset +dpms'

# Virtual envs
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# Apuniverse aliases
alias cdapu='cd /home/dangerdak/projects/apuniverse/apuniverse; workon anniepottersuniverse;'
alias cdapu-runserver='cd /home/dangerdak/projects/apuniverse/apuniverse; workon anniepottersuniverse; ./manage.py runserver --settings=apuniverse.settings.local;'
