" RltvNmbr.vim
"   Author: Charles E. Campbell
"   Date:   Feb 22, 2011
"   Version: 4b	ASTRO-ONLY
" ---------------------------------------------------------------------
"  Load Once: {{{1
if &cp || exists("g:loaded_RltvNmbrPlugin")
 finish
endif
let g:loaded_RltvNmbrPlugin = "v4b"
if !has("signs")
 echoerr 'Sorry, your vim is missing +signs; use  "configure --with-features=huge" , recompile, and install'
 finish
endif
let s:keepcpo= &cpo
set cpo&vim

" ---------------------------------------------------------------------
"  Public Interface: {{{1
com! -bang				RltvNmbr	call RltvNmbr#RltvNmbrCtrl(<bang>1)
silent! com -nargs=0	RN			call RltvNmbr#RltvNmbrToggle()

if has("gui_running") && has("menu") && &go =~# 'm'
 if !exists("g:DrChipTopLvlMenu")
  let g:DrChipTopLvlMenu= "DrChip."
 endif
 exe "menu ".g:DrChipTopLvlMenu."RltvNmbr.Start<tab>:RltvNmbr	:RltvNmbr<cr>"
endif
if !exists("b:rltvnmbrmode")
 let b:rltvnmbrmode= 0
endif

" ---------------------------------------------------------------------
"  Restore: {{{1
let &cpo= s:keepcpo
unlet s:keepcpo
" vim: ts=4 fdm=marker
