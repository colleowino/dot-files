#!/bin/bash

#reload shell
alias reshell='exec $SHELL'

#git alias
alias gitline='git l'
alias gls='git status '
alias gitall='git add . && gitam '
alias gitup='git push origin master'
alias gitam='git commit -am '
alias gitdwn='git pull origin master'
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias repoget='git clone '
alias gk='gitk --all&'
alias gx='gitx --all'

## don't like using rake
alias koans='ruby path_to_enlightenment.rb'

## serve the current folder on local host
alias serveFolder='python -m SimpleHTTPServer'

# apt-get shortcuts
alias aptinst='sudo apt-get install'
alias aptrepo='sudo add-apt-repository'
alias aptnew='sudo apt-get update'
alias ytdl='youtube-dl -f 18 '

## folders
alias docs='cd ~/Documents'
alias dwnl='cd ~/Downloads'
alias dropb='cd ~/Dropbox'
alias xtrarepo='cd ~/Documents/source-code/misc'
alias liveservers='cd ~/live-servers'
alias source-code='cd ~/Documents/source-code'

#get mp4 videos
alias ytdl='youtube-dl -f 18 '

#edit basic shell and vim profiles
alias vimprof="vim ~/.vimrc"
alias prof="vim ~/.zshrc"
alias tmuxprof="vim ~/.tmux.conf"
alias bashprof="vim ~/.bashrc"
alias aliaslist="vim ~/.bash_aliases"

#use same oh-my-zsh theme in tmux
alias tmux="TERM=screen-256color-bce tmux"
