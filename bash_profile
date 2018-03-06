#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Add global npm directory to path
export PATH=~/.npm-global/bin:$PATH
# Add rubygem to path
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export GEM_HOME=$HOME/.gem

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
