colorscheme kanagawa

"set statusline= 
""set statusline+=%#PmenuSel#
"set statusline+=%#PmenuSel#
"set statusline+=%{StatuslineGit()}
"set statusline+=%#LineNr#
"set statusline+=\ %f
"set statusline+=%m\ 
"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ %y
""set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
""set statusline+=\[%{&fileformat}\]
"set statusline+=\ %p%%
"set statusline+=\ %l:%c
"set statusline+=\ 

let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_banner = 0
let g:netrw_list_hide = &wildignore

hi! BufferCurrent  guifg=#dcd7ba guibg=#363646 gui=bold,underline
hi! BufferCurrentMod guifg=#ff9e3b guibg=#363646 gui=bold,italic,underline
hi! BufferCurrentSign guibg=#363646
hi! BufferInactive guifg=#888888 guibg=#1f1f28 
hi! BufferInactiveMod guifg=#888888 guibg=#1f1f28 gui=italic

hi! IndentBlanklineIndent1 guifg=#2C2C3A gui=nocombine 
