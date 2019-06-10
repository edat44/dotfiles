#ZSH_TMUX_AUTOSTART=true
#ZSH_TMUX_AUTOSTART_ONCE=true
#ZSH_AUTOCONNECT=true
#ZSH_TMUX_AUTOQUIT=true

#if which tmux 2>&1 >/dev/null; then
#    if [ "$TMUX" = "" ]; then
#        if tmux ls | grep -v attached; then
#            #tmux attach
#        else
#            #tmux
#        fi
#    fi
#fi

#If you come from bash you might have to change your $PATH.
  export PATH=$HOME/bin:/usr/local/bin:$HOME/anaconda3/bin:$PATH
  export PATH=$HOME/quartus/bin:$PATH
  export PATH=/opt/cisco/anyconnect/bin:$PATH

  # Use Java 8
  export PATH=/usr/jdk1.8.0_201/bin:$PATH 
  export COWPATH="/usr/share/cowsay"

  export DEFAULT_USER=edat44

# Path to your oh-my-zsh installation.
  export ZSH=/home/edat44/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load au random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="agnoster"
    #"robbyrussell"
    #"tjkirch"
    #theunraveler minimal
    #miloshadzic  good
    #xiong-chiamiov-plus
    #gnzh
    #muse
    #bureau
    #ys
    #wedisagree

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
  HYPHEN_INSENSITIVE="true"

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
  COMPLETION_WAITING_DOTS="true"

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
plugins=(
  git
  common-aliases
  copyfile
  jsontools
  last-working-dir
  npm
  rand-quote
  tmux
  web-search
  wd
)

source $ZSH/oh-my-zsh.sh

umask 0002

export EDITOR=/usr/bin/vim

# User configuration

# Enables horizontal scrolling
synclient HorizTwoFingerScroll=1

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
  export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
  export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

STUDENT () {
    echo "eatkins1@student$1.cse.nd.edu"
}

HELIOS_REMOTE () {
    echo "eatkins1@remote$1.helios.nd.edu"
}

function sshnew() {
    hostname=$1
    shift
    if [ "$hostname" = "dbclass" ]
    then
        ssh $DATABASE $@
    elif [ "$hostname" -ge 0 ] && [ "$hostname" -le 4 ]
    then
        ssh "$(STUDENT $hostname)" $@
    elif [ "$hostname" -ge 300 ] && [ "$hostname" -le 308 ]
    then
        ssh "$(HELIOS_REMOTE $hostname)" $@
    fi
}

DATABASE="eatkins1@34.238.200.26"

alias sshdbclass="ssh $DATABASE"

alias mountusb="sudo mount /dev/sdb1 /media/usb"

alias mips="java -jar /home/edat44/Documents/UCD/comp30080/Mars4_5.jar &"

export DBPERSONAL="3.95.80.50"
