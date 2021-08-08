SHELL = /bin/bash

default: install

install: create-dirs
	sh -c 'curl -fLo ${HOME}/.local/share/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	nvim +'PlugInstall --sync' +qa

create-dirs:
	@mkdir -vp "~/.cache/nvim/"{session,tags}
	mkdir -vp "~/.config/nvim/plugged"

uninstall:
	rm -rf ${HOME}/.local/share/nvim
	rm -rf ${HOME}/.config/nvim/plugged/*
