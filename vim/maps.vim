let mapleader=","

nnoremap <silent><M-w> <CMD>write<CR>
inoremap <silent><M-w> <CMD>write<CR>

nnoremap <silent><M-q> <CMD>q<CR>
inoremap <silent><M-q> <ESC><CMD>q<CR>

nnoremap <expr><silent><M-c> exists(":Bdelete")? "<CMD>Bdelete<CR>"  : "<CMD>bd<CR>"

nnoremap <silent><M-S-Right> <CMD>bnext<BAR>echo ".->-"<CR>
nnoremap <silent><M-S-Left> <CMD>bp<CR><CMD>echo "-<-."  <CR>

nnoremap <silent><M-Left>  <C-w>h<CMD>echo "█─▒" <CR>
nnoremap <silent><M-Right> <C-w>l<CMD>echo "▒─█" <CR>
nnoremap <silent><M-Down>  <C-w>j<CMD>echo "▒▄▒" <CR>
nnoremap <silent><M-up>    <C-w>k<CMD>echo "▒▀▒" <CR>

vnoremap <silent>> >gv
vnoremap <silent>< <gv

vnoremap <silent><C-c> "+y:echo ""<CR>

nnoremap <silent><C-a> gg0vG$

noremap <silent><M-i> gg=G<C-o>

nnoremap <silent><M-s>v <CMD>vertical split<CR>
nnoremap <silent><M-s>h <CMD>split<CR>

nnoremap <silent><HOME> <CMD>call HomeVSC()<CR>
inoremap <silent><HOME> <C-o>:call HomeVSC()<CR>

nnoremap <silent><leader>tw <CMD>set wrap!<BAR>echo "蝹"<CR>
nnoremap <silent><leader>tn <CMD>set number!<BAR> echo "" <CR>
nnoremap <silent><leader>tr <CMD>set relativenumber!<BAR>echo ""<CR>
nnoremap <silent><Leader>th <CMD>noh<BAR>echo ""<CR>
nnoremap <silent><leader>ti <CMD>IndentBlanklineToggle<CR><CMD>echo ""<CR>
nnoremap <silent><leader>tt <CMD>TSContextToggle<CR><CMD>echo ""<CR>
nnoremap <silent><leader>tb <CMD>ToggleBlameLine<CR><CMD>echo ""<CR>
nnoremap <silent><leader>tl <CMD>set list!<BAR>echo ""<CR>

vnoremap <silent> ( c(<C-r><C-o>")<ESC>bvi(
vnoremap <silent> [ c[<C-r><C-o>"]<ESC>bvi[
vnoremap <silent> { c{<C-r><C-o>"}<ESC>bvi{
vnoremap <silent> ' c'<C-r><C-o>"'<ESC>bvi'
vnoremap <silent> " c"<C-r><C-o>""<ESC>bvi"

" nnoremap <silent><A-b> :NvimTreeToggle<CR>

nnoremap <silent><M-e> <Cmd>CocCommand explorer --toggle --sources=buffer+,file+ <CR>
nnoremap <silent><M-b> <Cmd>NeoTreeShowToggle<CR>
"nmap <silent> <Leader>: <Plug>(coc-floatinput-command)
"noremap <silent><C-S-p>: <Plug>(coc-floatinput-command)
"nmap <silent> <Leader>c: <Plug>(coc-floatinput-coc-command)
"nmap <silent> <Leader>rn <Plug>(coc-floatinput-rename)
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

nnoremap <silent><nowait> <leader>a  :<C-u>CocList diagnostics<cr>
