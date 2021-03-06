# If you come from bash you might have to change your $PATH.
#
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/ridwanmsharif/.oh-my-zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# [[ $TERM != "screen"  ]] && exec tmux

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
# HYPHEN_INSENSITIVE="true"

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
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1"  ] && [ -s $BASE16_SHELL/profile_helper.sh  ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# eval `dircolors ~/.dir_colors/dircolors`
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
eval $(thefuck --alias)

PATH="$PATH:/usr/local/go/bin"
GOROOT="$HOME/go"
PATH="$PATH:$GOROOT/bin"
export GOPATH="$HOME/Software"
export PATH="$PATH:$GOPATH/bin"
export PATH=$HOME/sys161/bin:$HOME/sys161/tools/bin:$PATH 
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/bin:/usr/local/bin:/usr/local/opt/texinfo/bin:$HOME/sys161/bin:$HOME/sys161/tools/bin:$PATH
export PATH="$PATH:$GOPATH/native/clion-2019.2.1/bin"
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$HOME/bin"

alias fullscreen='wmctrl -r :ACTIVE: -b add,fullscreen'
alias nofullscreen='wmctrl -r :ACTIVE: -b remove,fullscreen'
alias rms='ssh r5sharif@linux.student.cs.uwaterloo.ca'
alias open="xdg-open"
alias woman="man"
alias gs="git status"
alias gb="git checkout -b"
alias gc="git commit"
alias ga="git add"
alias checkout="git checkout"
alias branch="git branch"
alias python="python3"
alias song='spotifycli'
alias pbcopy="xclip -sel clip"
alias f="fuck"
alias ff="fuck -y"
alias ccat="/bin/cat"
alias cat="bat"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export TERM=xterm-256color
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi
