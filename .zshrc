# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export CLICOLOR=1

export ZSH="/Users/Max/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

ZSH_THEME="powerlevel9k/powerlevel9k"

export BOT_TOKEN="1062169710:AAF-KZFJoLjy1nlS7GdR0F9Z9KWcbS2ha2A"
export BOT_NAME="maxTestInfoBot"
export TEST_BOT_TOKEN="1062169710:AAF-KZFJoLjy1nlS7GdR0F9Z9KWcbS2ha2A"
export MYSQL_HOST="localhost"
export MYSQL_PASS="Theye0011"
export MYSQL_USER="root"
export MYSQL_DB_NAME="docs"

alias src="source ~/.zshrc"
alias edit='nvim ~/.zshrc'
alias prog='cd ~/Desktop/Studium/Programmieren/'
set -o vi
alias vedit='nvim ~/.vimrc'
alias py='cd ~/python/'
alias c='clear'
alias vias ="nvim"
alias books="/Users/Max/Documents/Книги"
alias swt="/Users/Max/Desktop/Studium/SWT/SWT\ Workspace"
alias forum="~/K-Forum/k_site && workon forum"
alias my="mysql -u root -pTheye0011"
# from sh and its derivates (bash, dash, ksh, zsh etc.)
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

# Theme settings
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir virtualenv rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

plugins=(git zsh-autosuggestions)

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#mysql
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
