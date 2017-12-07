# Path to your oh-my-zsh installation.  export ZSH=/home/cliff/.oh-my-zsh Set name of the theme to load.
export ZSH="$HOME/.oh-my-zsh"

# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kphoen"
#ZSH_THEME="rkj-repos"

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
plugins=(git dirhistory zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/sbin:/usr/.local/bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
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

#move all alias to separate file
if [ -f ~/.bash_aliases ]; then 
	. ~/.bash_aliases
fi

# stash
if [ -f ~/.stash ]; then 
	. ~/.stash
fi

# default editors
export EDITOR="vim"
#export PROFILE="~/.zshrc"

#manager ruby through rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

### added by the heroku toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# enable control-s and control-q
stty start undef
stty stop undef
setopt noflowcontrol

# add z directory search
. ~/z.sh

### Use default adb
export GRADLE_USER_HOME="$HOME/.gradle"
export ANDROID_HOME="$HOME/sdk"
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"
# export Gradle folder to $GRADVER in ~/.stash
export GRADLE_HOME="$HOME/mygradle/$GRADVER"
export PATH="${PATH}:$GRADLE_HOME/bin"

# prefer xterm
export TERM=xterm-256color

# add some custom scripts to path
export PATH="$HOME/mybin:$PATH"

# add pip modules to path
export PATH="$HOME/.local/bin/:$PATH"

# add composer stuff
export PATH="$HOME/.composer/vendor/bin:$PATH"

# highlight code in less
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '

cless () {
    pygmentize -gf terminal "$1" | less -R
}

# bash-16 shell colors
# prefer: flat,monokai,isotope, macintosh, summerfruit
BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-summerfruit.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

#linuxbrew
export PATH="/home/cliff/.linuxbrew/bin:$PATH"
export MANPATH="/home/cliff/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/cliff/.linuxbrew/share/info:$INFOPATH"

# added by Anaconda3 4.2.0 installer
#export PATH="/home/kole/anaconda3/bin:$PATH"

# gvm
[[ -s "/home/cliff/.gvm/scripts/gvm" ]] && source "/home/cliff/.gvm/scripts/gvm"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
