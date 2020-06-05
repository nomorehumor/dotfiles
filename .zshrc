source ".dotfiles/.zshrc_base"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Virtualenvwrapper things
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_PYTHON="/Users/Max/.pyenv/shims/python"
source /usr/local/bin/virtualenvwrapper.sh

#mysql
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

#Homebrew ? (opencv installation)
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/Users/Max/geckodriver/
#Java path
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-14.0.1.jdk/Contents/Home"

