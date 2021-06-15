export ZSH="/home/juan/.oh-my-zsh"

plugins=(git vi-mode colored-man-pages)

source $ZSH/oh-my-zsh.sh

# Plugins
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set up the prompt

autoload -Uz promptinit
promptinit

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
# bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# PATH

PATH=/home/juan/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/juan/.local/bin:/home/juan/.rbenv/bin:/home/juan/.rbenv/versions/3.0.0/bin:/home/juan/.rbenv/plugins/ruby-build/bin:/usr/local/go/bin:/home/juan/Documentos/cmake-3.20.1-linux-x86_64/bin

# Manual aliases
alias ll='exa -lh --group-directories-first'
alias la='exa -a --group-directories-first'
alias l='exa --group-directories-first'
alias lla='exa -lha --group-directories-first'
alias ls='exa --group-directories-first'
alias cat='bat --theme gruvbox-dark'
alias catn='ccat -G Plaintext="blink" -G Keyword="purple" -G String="darkgreen"'
# alias v='nvim.appimage'
alias v='nvim'
alias tree='exa -T'
alias pip='pip3.9'
alias python='python3.9'
alias apu='sudo apt update'
alias apr='sudo apt remove'
alias apar='sudo apt autoremove'
alias api='sudo apt install'
alias ape='sudo apt upgrade'
alias aple='apt list --upgradable'
alias su='sudo su'

eval "$(starship init zsh)"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte-2.91.sh
fi
