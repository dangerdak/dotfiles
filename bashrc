#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

alias reboot='systemctl reboot'
alias poweroff='systemctl poweroff'

# Git aliases
alias g='git'
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'
alias gl='git log -5'

# More aliases
alias v='vim'
alias _='sudo'

alias ..='cd ..'
alias ...='cd ../..'

alias pu='pushd'
alias po='popd'

alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -l'
alias lh='ls -lh'
alias la='ls -la'
alias lah='ls -lah'

alias cl='clear'

# Virtualenvwrapper settings
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /usr/bin/virtualenvwrapper.sh

# Add git repo info to prompt
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
PS1='[\u@\h \W$(__git_ps1 "\e[38;5;37m (%s)\e[0m")]\$ '

# Automatically source nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
