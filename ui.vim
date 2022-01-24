" === UI CONFIG COLORS ===

set termguicolors
set background=dark

"colorscheme gruvbox
" colorscheme onedark
lua << EOF 
 require('kanagawa').setup({
--     undercurl = true,           -- enable undercurls
     commentStyle = "italic",
--     -- functionStyle = "NONE",
     functionStyle = "bold",
     keywordStyle = "italic",
--     statementStyle = "bold",
--     typeStyle = "NONE",
--     variablebuiltinStyle = "italic",
     specialReturn = true,       -- special highlight for the return keyword
     specialException = true,    -- special highlight for exception handling keywords 
     transparent = false,        -- do not set background color
--     colors = {},
--     overrides = {},
})
-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
EOF 

lua << EOF
-- require('onedark').setup({
-- functionStyle="bold",
-- sidebars = {
--     "qf", "vista_kind", "terminal", "packer"
-- },
-- 
-- })
EOF

" === CORRCTION COLOR ===

hi! link SignColumn Normal

" === STATUS LINE ===
" set laststatus=2
" set statusline=
" set statusline+=%2*
" set statusline+=%{StatuslineMode()}
" set statusline+=%1*
" set statusline+=\ 
" set statusline+=<
" set statusline+=<
" set statusline+=\ 
" set statusline+=%f
" set statusline+=\ 
" set statusline+=>
" set statusline+=>
" "set statusline+=%{nvim_treesitter#statusline(90)} 
" set statusline+=%=
" set statusline+=%m
" set statusline+=%h
" set statusline+=%r
" set statusline+=\ 
" set statusline+=%3*
" set statusline+=%{b:gitbranch}
" set statusline+=%1*
" set statusline+=\ 
" set statusline+=%4*
" set statusline+=%F
" set statusline+=:
" set statusline+=:
" set statusline+=%5*
" set statusline+=%l
" set statusline+=/
" set statusline+=%L
" set statusline+=%1*
" set statusline+=|
" set statusline+=%y
" hi User2  ctermbg=lightgreen ctermfg=black guibg=lightgreen guifg=black
" hi User1  ctermfg=white  guifg=white
" hi User3  ctermfg=lightblue  guifg=lightblue
" hi User4  ctermfg=lightgreen  guifg=lightgreen
" hi User5  ctermfg=magenta  guifg=magenta


"" Match Tgh
highlight link matchTag Search
highlight link matchTag MatchParen
highlight matchTag gui=reverse

highlight link matchTagError Todo
