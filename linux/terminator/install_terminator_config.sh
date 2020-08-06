#! /bin/bash

if [ ! -L $HOME/.config/terminator/config ]
then
	mv $HOME/.config/terminator/config $HOME/.config/terminator/config.old
	ln -s $(pwd)/config $HOME/.config/terminator/config
fi

