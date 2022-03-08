" ┌────────────────────────────────┐
" │⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⡿⠟⠻⢿⣶⣶⣶⣤⣄⡀⠀⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⠀⢀⣴⡿⠛⠉⠉⠀⠀⢸⣿⡁⠀⠀⠈⠉⠉⠉⠉⠻⣿⡄⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⢀⣾⡟⠀⠀⠀⠀⠀⠀⠀⠻⣷⣤⡄⠀⠀⠀⠘⠃⠀⣿⣷⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣇⣀⣀⣀⣀⣀⣀⣿⣿⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⣿⡿⠿⠿⠿⠿⣿⣿⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⠘⢿⣿⠀⠀⣄⣀⠀⠀⠀⣀⣀⠀⠀⣿⡇⠀⣀⡀⠀⣿⣿⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⣿⡿⠿⠿⠿⢿⣿⠀⠀⣿⡇⠀⢻⣷⣤⣿⠏⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⠀⢸⣿⣤⣤⣿⡇⠀⠀⠀⢸⣿⣤⣤⣿⡇⠀⠀⠉⠉⠁⠀⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀  ⠀│
" │    --- by bey: MAPPINGS ---    │
" └────────────────────────────────┘
"
" LEADER MAP
let mapleader =","

" BUFFER ACTIONS
nnoremap <silent><M-w> <CMD>w<CR><CMD>echo ""<CR>
inoremap <silent><M-w> <ESC><CMD>w<CR><CMD>echo ""<CR>
nnoremap <silent><M-q> <CMD>q<CR>
inoremap <silent><M-q> <ESC><CMD>q<CR>

nnoremap <expr><silent><M-c> exists(":Bdelete")? "<CMD>Bdelete<CR>"  : "<CMD>bd<CR>"

nnoremap <silent><M-S-Right> <CMD>bn<CR><CMD>echo "ﲖ"   <CR>
nnoremap <silent><M-S-Left> <CMD>bp<CR><CMD>echo "ﲕ"  <CR>

" PANEL NAVIGATION
nnoremap <silent><M-Left> <C-w>h<CMD>echo "" <CR>
nnoremap <silent><M-Right> <C-w>l<CMD>echo "" <CR>
nnoremap <silent><M-Down> <C-w>j<CMD>echo "" <CR>
nnoremap <silent><M-up> <C-w>k<CMD>echo "" <CR>

" INDENT 
vnoremap <silent>> >gv
vnoremap <silent>< <gv

" COPY
vnoremap <silent><C-c> "+y:echo "📎"<CR>
" SELECT ALL
nnoremap <silent><C-a> gg0vG$
" FORMAT AUTOINDENT
noremap <silent><M-i> gg=G<C-o>

" SPLIT
nnoremap <silent><M-s>v <CMD>vertical split<CR>
nnoremap <silent><M-s>h <CMD>split<CR>
nnoremap <silent><M-s> <CMD>split<CR>

" TOGGLE WRAP
nnoremap <silent><leader>w <CMD>set wrap!<CR><CMD>echo "蝹"<CR>
nnoremap <silent><leader>n <CMD>set number!<CR><CMD> echo "" <CR>
nnoremap <silent><leader>r <CMD>set relativenumber!<CR><CMD>echo ""<CR>

nnoremap <silent><leader>i <CMD>IndentBlanklineToggle<CR>

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
nnoremap <silent><HOME> <CMD>call HomeVSC()<CR>
inoremap <silent><HOME> <C-o>:call HomeVSC()<CR>

" map <C-ScrollWheelUp> 10zh
" map <C-ScrollWheelDown> 10zl
" nnoremap <silent><zl> 10zl
" nnoremap <silent><zh> 5zh 
nnoremap <silent><C-h> 10zh
nnoremap <silent><C-l> 10zl

" TELESCOPE BUFFERS
"nnoremap <silent><leader>b <CMD>Telescope buffers theme=ivy<CR>
"nnoremap <silent><leader>b <CMD>Telescope buffers theme=dropdown <CR>
"nnoremap <silent><leader>b <CMD>Telescope buffers theme=cursor <CR>
nnoremap <silent><leader>b <CMD>Telescope buffers theme=dropdown<CR>
nnoremap <silent><leader>d <CMD>Telescope diagnostics theme=cursor<CR>
nnoremap <silent><leader>th <CMD>Telescope oldfiles theme=ivy<CR>
nnoremap <silent><leader>tff <CMD>Telescope oldfiles theme=ivy<CR>
nnoremap <silent><leader>tfw <CMD>Telescope oldfiles theme=ivy<CR>

nnoremap <silent><leader>h :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>

