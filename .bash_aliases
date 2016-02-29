#!/bin/bash

#reload shell
alias reshell='exec $SHELL'

#git alias
alias gitline='git l'
alias gls='git status '
alias gitall='git add . && gitam '
alias gitup='git push origin master'
alias gitdwn='git pull origin master'
alias gitam='git commit -am '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias repoget='git clone '
alias gk='gitk --all&'
alias gx='gitx --all'
alias grst='git checkout '
# git submodules 
alias gitnewmod="git submodule add "
alias gitmods="vim .gitmodules "
alias gitmodcurrent="git submodule update " # this pulls the saved state
alias gitmodupdate="git submodule foreach git pull origin master"
# use git extras to ignore files
alias gitnot="git ignore "

## don't like using rake
alias koans='ruby path_to_enlightenment.rb'

## serve the current folder on local host
alias serveFolder='python -m SimpleHTTPServer'

# apt-get shortcuts
alias aptinst='sudo apt-get install'
alias aptgone='sudo apt-get remove'
alias aptrepo='sudo add-apt-repository'
alias aptnew='sudo apt-get update'

## folders
alias docs='cd ~/Documents'
alias ytfolder='cd ~/Documents/yt_lessons'
alias dwnl='cd ~/Downloads'
alias dropb='cd ~/Dropbox'
alias xtrarepo='cd ~/Documents/source-code/misc'
alias blogs='cd ~/Documents/source-code/misc/jekyll-stuff'
alias mycode='cd ~/Documents/source-code'
alias thinks='cd /mnt/depot/Think_tank'
alias experia='cd ~/experia'

# vim bundles folder
alias vimbundles='cd ~/.vim/bundle'
alias plg='cd ~/.vim/plugged'

#serve draft posts
alias jekylldraft='jekyll s --watch --drafts'

#get mp4 videos
alias ytdl='youtube-dl -f 18 '
alias ytaudio='youtube-dl -f 140 '
alias ytupdate='sudo pip install --upgrade youtube-dl'

#edit basic shell and vim profiles
alias prof="vim ~/.zshrc"
alias vimprof="vim ~/.vimrc"
alias tmuxprof="vim ~/.tmux.conf"
alias bashprof="vim ~/.bashrc"
alias gitprof="vim ~/.gitconfig"
alias aka="vim ~/.bash_aliases"

alias tree="tree -L 1 -C"

# moving colors folder to vim 
alias vimkolor="cp -a colors ~/.vim"

# cmake call
alias cmaker="cmake .. -DCMAKE_INSTALL_PREFIX=/usr "

# better lisp shortcut
alias lisp="clisp "

# rescue genymotion
alias savegeny="sudo apt-get install virtualbox-dkms"

# initial setup installer from myapts file
#alias gamebegin=" $( grep -vE "^#" myapts | sudo apt-get install ) "
alias gamebegin=" grep -vE "^#" myapts | xargs sudo apt-get -y install "

# redirect to the newer grep
alias ack="ack-grep "

# start gui xampp
alias xampp="sudo /opt/lampp/manager-linux-x64.run &"

