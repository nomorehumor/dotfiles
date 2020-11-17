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

#tesseract 
#export PATH=$PATH:$HOME/local/bin

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
