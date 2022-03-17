"""" LEADER MAP
let mapleader=","

"""" BUFFER ACTIONS
"" SAVE
nnoremap <silent><M-w> <CMD>write<BAR>echo ""<CR>
inoremap <silent><M-w> <CMD>write<BAR>echo ""<CR>
"" QUIT
nnoremap <silent><M-q> <CMD>q<CR>
inoremap <silent><M-q> <ESC><CMD>q<CR>
"" CLOSE BUFFER
nnoremap <expr><silent><M-c> exists(":Bdelete")? "<CMD>Bdelete<CR>"  : "<CMD>bd<CR>"
"" MOVE BETWEEN BUFFERS
nnoremap <silent><M-S-Right> <CMD>bnext<BAR>echo "»"<CR>
nnoremap <silent><M-S-Left> <CMD>bp<CR><CMD>echo "«"  <CR>

" " PANEL NAVIGATION
nnoremap <silent><M-Left> <C-w>h<CMD>echo "█ ▒" <CR>
nnoremap <silent><M-Right> <C-w>l<CMD>echo "▒ █" <CR>
nnoremap <silent><M-Down> <C-w>j<CMD>echo "▒▄▒" <CR>
nnoremap <silent><M-up> <C-w>k<CMD>echo "▒▀▒" <CR>

" " INDENT 
vnoremap <silent>> >gv
vnoremap <silent>< <gv

" " COPY
vnoremap <silent><C-c> "+y:echo ""<CR>
" " SELECT ALL
nnoremap <silent><C-a> gg0vG$
" " FORMAT AUTOINDENT
noremap <silent><M-i> gg=G<C-o>

" " SPLIT
nnoremap <silent><M-s>v <CMD>vertical split<CR>
nnoremap <silent><M-s>h <CMD>split<CR>

" " TOGGLE WRAP
nnoremap <silent><leader>w <CMD>set wrap!<BAR>echo "蝹"<CR>
nnoremap <silent><leader>n <CMD>set number!<BAR> echo "" <CR>
nnoremap <silent><leader>r <CMD>set relativenumber!<BAR>echo ""<CR>
nnoremap <silent><Leader>h <CMD>set hlsearch!<CR>
nnoremap <silent><leader>i <CMD>IndentBlanklineToggle<CR>

" " SPECTRE 
nnoremap <silent><leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <silent><leader>s <cmd>lua require('spectre').open_visual()<CR>
nnoremap <silent><leader>ss viw:lua require('spectre').open_file_search()<CR>

" " TERM 
nnoremap <silent><C-t> <cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><C-t> <ESC><cmd>exe v:count1 . "ToggleTerm"<CR>
" nnoremap <silent><A-t> <cmd>exe v:count1 . "ToggleTerm"<CR>
" inoremap <silent><A-t> <ESC><cmd>exe v:count1 . "ToggleTerm"<CR>

" " NVIM TREE
nnoremap <silent><A-b> <cmd>NvimTreeToggle<CR>

" " TRY USE C-BACKSPACE
inoremap <silent><C-H> <C-w>

" " TRY USE BACKETS ON VISUAL
vnoremap <silent>( <ESC>gvS)
vnoremap <silent>{ <ESC>gvS}
vnoremap <silent>[ <ESC>gvS]

" " OVERWRITE HOME
nnoremap <silent><HOME> <CMD>call HomeVSC()<CR>
inoremap <silent><HOME> <C-o>:call HomeVSC()<CR>

nnoremap <silent><C-h> 10zh
nmap <silent><C-l> 10zl
" nnoremap <silent><C-l> 10zl

" " TELESCOPE BUFFERS
nnoremap <silent><leader>tb <CMD>Telescope buffers theme=dropdown<CR>
nnoremap <silent><leader>td <CMD>Telescope diagnostics theme=cursor<CR>
nnoremap <silent><leader>th <CMD>Telescope oldfiles theme=ivy<CR>
nnoremap <silent><leader>tff <CMD>Telescope oldfiles theme=ivy<CR>
nnoremap <silent><leader>tfw <CMD>Telescope oldfiles theme=ivy<CR>

" """ COC 

" "" DIAGNOSTICS
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" "" GOTO CODE NAVIGATION

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K <CMD>CocShowDoc<CR>

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ Check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

" " Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

nmap <leader>crn <Plug>(coc-rename)

" " Formatting selected code.
xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)

" " Applying codeAction to the selected region.
" " Example: `<leader>aap` for current paragraph
xmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-selected)


" " Remap keys for applying codeAction to the current buffer.
nmap <leader>cac  <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
nmap <leader>cqf  <Plug>(coc-fix-current)

" " Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)
" "  Hover
nnoremap <silent> <leader>d :call CocActionAsync('doHover')<cr>
" " Coc Explorer
nnoremap <silent><M-e> <Cmd>CocCommand explorer --toggle --sources=buffer-,file+<CR>

imap <C-l> <Plug>(coc-snippets-expand)
