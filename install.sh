#! /bin/bash

if [ ! -e $HOME/.oh-my-zsh ]
then
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [ ! -e $HOME/.oh-my-zsh/themes/theme_perso.zsh-theme ]
then
    ln -s $(pwd)/theme_perso.zsh-theme $HOME/.oh-my-zsh/themes/theme_perso.zsh-theme
fi

if [ ! -L $HOME/.zshrc ]
then
    mv $HOME/.zshrc $HOME/.zshrc.old
    ln -s $(pwd)/linux/.zshrc $HOME/.zshrc
fi
