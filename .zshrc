# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export KITCAR_REPO_PATH="/home/max/ssd/kitcar"
source "$KITCAR_REPO_PATH/kitcar-init/config/zshrc"

source ~/.dotfiles/.zshrc_base
#source ~/kitcar/kitcar-init/config/zshrc_private

VIM_MODE_VICMD_KEY='^D'


ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir virtualenv rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
plugins=(git zsh-autosuggestions)
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

source ~/.oh-my-zsh/oh-my-zsh.sh

alias brain="cd $KITCAR_REPO_PATH/kitcar-ros/KITcar_brain"
#junction classifier project
alias road="roslaunch kitcar_debugger road_watcher_debug.launch"
alias jun="cd ~/kitcar/kitcar-ros/KITcar_brain/src/perception/src/road_object_detection/"

#mtrack config
alias mtconf="sudo nvim /usr/share/X11/xorg.conf.d/50-mtrack.conf"
alias conf="nvim ~/.config/i3/config"
alias polyconf="nvim ~/.config/polybar/old/config.ini"
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
export PATH=${PATH}:/media/max/Seagate/idea-IU-211.7442.40/bin
export PATH=${PATH}:/home/max/idea
export PATH=${PATH}:/home/max/scripts
export PATH=${PATH}:/home/max/firefox
export PATH=${PATH}:~/Desktop/geckodriver

#tesseract 
#export PATH=$PATH:$HOME/local/bin

# prompt_context() {
  #if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    #prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  #fi
#}

alias python=python3
alias pip=pip3

export PATH=${PATH}:/usr/bin/python3

#kitcar
export ROS_IP="10.10.0.XX"
export ROS_MASTER_URI="http://10.10.0.1:11311"
#
export PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:/usr/local/lib

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Bookmarks
[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"
export MARKER_KEY_GET='\C-A'

export PYTHONPATH=${PYTHONPATH}:/home/max/.local/lib/python3.8/site-packages
export PYTHONPATH=${PYTHONPATH}:/usr/lib/python3/dist-packages
export PYTHONPATH=${PYTHONPATH}:/home/max/FZI/patch_attacks_on_detection/yolov3


alias fzi="openvpn3 session-start --config ~/vpns/fzi.ovpn"
alias kit="openvpn3 session-start --config ~/vpns/kit.ovpn"
alias kit_deactivate="openvpn3 session-manage --disconnect --config /home/max/vpns/kit.ovpn"
source /home/max/kitcar/kitcar-python-utils/init/bashrc # for kitcar-python-utils repository
alias r="ranger"

alias disk="/media/max/Seagate"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /opt/ros/noetic/setup.zsh
source ~/catkin_ws/devel/setup.zsh

# Google Drive
alias drive="google-drive-ocamlfuse ~/myGoogleDrive"
