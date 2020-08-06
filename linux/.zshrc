# Path to the oh-my-zsh installation.
export ZSH=/home/nico/.oh-my-zsh

# Set name of the theme to load.
# Stored in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
ZSH_THEME="theme_perso"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# GO CONFIG
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Pip PATH
export PATH=$PATH:"/home/nico/.local/bin"


dontknow()			{echo -n "¯\\_(ツ)_/¯" | pbcopy}
dockerbuster()		{docker run --rm --privileged -ti $@ debian:buster /bin/bash}
dockerstretch()		{docker run --rm --privileged -ti $@ debian:stretch /bin/bash}
dockerkali()		{docker run --rm --privileged -v $(pwd):/data -ti $@ kalilinux/kali-linux-docker /bin/bash}
loop()				{while [ 1 ]; do sh -c "$@"; done}

function from_hex() {
    python -c "print(0x$1)"
}

function to_hex() {
    python -c "print('{:x}'.format($1))"
}

# Flatpak binaries
export XDG_DATA_DIRS=/usr/share:/var/lib/flatpak/exports/share:/home/nico/.local/share/flatpak/exports/share

# ls colors
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'



