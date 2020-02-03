# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
export PYTHONPATH="${PYTHONPATH}:~/Desktop/python"
export JAVA_HOME=$(/usr/libexec/java_home)
export BOT_TOKEN="1062169710:AAF-KZFJoLjy1nlS7GdR0F9Z9KWcbS2ha2A"
export BOT_NAME="maxTestInfoBot"
export PATH="$PATH:~/Desktop/flutter/bin"
export JDBC_DATABASE_URL="jdbc:postgresql://localhost:5432/postgres"
export TEST_BOT_TOKEN="1062169710:AAF-KZFJoLjy1nlS7GdR0F9Z9KWcbS2ha2A"
alias bedit='vim ~/.bash_profile'
alias prog='cd ~/Desktop/Studium/Programmieren/'
set -o vi
alias vedit='vim ~/.vimrc'
alias py='cd ~/Desktop/python/'
alias c='clear'
# from sh and its derivates (bash, dash, ksh, zsh etc.)
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

#git in prompt

#if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  #__GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  #GIT_PROMPT_ONLY_IN_REPO=1
