# Introduction
_termux.sh_ is setup shell script to install and setup various packages in termux terminal for android. It can setup **bash, zsh, vim** and few other tools. It writes reasonable configuration files.<br>
**_Note_**: Please make sure that configuration files like .zshrc/.bashrc/.vimrc etc are either not present or are empty to ensure proper working.


# Usage
	`sh termux.sh <ARGUMENT>`

## Help
	`sh termux.sh help`


# List of Arguments

	help    = shows the list of all valid arguments and their description
	all     = installs everything
	bash    = setup .bashrc
	zsh     = installs zsh and setup .zshrc. To change default shell use "chsh" and type "zsh"
	ohmyzsh = installs oh-my-zsh
	vim     = installs vim-python and setup .vimrc
	fasd    = install and setup fasd
	fzf     = install fzf and add common aliases like fcd and fv
	neovim  = install neovim and setup init.vim
	storage = enables access to phone storage
