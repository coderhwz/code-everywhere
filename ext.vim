" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldminlines=2 foldlevel=0 foldmethod=marker nospell:


" 全局变量设置{

let g:ctags_bin = "/usr/local/bin/ctags"
let g:author = "coderhwz"

"}

"UI 设置{
if has("gui_running")
	set lines=50
	set columns=200
	set guioptions-=m     " 去掉menu
	set guioptions-=T     " 去掉toolbar
	set guioptions-=L     " 隐藏左侧滚动条
	set guioptions-=r     " 显示右侧滚动条
	winpos 260 171
endif
" }

" UI 操作设置 {
nnoremap <C-Right> :bn<CR>
nnoremap <C-Left> :bp<CR>
nnoremap <leader><space> :w<CR>
" 快捷键
nmap <Up> <c-w>k
nmap <Down> <c-w>j
nmap <Right> <c-w>l
nmap <Left> <c-w>h
" }

"CtrlP 设置{

let g:ctrlp_cache_dir="$HOME/.vim/tmp/ctrlp"
let g:ctrlp_custom_ignore = {
            \ 'dir':'(env\|vendor\|node_modules\|storage)',
    \}
let g:ctrlp_by_filename = 1
let g:ctrlp_regex = 1
let g:ctrlp_show_hidden = 1

nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRU<CR>

"}


" Tabularize 设置 { 

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
vmap <F4> :Tabularize/=><CR>

" }



" NERDTree 设置 {
"
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
let g:NERDTreeBookmarksFile=expand('$HOME') . "/.vim/tmp/nerdtree/bookmark"

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <S-F2> :NERDTreeMirror<CR>

autocmd FileType nerdtree noremap <buffer> <C-Right> <nop>
autocmd FileType nerdtree noremap <buffer> <C-Left> <nop>

" autocmd FileType nerdtree noremap <buffer> <leader>f <nop>
" autocmd FileType nerdtree noremap <buffer> <leader>bu <nop>

" let php_folding=1
let makeelementsuf = '\\\' " 把;;-->,,,
" }

" NeoComplete 设置{
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_auto_select = 0
" let g:neocomplete#max_list = 30
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 0
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
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'"{"}

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim"{"}
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" }

" NERD_commenter设置{

let NERDMenuMode=0
let NERDSpaceDelims=1

" }

" 字典设置{

" autocmd FileType php setlocal dict+=$HOME/.vim/resource/php.dict
" autocmd FileType php setlocal dict+=$HOME/.vim/resource/wp.dict
" autocmd FileType c setlocal dict+=$HOME/.vim/resource/gtk.c.dict

"}


autocmd BufNewFile,Bufread *.ros,*.inc,*.php set keywordprg="help"

" Session 保存 {
autocmd BufWinLeave * silent! mkview
autocmd BufWinEnter * silent! loadview
"}

autocmd BufRead,BufNewFile *.js set ft=javascript syntax=jquery


" syntatic 设置{

let makeprg ="/usr/local/php/bin/php -l %"
let g:syntastic_php_checkers=['php',  'phpmd']
let g:syntastic_javascript_checkers=['jshlint']

" }
if filereadable(expand("~/.vim/secret.vim"))
    source ~/.vim/secret.vim
endif


"UltiSnips 设置 {

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
let g:UltiSnipsEditSplit="vertical"
"编辑目录
let g:UltiSnipsSnippetsDir="~/.vim/resource/UltiSnips/"
"//可选目录
let g:UltiSnipsSnippetDirectories=["UltiSnips","resource/UltiSnips"]
let g:snippets_dir="$HOME/.vim/resource/snippets_hwz/" "代码片段的
let snips_author=g:author

" }


if (OSX())
" 输入法切换 {
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
" }
endif



" TagBar 设置 {

let g:tagbar_php_ctags_bin = "$HOME/.vim/bin/phpctags"
let g:tagbar_show_visibility = 1
let g:tagbar_type_php = {
    \ 'ctagsbin'  : g:tagbar_php_ctags_bin,
    \ 'ctagsargs' : '--memory="512m" -f -',
    \ 'kinds'     : [
        \ 'd:Constants:0:0',
        \ 'v:Variables:0:0',
        \ 'f:Functions:1',
        \ 'i:Interfaces:0',
        \ 'c:Classes:0',
        \ 'p:Properties:0:0',
        \ 'm:Methods:1',
        \ 'n:Namespaces:0',
        \ 't:Traits:0',
    \ ],
    \ 'sro'        : '::',
    \ 'kind2scope' : {
        \ 'c' : 'class',
        \ 'm' : 'method',
        \ 'f' : 'function',
        \ 'i' : 'interface',
        \ 'n' : 'namespace',
        \ 't' : 'trait',
    \ },
    \ 'scope2kind' : {
        \ 'class'     : 'c',
        \ 'method'    : 'm',
        \ 'function'  : 'f',
        \ 'interface' : 'i',
        \ 'namespace' : 'n',
        \ 'trait'     : 't',
    \ }
    \ }
nmap <leader>tt :TagbarToggle<CR>
" }

" ag.vim {
let g:ag_working_path_mode="r"
"}

"PHP.vim {
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

"}

"Air Line{

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_tabs = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab
"}

" markdown {
au BufRead,BufNewFile *.md setlocal textwidth=80
let g:vim_markdown_frontmatter=1
let g:vim_markdown_toml_frontmatter = 1
" }


let g:ycm_key_invoke_completion="<C-F>"

function! GetHTML()
python << EOF
import vim, BeautifulSoup, urllib
handle = urllib.urlopen(vim.current.line)
soup = BeautifulSoup.BeautifulSoup(handle.read())
vim.current.buffer[:] = soup.prettify().split('\n')
EOF
endfunction
