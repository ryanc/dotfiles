install: install-vim install-git install-bash install-colordiff install-hg \
		 install-mutt

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/.vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/.gitconfig ~/.gitconfig

install-bash:
	rm -f ~/.bash_profile ~/.inputrc
	ln -s `pwd`/.bash_profile ~/.bash_profile
	ln -s `pwd`/.inputrc ~/.inputrc

install-colordiff:
	rm -f ~/.colordiffrc
	ln -s `pwd`/.colordiffrc ~/.colordiffrc

install-hg:
	rm -f ~/.hgrc
	ln -s `pwd`/.hgrc ~/.hgrc

install-mutt:
	rm -f ~/.muttrc
	ln -s `pwd`/.muttrc ~/.muttrc
