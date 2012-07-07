alias rake='noglob rake'
alias linkchecker='noglob linkchecker'
alias reload!='. ~/.zshrc'

# Utility
alias reload='source ~/.dotfiles/zsh/aliases.zsh'
alias ea='mate -w ~/.dotfiles/zsh/aliases.zsh && reload' # Edit aliases
#alias ee="mate ~/.dotfiles/bash/env"

# Common -- Some are from Damian Conway
alias a='ls -A' # -A all except literal . ..
alias la="ls -A -l -G"
alias c='clear'
alias cdd='cd -'  # goto last dir cd'ed from
alias cl='clear; l'
function cdc() { 
    cd $1; ls 
}
alias cls='clear; ls'
alias h='history'
alias l.='ls -d .[^.]*'
alias l='ls -lhGt'  # -l long listing, most recent first
                    # -G color
alias lh="ls -lh"
alias ll='ls -lhG'  # -l long listing, human readable, no group info
alias lt='ls -lt' # sort with recently modified first
alias md='mkdir -p'
alias s='cd ..'   # up one dir
function take() { 
    mkdir -p "$1"
    cd "$1" 
}

alias e='exit'
alias k9="killall -9"
function killnamed () { 
    ps ax | grep $1 | cut -d ' ' -f 2 | xargs kill 
}
function zipr() {
  zip -r $1.zip $1
}

# Finder
alias o='open . &'
alias ff='open -a Firefox'

# General code

# From Chris Wanstrath
function pless() { 
    pygmentize $1 | less -r 
}

# Processes
alias tu='top -o cpu' # cpu
alias tm='top -o vsize' # memory

# Git
alias gsd="git svn dcommit"
alias gsr="git svn rebase"
