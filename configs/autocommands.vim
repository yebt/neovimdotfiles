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

autocmd BufNewFile,BufRead *.md set conceallevel=2

autocmd FileType apache setlocal commentstring=#\ %s

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


