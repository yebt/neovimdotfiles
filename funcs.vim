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



