#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Add .scripts directory to PATH
export PATH=$PATH:/home/dangerdak/.scripts
# Add global npm directory to path
export PATH=~/.npm-global/bin:$PATH
# Add rubygem to path
export PATH=$(ruby -rubygems -e "puts Gem.user_dir")/bin:$PATH

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
