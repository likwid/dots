if [[ -a /usr/local/bin/vim ]]; then
  export EDITOR=/usr/local/bin/vim
else
  export EDITOR=/usr/bin/vim
fi

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export GOPATH=~/yum/projects/go
