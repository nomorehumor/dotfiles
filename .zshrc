source "/Users/Max/.dotfiles/.zshrc_base"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"

alias cs=$HOME/Desktop/csgorun/
alias john=/Users/Max/JohnTheRipper/run/./john

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

export PATH="/usr/local/opt/llvm/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

#binutis
export LDFLAGS="-L/usr/local/opt/binutils/lib"
export CPPFLAGS="-I/usr/local/opt/binutils/include"

#MacOS aliases
alias bs="cd ~/Desktop/Studium/BS"

#OSG
export OSGHOME="$HOME/OpenSceneGraph"
export PATH="${PATH}:${OSGHOME}/lib:${OSGHOME}/lib/osgPlugins-3.6.4"
export DYLD_LIBRARY_PATH="${OSGHOME}/lib:${OSGHOME}/lib/osgPlugins-3.6.4"
export OSG_FILE_PATH="$HOME/OpenSceneGraph-Data:$HOME/OpenSceneGraph-Data/Images"
export PATH="/usr/local/opt/binutils/bin:$PATH"
