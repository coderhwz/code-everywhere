#/bin/bash

github="https://github.com/"
plugins=(
'Shougo/neocomplcache.git' 
'godlygeek/tabular.git' 
'Lokaltog/vim-powerline.git'
'fholgado/minibufexpl.vim.git'
'vim-scripts/FuzzyFinder.git'
'scrooloose/syntastic.git'
'scrooloose/nerdtree.git'
'scrooloose/nerdcommenter.git'
'vim-scripts/L9.git'
'kien/ctrlp.vim.git'
)
for i in ${plugins[@]}; do
	git clone $github$i
done
