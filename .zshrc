source ~/.dotfiles/.zshrc_base
source ~/kitcar/kitcar-init/config/zshrc_private

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir virtualenv rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
plugins=(git zsh-autosuggestions)

stty intr ^y
source ~/.oh-my-zsh/oh-my-zsh.sh

alias brain="cd ~/kitcar/kitcar-ros/KITcar_brain"
#junction classifier project
alias road="roslaunch kitcar_debugger road_watcher_debug.launch"
alias jun="cd ~/kitcar/kitcar-ros/KITcar_brain/src/perception/src/road_object_detection/"

#mtrack config
alias mtconf="sudo nvim /usr/share/X11/xorg.conf.d/50-mtrack.conf"
alias conf="nvim ~/.config/i3/config"
alias polyconf="nvim ~/.config/polybar/config"
alias dfg="cd /var/www/dfgviewer_local/public/typo3conf/ext/dfgviewer/Classes/Plugins"
alias dlf="cd /var/www/dfgviewer_local/public/typo3conf/ext/dlf/Classes/Plugin"
alias dfglog="cd /var/www/dfgviewer_local/var/log"
alias typo3="cd /var/www/dfgviewer_local/"
alias ssd_ss="/media/max/Seagate/kitcar/small_stoplines"
alias jun_test="cd ~/kitcar/kitcar-ros/KITcar_brain/build/perception/test/test_junction/junction_stop_left"
alias onnx="cd ~/kitcar/kitcar-ros/KITcar_jetson/src/jetson_perception/src"
alias r=ranger
#export PATH="/home/max/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
export DOTFILES="~/.dotfiles"

#osg 
export PATH=${PATH}:/home/max/OpenSceneGraph/bin
export PATH=${PATH}:/home/max/OpenSceneGraph/examples
export PATH=${PATH}:/home/max/Qt/Tools/QtCreator/bin
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/home/max/OpenSceneGraph/lib
export OSG_FILE_PATH=/home/max/OpenSceneGraph-Data:/home/max/OpenSceneGraph-Data/Images
export OMP_THREAD_LIMIT=1

export PATH=${PATH}:/home/max/pycharm-2021.1/bin

#tesseract 
#export PATH=$PATH:$HOME/local/bin

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

alias python=python3
alias pip=pip3

export PATH=${PATH}:/usr/bin/python3

#kitcar
#export ROS_IP="10.10.0.XX"
#export ROS_MASTER_URI="http://10.10.0.1:11311"
#
export PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:/usr/local/lib

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /home/max/kitcar/kitcar-machine-learning/init/bashrc # for kitcar-machine-learning repository
source /home/max/kitcar/kitcar-machine-learning/init/bashrc # for kitcar-machine-learning repository

# Bookmarks
[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"
export MARKER_KEY_GET='\C-A'

export PYTHONPATH=${PYTHONPATH}:/home/max/.local/lib/python3.8/site-packages
export PYTHONPATH=${PYTHONPATH}:/usr/lib/python3/dist-packages
source /home/max/kitcar/kitcar-machine-learning/init/bashrc # for kitcar-machine-learning repository
source /home/max/kitcar/kitcar-machine-learning/init/bashrc # for kitcar-machine-learning repository


alias fzi="openvpn3 session-start --config ~/vpns/fzi.ovpn"
alias kit="openvpn3 session-start --config ~/vpns/kit.ovpn"
source /home/max/kitcar/kitcar-python-utils/init/bashrc # for kitcar-python-utils repository
source /home/max/kitcar/kitcar-python-utils/init/bashrc # for kitcar-python-utils repository
alias r="ranger"
