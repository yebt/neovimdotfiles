set background=dark

"colorscheme [desert, ]

"colorscheme nord
"colorscheme ayu
" colorscheme dracula
colorscheme PaperColor
" colorscheme material
"colorscheme elly
"colorscheme solarized
"colorscheme kanagawa
" colorscheme github_dark_colorblind
" colorscheme github_dark_default
" colorscheme everblush
" colorscheme monokai_pro
"colorscheme monokai_soda

" Put this on lua
" ayu-> #171F26
" material ocean deep-> #161927
" highlight IndentBlanklineIndent1 guifg=#1D2234 gui=nocombine
" highlight FoldColumn ctermfg=14 ctermbg=242 guifg=#424A76
"highlight IndentBlanklineContextChar cterm=nocombine guifg=#33395B
" highlight IndentBlanklineIndent1 guifg=#292936  gui=nocombine



set statusline= 
"set statusline+=%#PmenuSel#
set statusline+=%#PmenuSel#
"set statusline+=%{StatuslineGit()}
"set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\ 
set statusline+=%#LineNr#
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 
