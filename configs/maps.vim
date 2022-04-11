""""""""""
" LEADER "
""""""""""

let mapleader=","

""""""""""
" SAVE   "
""""""""""
nnoremap <silent><M-w> <CMD>write<BAR>echo "Save #"<CR>
inoremap <silent><M-w> <CMD>write<BAR>echo "Save #"<CR>

""""""""""
" QUIT   "
""""""""""
nnoremap <silent><M-q> <CMD>q<CR>
inoremap <silent><M-q> <ESC><CMD>q<CR>

"""""""""""
" BUFFERS "
"""""""""""

"" CLOSE BUFFER
nnoremap <expr><silent><M-c> exists(":Bdelete")? "<CMD>Bdelete<CR>"  : "<CMD>bd<CR>"

"" MOVE BETWEEN BUFFERS
nnoremap <silent><M-S-Right> <CMD>bnext<BAR>echo ".->-"<CR>
nnoremap <silent><M-S-Left> <CMD>bp<CR><CMD>echo "-<-."  <CR>

"" PANEL NAVIGATION
nnoremap <silent><M-Left> <C-w>h<CMD>echo "█ ▒" <CR>
nnoremap <silent><M-Right> <C-w>l<CMD>echo "▒ █" <CR>
nnoremap <silent><M-Down> <C-w>j<CMD>echo "▒▄▒" <CR>
nnoremap <silent><M-up> <C-w>k<CMD>echo "▒▀▒" <CR>

""""""""""
" INDENT "
""""""""""
vnoremap <silent>> >gv
vnoremap <silent>< <gv

""""""""""
" COPY   "
""""""""""
vnoremap <silent><C-c> "+y:echo ""<CR>

""""""""""""""
" SELECT ALL "
""""""""""""""
nnoremap <silent><C-a> gg0vG$

"""""""""""""""""""""
" FORMAT AUTOINDENT "
"""""""""""""""""""""
noremap <silent><M-i> gg=G<C-o>

"""""""""
" SPLIT "
"""""""""
nnoremap <silent><M-s>v <CMD>vertical split<CR>
nnoremap <silent><M-s>h <CMD>split<CR>

""""""""""""""""""
" OVERWRITE HOME "
""""""""""""""""""
nnoremap <silent><HOME> <CMD>call HomeVSC()<CR>
inoremap <silent><HOME> <C-o>:call HomeVSC()<CR>

"""""""""""""""
" OTGGLERS)   "
"""""""""""""""
nnoremap <silent><leader>tw <CMD>set wrap!<BAR>echo "蝹"<CR>
nnoremap <silent><leader>tn <CMD>set number!<BAR> echo "" <CR>
nnoremap <silent><leader>tr <CMD>set relativenumber!<BAR>echo ""<CR>
nnoremap <silent><Leader>th <CMD>set hlsearch!<CR>
nnoremap <silent><leader>ti <CMD>IndenLinesToggle<CR>
nnoremap <silent><leader>tl <CMD>set list!<CR>

"""""""""""""""""
" Try surrounds "
"""""""""""""""""
vnoremap <silent> ( c(<C-r><C-o>")<ESC>bvi(
vnoremap <silent> [ c[<C-r><C-o>"]<ESC>bvi[
vnoremap <silent> { c{<C-r><C-o>"}<ESC>bvi{
vnoremap <silent> ' c'<C-r><C-o>"'<ESC>bvi'
vnoremap <silent> " c"<C-r><C-o>""<ESC>bvi"


"""""""""""""""""""""""
" Try map the comment "
"""""""""""""""""""""""
" inoremap <silent><C-S-7> :echo "asd"<CR>

""""""""""""
" NVIM TREE"
""""""""""""
nnoremap <silent><A-b> :NvimTreeToggle<CR>

nnoremap <silent><M-e> <Cmd>CocCommand explorer --toggle --sources=buffer+,file+<CR>

