set nocompatible                          " 与vi不兼容
filetype off                              " required!
set rtp+=$HOME/.vim/
set rtp+=$HOME/.vim/resource/php-manual/
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'Shougo/neocomplcache.git'
Plugin 'godlygeek/tabular.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'vim-scripts/L9.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'vim-scripts/LargeFile.git'
Plugin 'nono/jquery.vim.git'
" Plugin 'msanders/snipmate.vim.git'
Plugin 'tpope/vim-surround.git'
Plugin 'vim-scripts/Tagbar.git'
Plugin 'vim-scripts/matchit.zip.git'
Plugin 'vim-scripts/taglist.vim.git'
Plugin 'xsbeats/vim-blade'
Plugin 'eshion/vim-sftp-sync'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Plugin 'jnwhiteh/vim-golang'
Plugin 'fatih/vim-go'
Plugin 'slim-template/vim-slim'
Plugin 'justinmk/vim-sneak'
Plugin 'elzr/vim-json'
Plugin 'Glench/Vim-Jinja2-syntax'
Plugin 'vim-scripts/nginx.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bonsaiben/bootstrap-snippets'
Plugin 'Raimondi/delimitMate'

filetype plugin indent on                 " required!

let mapleader=","
let g:mapleader =","
set history=100
syntax on                                 " 语法高亮开启
set fileencodings=utf8,cp936,gb18030,big5
set termencoding=utf-8                    " 界面显示编码
set encoding=utf-8
set number                                " 显示行号
set tag=tags;                             " 听说分号不能少
set nobomb                                " 去掉utf-8 bom 头
set backspace=2                           " 不知道
set cindent                               " 自动缩进
set smarttab                              " 智能tab
set t_Co=256                              " 终端下设置成256色
set smartcase
set hlsearch                              " 高亮搜索文本
set ignorecase
" set smartindent
set tabstop=4                             " tab的长度
set shiftwidth=4                          " 自动缩进
set expandtab

set guifont=Monaco:h13         " 字体
set pumheight=15
set completeopt=longest,menu
set undofile
set incsearch
set autoindent
set laststatus=2
set directory=$HOME/.vim/tmp/swp_files    " 设置swp文件路径
set undodir=$HOME/.vim/tmp/undofiles
set colorcolumn=80
set viewoptions=folds,cursor
set foldminlines=10
colorscheme solarized                    " 颜色模式
set background=light
set backupdir=$HOME/.vim/tmp/swp_files
set cursorline 


so $HOME/.vim/ext.vim
if(has("win32") || has("win64"))
	so $HOME/.vim/windows.vim
endif
