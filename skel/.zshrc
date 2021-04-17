export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/custom_zsh"
ZSH_THEME="sluuudge"

HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

nginx_link() {
    sudo cp $1 /etc/nginx/sites-enabled
}

nginx_load() {
    sudo service nginx restart
}

reload_zsh() {
    source ~/.zshrc
}

source ~/.env
