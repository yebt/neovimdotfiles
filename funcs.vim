function! PHPCbf()
"    :! phpcbf --stadart=PSR12 
    "echo expand('%:p')
    execute '! phpcbf --standard=PSR12 ' . expand('%:p')
endfunction

command PHPCbf call PHPCbf()

function! OFPHP()
    let cfile = expand("<cfile>")
    execute "edit " . "." . cfile
endfunction

nmap <leader>gf :call OFPHP()<CR>


" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif
" adding to vim-startify screen
let g:webdevicons_enable_startify = 1



