"=== AUTOCOMMANDS ===
"
augroup reload_config
	autocmd!
	"autocmd BufWritePost init.vim source <afile> 
	autocmd BufWritePost ~/.config/nvim/*.vim source init.vim 
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



