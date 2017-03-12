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
alias gassume='git update-index --assume-unchanged '
alias gmine='git checkout --ours -- '
alias gtheirs='git checkout --theirs -- '
alias hardreset='git reset --hard '

# git submodules 
alias gitnewmod="git submodule add "
alias gpullmods="git submodule update --init --recursive"
alias gitmods="vim .gitmodules "
alias gitmodcurrent="git submodule update " # this pulls the saved state
alias gitmodupdate="git submodule foreach git pull origin master"
# use git extras to ignore files
alias gitnot="git ignore "
alias gshremote="git remote -v"
alias gchngorigin="git remote set-url origin "
alias guntrackedgone="git status --porcelain | grep '^??' | cut -c4- >> .gitignore"


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
alias lsd='ls -1 -d */ '
alias opendir='nautilus . '
alias blank='cd ~/blank'
alias docs='cd ~/Documents'
alias ytfolder='cd ~/Documents/yt_lessons'
alias dwnl='cd ~/Downloads'
alias dropb='cd ~/Dropbox'
alias xtrarepo='cd ~/Documents/source-code/misc'
alias blogs='cd ~/Documents/source-code/blog'
alias mycode='cd ~/Documents/source-code'
alias builds='cd ~/Documents/source-code/builds'
alias thinks='cd /mnt/depot/Think_tank'
alias experia='cd ~/experia'
alias bkmrkgtk='cd ~/.config/gtk-3.0/bookmarks'

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
alias stash="vim ~/.stash"

alias treeuno="tree -L 1 -C"

# cmake call
alias cmaker="cmake .. -DCMAKE_INSTALL_PREFIX=/usr "

# better lisp shortcut
alias lisp="clisp "

# better 'bundle exec' shortcut
alias bex="bundle exec "
alias rails="bundle exec rails "
alias rake="bundle exec rake "

# rescue genymotion
alias savegeny="sudo apt-get install virtualbox-dkms"

# initial setup installer from myapts file
#alias gamebegin=" $( grep -vE "^#" myapts | sudo apt-get install ) "
alias gamebegin=" grep -vE "^#" myapts | xargs sudo apt-get -y install "

# redirect to the newer grep
alias ack="ack-grep "

# start gui xampp
alias xampp="sudo /opt/lampp/xampp start "
alias lampconf="sudo vim /opt/lampp/etc/httpd.conf"

# npm alias
alias npmall="npm list -g --depth=0 "

# start postgres
alias pgstart="psql postgres"

# when audio acting up
alias fixaudio="sudo alsa force-reload"

# restore battery icon
alias baticon="/usr/lib/x86_64-linux-gnu/indicator-power/indicator-power-service &disown"

# update gem system
alias gemupdate="gem update --system "

# backup atom packages
alias pkgatom="apm list --installed --bare > ~/atom-packages.list"
alias repatom="apm install --packages-file atom-packages.list"

# check the public ip
alias publcip="wget -qO- http://ipecho.net/plain ; echo "

# gradle
alias mvdroid="cp -f ~/sdk/grady/gradle-wrapper.properties gradle/wrapper/. "
alias prepdroid="sudo chmod +x gradlew "
alias droidprof="vim app/build.gradle"
alias droidconf="vim build.gradle"
alias rundroid='findapk | head -1 | xargs adb-run.sh '
alias droidgo=' findapk | xargs adb-gone.sh'
alias drup='sendapk && rundroid'

alias findapk=' find -name "*.apk" '
alias findappid='grep -r --include "*.gradle" "applicationId.*\".*\"" | grep -o "\".*\"" '
alias mkdroid="gradle assembleDebug"
alias sendapk='find -name "*.apk" | head -1 | xargs adb install -r '
alias edigrad=' find -name "build.gradle" | xargs subl '
alias ediprop=' subl gradle.properties '

