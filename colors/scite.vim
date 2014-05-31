" Vim color file
" Maintainer:	Gergely Kontra <kgergely@mcl.hu>
" Last Change:	2002. 04. 09.

" I'm a bit red-blind, so if you have suggestions, don't hesitate :)
"           ^^^^^^^^^ Sorry, I cannot speak English well, just want to say,
"           that in some rare cases I cannot distinguish between some colors
"           (I've just realized it, when I see some special tests)

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "scite"

" hardcoded colors :

" GUI
"highlight Normal	guifg=#7F6F5F	guibg=#eeeeee
highlight Normal	guifg=#7F6F5F	
highlight Search	guibg=#bbbbbb	gui=bold
highlight Visual	guifg=#DADADA
highlight Folded	guifg=#ffffff	
highlight Cursor	guifg=#666666		gui=bold
highlight Special	guifg=#7F007F		gui=bold
highlight Comment	guifg=#007F00	
highlight StatusLine	guifg=#000000	
highlight StatusLineNC	guifg=#557777	
highlight Statement	guifg=#007F7F			gui=bold
highlight Type		guifg=#0000ff   gui=NONE
highlight Function	guifg=#007F7F	gui=bold
highlight LineNr	guifg=#000000	
highlight FoldColumn	guifg=#000000	
highlight Define	guifg=#00007F	 gui=bold
highlight Number	guifg=#000000	 gui=bold
highlight Subtitle	guifg=#000000	 gui=bold,underline
highlight String	guifg=#7F007F	
highlight Delimiter	guifg=#000000		gui=bold
highlight PreProc	guifg=#0000ff		gui=bold
highlight Constant	guifg=#000000	 gui=underline,bold

"{{{

"}}}


