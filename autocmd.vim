"=== AUTOCOMMANDS ===
"
augroup reload_config
    autocmd!
    "autocmd BufWritePost init.vim source <afile> 
    " autocmd BufWritePost ~/.config/nvim/*.vim source init.vim 
    autocmd BufWritePost ~/.config/nvim/*.vim source %
    "    :echo "PILLE"
augroup end


augroup restore_cursor
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup end


autocmd BufNewFile,BufRead *.blade.php nnoremap <leader>bf <CMD>CocCommand blade.bladeFormatter.run<CR>:echo "BLADE FORMATER"<CR>


augroup GetGitBranch
    autocmd!
    autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END


autocmd TermEnter term://*toggleterm#*
            \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>


autocmd TermEnter term://*toggleterm#*
            \ tnoremap <silent><A-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>



" try use php initp
function! PHPinitCharacter()
    if line('.') == 1
        " echo "asdf"
        call append(line('.')-1,"<?php")
    endif
endfunction
augroup phpinitcharacter
    autocmd!
    autocmd BufNewFile,BufRead *.php inoremap <silent>< <C-o>:call PHPinitCharacter()<cr>
augroup END


" TRY config fold
function! SetAtFold()
    let tempfiletype=&filetype
    if (tempfiletype == 'vim')
        set foldmethod=marker
        set foldlevel=0
    else
        set foldmethod=expr
        set foldlevel=99
        AnyFoldActivate
        " call CocAction('fold')
        " call CocAction('fold')
    endif
endfunction
autocmd BufNewFile,BufEnter *.* call SetAtFold()
