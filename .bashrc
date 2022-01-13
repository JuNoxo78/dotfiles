#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\[\e[1;34m\][\u@\h \W]\$\[\e[0m\] '

alias ll='exa -lh --group-directories-first'
alias la='exa -a --group-directories-first'
alias l='exa --group-directories-first'
alias lla='exa -lha --group-directories-first'
alias ls='exa --group-directories-first'
alias cat='bat --theme gruvbox-dark'
alias catn='ccat -G Plaintext="blink" -G Keyword="purple" -G String="darkgreen"'
alias v='nvim'
alias tree='exa -T'
. "$HOME/.cargo/env"
