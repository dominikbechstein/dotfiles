# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="taybalt"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# When a partial line is preserved, by default you will see an inverse+bold
# character at the end of the partial line: a "%" for a normal user or a "#"
# for root. If set, the shell parameter PROMPT_EOL_MARK can be used to customize
# how the end of partial lines are shown.
PROMPT_EOL_MARK=

HISTSIZE=999999
SAVEHIST=999999

# keep the trailing slash after choosing a directory from the zsh completion options
setopt no_auto_remove_slash

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    coffee
    colored-man
    colorize
    command-not-found
    common-aliases
    compleat
    copyfile
    cp
    dircycle
    docker
    emoji-clock
    encode64
    extract
    git
    git-extra
    git-hubflow
    git-prompt
    git-remote-branch
    gitfast
    github
    gitignore
    history
    history-substring-search
    iwhois
    jsontools
    jump
    lol
    node
    npm
    phing
    ssh-agent
    sudo
    supervisor
    svn
    svn-fast-info
    systemd
    terminalapp
    themes
    tmux
    urltools
    web-search
    yum
    zsh-syntax-highlighting
)

# User configuration

source $ZSH/oh-my-zsh.sh

# run tmux if not yet done
if [ "$TMUX" = "" ]; then
    tmux -u2;
fi

eval $(dircolors -b ~/.dircolors)

# to get key codes .. use esc, ctrl+v or cat
bindkey  "^[[1~"   beginning-of-line
bindkey  "^[[4~"   end-of-line

# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "^[Ol" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * /
bindkey -s "^[Ol" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"

# Load and run scripts
autoload -U compinit    &&  compinit -i
autoload -U colors      &&  colors

source ~/.zsh_aliases
