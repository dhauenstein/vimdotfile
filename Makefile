install:
	test -d bundle/Vundle.vim || (mkdir -p bundle && git clone https://github.com/gmarik/Vundle.vim bundle/Vundle.vim)
install-plugins:
	vim +PluginInstall +qall