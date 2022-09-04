# .bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias clrtest='~/.local/bin/colortest'
PS1='[\u@\h \W]\$ '

EDITOR=nvim

######################################################
$HOME/.local/bin/bunnyfetch

eval "$(starship init bash)"
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
