# Path to your oh-my-zsh installation.  export ZSH=/home/cliff/.oh-my-zsh Set name of the theme to load.
export ZSH="/home/cliff/.oh-my-zsh"
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
#ZSH_THEME="chris"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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

# default editors
export EDITOR="vim"
export PROFILE="~/.zshrc"

## don't like using rake
alias koans='ruby path_to_enlightenment.rb'

## serve the current folder on local host
alias serveFolder='python -m SimpleHTTPServer'

# apt-get shortcuts
alias aptinst='sudo apt-get install'
alias aptrepo='sudo add-apt-repository'
alias aptnew='sudo apt-get update'
alias ytdl='youtube-dl -f 18 '

### added by the heroku toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

## folders
alias docs='cd ~/Documents'
alias dwnl='cd ~/Downloads'
alias dropb='cd ~/Dropbox'
alias xtrarepo='cd ~/Documents/source-code/misc'
alias liveservers='cd ~/live-servers'

#get mp4 videos
alias ytdl='youtube-dl -f 18 '

#edit basic shell and vim profiles
alias vimprof="vim ~/.vimrc"
alias prof="vim ~/.zshrc"
alias tmuxprof="vim ~/.tmux.conf"
alias bashprof="vim ~/.bashrc"

#manager ruby through rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH="$HOME/live-servers/mongodb/bin:$PATH"


#postgres install
export PATH="/usr/lib/postgresql/9.4/bin:$PATH"

#use same oh-my-zsh theme in tmux
alias tmux="TERM=screen-256color-bce tmux"

#add cpanm to path for vimana installation
# [https://github.com/c9s/Vimana]
# export PATH="$HOME/bin:$PATH"
# export PATH="$HOME/perl5/bin:$PATH"

#export perl5 lib
export PERL5LIB="$HOME/perl5/lib/perl5"
export PATH="$HOME/perl5/bin:$PATH"
