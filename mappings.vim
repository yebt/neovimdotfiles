" === MAPPINGS ===

" usage

let mapleader = ","

"buffcontorl
nmap <silent><M-w> :w<CR>
nmap <silent><M-q> :q<CR>

nmap <M-c> :Bdelete<cr>

" abreviations
vmap <silent><C-c> "+y:echo ""<cr> 
nmap <silent><C-A> gg0vG$<cr> 
nmap <silent><M-i> gg=G<C-o>

" split
nmap <M-s>v :vertical split<cr>
nmap <M-s>h :split<cr>



"togllers
nnoremap <silent><leader>w :set wrap!<cr>
nnoremap <silent><leader>n :set number!<cr>
nnoremap <silent><leader>r :set relativenumber!<cr>

"navigation
nmap <silent><M-S-Right> :bn<cr>
nmap <silent><M-S-Left> :bp<cr>


" == PLUGINS ==

" tmux
nnoremap <silent> <M-Left> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <M-Up> :TmuxNavigateUp<cr>
nnoremap <silent> <M-Right> :TmuxNavigateRight<cr>

" Spectre
nnoremap <leader>s :lua require('spectre').open()<CR>
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>


" Terminal
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <silent><A-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><A-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" tree
nmap <A-b> :NvimTreeToggle<CR>

" indentline toggle
nnoremap <silent><leader>l :IndentBlanklineToggle <cr>




"" coc explorer
nmap <M-e> <Cmd>CocCommand explorer<CR>
