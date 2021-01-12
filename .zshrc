source ~/.dotfiles/.zshrc_base
source ~/.dotfiles/.zshrc_private_kitcar
source ~/.dotfiles/.zshrc_kitcar

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir virtualenv rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
plugins=(git zsh-autosuggestions)

stty intr ^y
source ~/.oh-my-zsh/oh-my-zsh.sh

alias brain="cd ~/kitcar/kitcar-ros/KITcar_brain"
#junction classifier project
alias road="roslaunch kitcar_debugger road_watcher_debug.launch"
alias jun="nvim ~/kitcar/kitcar-ros/KITcar_brain/src/perception/src/road_object_detection/debug/classifiers/junction_classifier_debug.cpp"

#mtrack config
alias mtconf="sudo nvim /usr/share/X11/xorg.conf.d/50-mtrack.conf"
alias conf="nvim ~/.config/i3/config"
alias polyconf="nvim ~/.config/polybar/config"
alias dfg="cd /var/www/dfgviewer_local/public/typo3conf/ext/dfgviewer/Classes/Plugins"
alias dlf="cd /var/www/dfgviewer_local/public/typo3conf/ext/dlf/Classes/Plugin"
alias dfglog="cd /var/www/dfgviewer_local/var/log"
alias typo3="cd /var/www/dfgviewer_local/"
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


#tesseract 
#export PATH=$PATH:$HOME/local/bin

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}


#kitcar
#export ROS_IP="10.10.0.XX"
#export ROS_MASTER_URI="http://10.10.0.1:11311"
