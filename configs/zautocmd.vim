augroup reload_plugins
    autocmd!
    autocmd BufWritePost ~/.config/nvim/configs/options.vim :so %
    autocmd BufWritePost ~/.config/nvim/configs/plugins.vim  :so %
    autocmd BufWritePost ~/.config/nvim/configs/plugins.vim
                \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
                \|   PlugInstall --sync | q
                \| endif

    autocmd VimEnter *
                \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
                \|   PlugInstall --sync | q
                \| endif

augroup end

augroup phpconfigs
    autocmd!
    autocmd BufNewFile,BufRead *.php inoremap <expr><silent>< line('.')==1? "\<?php<CR><CR>"  : "<"
    autocmd BufNewFile,BufRead *.php nnoremap <silent><M-r> :TermExec cmd="php %:p" direction=float  hidden=true<cr> 
augroup end

augroup restore_cursor
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup end

autocmd FileType json syntax match Comment +\/\/.\+$+

autocmd BufNewFile,BufRead,BufEnter *.md 
            \set conceallevel=2 |
            \set tabstop=2 |
            \set shiftwidth=2 |
            \set softtabstop=2 |
            \set concealcursor= |
            \set spell |
            \set spelllang=es,en_us

autocmd BufNewFile,BufRead,BufEnter *.md inoremap <silent><C-b>  ****<Left><Left>
autocmd BufNewFile,BufRead,BufEnter *.md imap <silent><C-i>  **<Left>
autocmd BufNewFile,BufRead,BufEnter *.md inoremap <silent><C-S-k>  ```<CR>```<Up>
autocmd BufNewFile,BufRead,BufEnter *.md inoremap <silent><C-k> []()<Left><Left><Left>
autocmd BufNewFile,BufRead,BufEnter *.md inoremap <silent><C-S-i> ![]()<Left><Left><Left>

"let g:polyglot_disabled = ['markdown']
"let g:polyglot_disabled = ['markdown.plugin']
"let g:vim_markdown_conceal = 0

autocmd BufNewFile,BufRead *.py set completeopt-=menu |
            \set completeopt+=menuone |  
            \set completeopt-=longest |
            \set completeopt-=preview |
            \set completeopt+=noinsert |
            \set completeopt-=noselect |
            \imap <silent><C-Space> <C-x><C-u>


autocmd FileType apache setlocal commentstring=#\ %s

" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

"autocmd Filetype NvimTree setlocal tabstop=2| setlocal shiftwidth=2| setlocal set softtabstop=2
autocmd Filetype NvimTree setlocal tabstop=2| setlocal shiftwidth=2 
