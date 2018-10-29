# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
source $HOME/.zsh/zsh-options.zsh
plugins=(git brew httpie)
source $ZSH/oh-my-zsh.sh

source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/exports.zsh
source $HOME/.zsh/shims.zsh

fpath=(/usr/local/share/zsh/site-functions $fpath)
autoload -U compinit && compinit
autoload -U promptinit; promptinit
prompt spaceship

# Enable asdf version manager
test -e $HOME/.asdf/asdf.sh && source $HOME/.asdf/asdf.sh

# Enable autocompletes
test -e /usr/local/share/zsh/site-functions/_aws && source /usr/local/share/zsh/site-functions/_aws
test -e /usr/local/share/zsh/site-functions/_tig && source /usr/local/share/zsh/site-functions/_tig
test -e /usr/local/share/zsh/site-functions/_lein && source /usr/local/share/zsh/site-functions/_lein
test -e $HOME/.asdf/completions/asdf.bash && source $HOME/.asdf/completions/asdf.bash

[ -s ~/.zshrc.local ] && source ~/.zshrc.local

export PATH=/usr/local/go/bin:$GOPATH/bin:$PATH
