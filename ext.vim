"窗体设置
if has("gui_running")
	set lines=50
	set columns=200
	set guioptions-=m     " 去掉menu
	set guioptions-=T     " 去掉toolbar
	set guioptions-=L     " 隐藏左侧滚动条
	set guioptions-=r     " 显示右侧滚动条
	winpos 260 171
endif

nnoremap <C-Right> :bn<CR>
nnoremap <C-Left> :bp<CR>
nnoremap <leader><space> :w<CR>
" nnoremap <leader>ff :FufFile<CR>
" nnoremap <leader>fb :FufBuffer<CR>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRU<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <S-F2> :NERDTreeMirror<CR>
let g:NERDTreeBookmarksFile=expand('$HOME') . "/.vim/tmp/nerdtree/bookmark"

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-W>l
" 快捷键
nmap <Up> <c-w>k
nmap <Down> <c-w>j
nmap <Right> <c-w>l
nmap <Left> <c-w>h
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap < <><LEFT>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
vmap <F4> :Tabularize/=><CR>

inoremap  <c-]> <c-x><c-]> "ctags 补全快捷键

let snips_author='hwz'                                                             " 代码片段的作者

"""""""""""""""""""""""""""NERDTree""""""""""""""""""""""
let NERDTreeShowBookmarks   = 0
let NERDTreeWinPos          = "left"
let NERDTreeHijackNetrw     = 1
let NERDTreeQuitOnOpen      = 0
let NERDTreeWinSize         = 30
let NERDTreeChDirMode       = 2
let NERDTreeDirArrows       = 0 
let NERDTreeMinimalUI       = 0
let NERDChristmasTree       = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeIgnore = ['\.pyc$']

" let php_folding=1
let makeelementsuf = '\\\' " 把;;-->,,,



"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_auto_select = 1
" let g:neocomplete#max_list = 30
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


"""""""""""""""""""""""""""Status Bar """""""""""""""""

let g:fuf_dataDir="$HOME/.vim/tmp/fuf-data"
let g:ctrlp_cache_dir="$HOME/.vim/tmp/ctrlp"
let g:snippets_dir="$HOME/.vim/resource/snippets_hwz/" "代码片段的
let g:neocomplcache_temporary_dir="$HOME/.vim/tmp/neocomplcache"

""""""""""""""""""""""""""NERD_commenter """"""""""""""""
let NERDMenuMode=0
let NERDSpaceDelims=1
""""""""""""""""""""""""""NERD_commenter END """"""""""""""""
" let g:loaded_syntastic_plugin=0


autocmd FileType nerdtree noremap <buffer> <C-Right> <nop>
autocmd FileType nerdtree noremap <buffer> <C-Left> <nop>
" autocmd FileType nerdtree noremap <buffer> <leader>f <nop>
" autocmd FileType nerdtree noremap <buffer> <leader>bu <nop>
autocmd BufNewFile,Bufread *.ros,*.inc,*.php set keywordprg="help"
autocmd BufWinLeave * silent! mkview
autocmd BufWinEnter * silent! loadview
autocmd FileType php setlocal dict+=$HOME/.vim/resource/php.dict
autocmd FileType php setlocal dict+=$HOME/.vim/resource/wp.dict
autocmd FileType c setlocal dict+=$HOME/.vim/resource/gtk.c.dict
autocmd BufRead,BufNewFile *.js set ft=javascript syntax=jquery

" if has('unix')
" let g:ctrlp_user_command =
    " \ 'find %s -type f | grep -v -P "\.png$|\.jpg|\.gif|\.bmp|\.so|tags|/tmp/|/\.hg/|/\.git/"'          " MacOSX/Linux
" endif

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
nnoremap <silent> <F3> :TlistToggle<CR>
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_WinWidth=30
let g:Tlist_Use_Right_Window=1
let g:Tlist_Show_One_File=1
let g:TlistEnable_Fold_Column=0
let tlist_php_settings = 'php;c:class;f:function;d:constant'
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"

" syntatic
let makeprg ="/usr/local/php/bin/php -l %"
let g:syntastic_php_checkers=['php',  'phpmd']
let g:syntastic_javascript_checkers=['jshlint']
" let g:syntastic_phpcs_conf='--standard=PEAR'
" let g:syntastic_php_phpcs_args="--report=csv --standard=PSR2"
source ~/.vim/secret.vim
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
let g:UltiSnipsEditSplit="vertical"
"编辑目录
let g:UltiSnipsSnippetsDir="~/.vim/resource/UltiSnips/"
"//可选目录
let g:UltiSnipsSnippetDirectories=["UltiSnips","resource/UltiSnips"]

" set wildignore+=env/*

let g:ctrlp_custom_ignore = {
            \ 'dir':'(env|vendor|node_modules)',
    \}

let g:delimitMate_expand_space=1
let g:delimitMate_expand_cr=1
" let g:airline_powerline_fonts = 1
"
" let g:ycm_collect_identifiers_from_tags_files=1
" function! ToggleInputMethod()
    " let s:result = system("~/.vim/bin/xkbswitch -gn")

    " if s:result == "3"
        " let s:x = system("~/.vim/bin/xkbswitch -sn 0")
    " endif
" endfunction

" autocmd InsertLeave * :call ToggleInputMethod()

let g:switchLib = "/Users/osx001/.vim/bin/libInputSourceSwitcher.dylib"
function! ToggleInputMethod(method)
    if a:method == 'com.apple.keylayout.US'
        let s:result = libcall(g:switchLib , 'Xkb_Switch_setXkbLayout', a:method)
    endif
    let s:char = matchstr(getline("."), '\%' . col('.') . 'c.')
    if s:char=~#"[\u4e00-\u9fa5]"
        let s:result = libcall(g:switchLib , 'Xkb_Switch_setXkbLayout', a:method)
    endif

endfunction



autocmd InsertLeave * call ToggleInputMethod('com.apple.keylayout.US')
autocmd InsertEnter * call ToggleInputMethod('com.baidu.inputmethod.BaiduIM.wubi')



nmap <leader>tt :TagbarToggle<CR>
