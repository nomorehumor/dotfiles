source ~/.dotfiles/.zshrc_base
source ~/.dotfiles/.zshrc_private_kitcar
source ~/.dotfiles/.zshrc_kitcar

ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions)

stty intr ^y
source ~/.oh-my-zsh/oh-my-zsh.sh

alias brain="cd ~/kitcar/kitcar-ros/KITcar_brain"

export PATH="/home/max/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
