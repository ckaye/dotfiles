ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(bundler brew gem ruby history-substring-search autojump docker docker-compose tmux zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

#set editor
export EDITOR="subl -n -w"

export GOPATH=~/go
export GOROOT=/usr/local/opt/go/libexec
export PATH="${HOME}/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"
export PATH=$PATH:GOROOT/bin:GOPATH/bin

# Set language encodings
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#rbenv init
eval "$(rbenv init -)"

# This loads nvm
export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

#Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Store and load aliases from ~/.aliases file
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

