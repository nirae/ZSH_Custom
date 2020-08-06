#! /bin/bash

if [ ! -e $HOME/config/terminator ]
then
    mkdir $HOME/.config/terminator
fi

if [ -e  $HOME/.config/terminator/config ] && [ ! -L $HOME/.config/terminator/config ]
then
	mv $HOME/.config/terminator/config $HOME/.config/terminator/config.old
fi

if [ ! -L $HOME/.config/terminator/config ]
then
    ln -s $(pwd)/config $HOME/.config/terminator/config
fi
