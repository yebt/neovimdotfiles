" Load config from plugins and options
augroup reload_plugins
    autocmd!
    autocmd BufWritePost ~/.config/nvim/configs/1_options.vim :so %
    autocmd BufWritePost ~/.config/nvim/configs/5_plugins.vim  :so %
    autocmd BufWritePost ~/.config/nvim/configs/5_plugins.vim
                \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
                \|   PlugInstall --sync | q
                \| endif

    autocmd VimEnter *
                \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
                \|   PlugInstall --sync | q
                \| endif

augroup end

augroup phpinitcharacter
    autocmd!
    autocmd BufNewFile,BufRead *.php inoremap <expr><silent>< line('.')==1? "\<?php<CR><CR>"  : "<"
augroup end

augroup restore_cursor
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup end

autocmd TermEnter term://*toggleterm#* tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
autocmd TermEnter term://*toggleterm#* tnoremap <silent><A-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>


"autocmd BufNewFile,BufRead *.blade.php nnoremap <leader>bf <CMD>CocCommand blade.bladeFormatter.run<CR>:echo 'BLADE FORMATER'<CR>
autocmd FileType json syntax match Comment +\/\/.\+$+
"autocmd CursorHold * silent call HighlightCursorWord()

command! -nargs=0 Format :call CocActionAsync('format')

autocmd BufNewFile,BufRead *.md set conceallevel=2
