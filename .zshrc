# Path to the oh-my-zsh installation.
export ZSH=/Users/Nico/.oh-my-zsh

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

# DOCKER MACHINE
eval $(docker-machine env Docky)

# Update the /etc/hosts file for all the docker machines
update-docker-hosts(){

	# clear existing *.docker.local entries from /etc/hosts
	sudo sed -i '' '/\.docker\.local$/d' /etc/hosts

	# iterate over each machine
	docker-machine ls | tail -n +2 | awk '{print $1}' | while read -r MACHINE; do
		MACHINE_IP="$(docker-machine ip ${MACHINE} 2>/dev/null)"
		[[ -n $MACHINE_IP ]] && sudo /bin/bash -c "echo \"${MACHINE_IP}	${MACHINE}.docker.local\" >> /etc/hosts"
		export no_proxy=$no_proxy,$MACHINE_IP
	done
}

dontknow()			{echo -n "¯\\_(ツ)_/¯" | pbcopy}
dockerbuster()		{docker run --rm --privileged -ti $@ debian:buster /bin/bash}
dockerstretch()		{docker run --rm --privileged -ti $@ debian:stretch /bin/bash}
dockerkali()		{docker run --rm --privileged -ti $@ kalilinux/kali-linux-docker /bin/bash}
loop()				{while [ 1 ]; do sh -c "$@"; done}

alias b="mpg123 ~/Downloads/bat.mp3 2> /dev/null"
