SHELL=/bin/bash

install:
	@echo "linking / installing ... gitconfig, bash_profile"
	ln -s "$$(pwd)/.gitconfig" ~/.gitconfig
	ln -s "$$(pwd)/.bash_profile" ~/.bash_profile
	[ -f "$$(pwd)/.gitlocal" ] && ln -s "$$(pwd)/.gitlocal" ~/.gitlocal || echo "gitlocal file not found, skipping ..."

uninstall:
	@echo "Force unlink / uninstall ..."
	-unlink ~/.bash_profile
	-unlink ~/.gitconfig
	-unlink ~/.gitlocal
	-unalias -a

dev-link:
	@echo "linking this folder to ~/dotfiles"
	ln -s "$$(pwd)" ~/dotfiles

dev-unlink:
	unlink ~/dotfiles
