" LOAD PACKER CONFIG
"augroup packer_user_config
"  autocmd!
"  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
"augroup end

" 
" AUTOINSTALL
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

augroup reload_config
    autocmd!
    autocmd BufWritePost ~/.config/nvim/*.vim :source ~/.config/nvim/init.vim
    "autocmd BufWritePost ~/.config/nvim/*.lua :source % 
augroup end

" RESTORE CURSOR
augroup restore_cursor
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup end

" AUTO HIGHLIGHT 
"autocmd CursorHold * silent call HoldCursor()
" autocmd CursorHold * call HighlightCursorWord()

" TOGGLE REMAP
autocmd TermEnter term://*toggleterm#* tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
autocmd TermEnter term://*toggleterm#* tnoremap <silent><A-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" SET FILETYPES
autocmd BufNewFile,BufRead *.blade.php nnoremap <leader>bf <CMD>CocCommand blade.bladeFormatter.run<CR>:echo "BLADE FORMATER"<CR>

" COMMENTS JSON
autocmd FileType json syntax match Comment +\/\/.\+$+

" GIT BRANCH
"augroup GetGitBranch
"    autocmd!
"    autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
"augroup END

" PHP INIT CHARACTER
augroup phpinitcharacter
    autocmd!
    autocmd BufNewFile,BufRead *.php inoremap <silent>< <C-o>:call PHPinitCharacter()<cr>
augroup END


