" LEADER MAP
let mapleader =","

" BUFFER ACTIONS
nnoremap <silent><M-w> :w<CR>
nnoremap <silent><M-q> :q<CR>
nnoremap <silent><M-c> :bd<CR>
nnoremap <silent><M-S-Right> :bn<CR>
nnoremap <silent><M-S-Left> :bp<CR>

" PANEL NAVIGATION
nnoremap <silent><M-Left> <C-w>h
nnoremap <silent><M-Right> <C-w>l
nnoremap <silent><M-Down> <C-w>j
nnoremap <silent><M-up> <C-w>k

" INDENT 
vnoremap <silent>> >gv
vnoremap <silent>< <gv

" COPY
vnoremap <silent><C-c> "+y:echo "Copy "<CR>
" SELECT ALL
nnoremap <silent><C-a> gg0vG$
" FORMAT AUTOINDENT
noremap <silent><M-i> gg=G<C-o>

" SPLIT
nnoremap <silent><M-s>v :vertical split<CR>
nnoremap <silent><M-s>h :split<CR>
nnoremap <silent><M-s> :split<CR>

" TOGGLE WRAP
nnoremap <silent><leader>w :set wrap!<CR>
nnoremap <silent><leader>n :set number!<CR>
nnoremap <silent><leader>r :set relativenumber!<CR>

" SPECTRE 
nnoremap <silent><leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <silent><leader>s <cmd>lua require('spectre').open_visual()<CR>
nnoremap <silent><leader>ss viw:lua require('spectre').open_file_search()<CR>

" TERM 
nnoremap <silent><C-t> <cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><C-t> <ESC><cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <silent><A-t> <cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><A-t> <ESC><cmd>exe v:count1 . "ToggleTerm"<CR>

" CHADTREE
nnoremap <silent><A-b> <CMD>CHADopen<CR> 

" NVIM TREE
nnoremap <silent><A-n><A-n> <cmd>NvimTreeToggle<CR>
nnoremap <silent><A-n>r <cmd>NvimTreeRefresh<CR>
nnoremap <silent><A-n>f <cmd>NvimTreeFindFile<CR>

" TRY USE C-BACKSPACE
inoremap <silent><C-H> <C-w>

" TRY USE BACKETS ON VISUAL
vnoremap <silent>( <ESC>gvS)
vnoremap <silent>{ <ESC>gvS}
vnoremap <silent>[ <ESC>gvS]

" OVERWRITE HOME
nnoremap <silent><HOME> :call HomeVSC()<CR>
inoremap <silent><HOME> <C-o>:call HomeVSC()<CR>

nnoremap <silent><S-ScrollWheelDown> zl
nnoremap <silent><S-ScrollWheelUp> zh
nnoremap <silent><zl> 5zl
nnoremap <silent><zh> 5zh 

