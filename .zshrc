# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export CLICOLOR=1

export ZSH="/Users/Max/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh

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


# Theme settings
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir virtualenv rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

plugins=(git zsh-autosuggestions)

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
