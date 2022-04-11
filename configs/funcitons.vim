" Home key 
function! HomeVSC()
    let lastcurp = col('.')
    execute "normal ^"
    if lastcurp == col('.')
        execute "normal 0"
    endif
endfunction

" Overwrite FoldText
function! NewFoldText()
    let line = getline(v:foldstart)
    let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g') 
    return v:folddashes . sub
endfunction
