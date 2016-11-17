Congiguration files
=====
Mainly for my personal usage.
With it, it is convenient to set up the working environment.

For setting:
* vim
* screen
* tmux

Installation:

	git clone git@github.com:jeary49252000/.config.git ~/.vim

Create symlinks:
	
	ln -s ~/.vim/.vimrc ~/.vimrc

Switch to the `~/.vim` directory, and fetch submodules:

	cd ~/.vim
	git submodule init
	git submodule update
