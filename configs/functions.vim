function! HomeVSC()
    let lastcurp = col('.')
    execute "normal ^"
    if lastcurp == col('.')
        execute "normal 0"
    endif
endfunction


function! NewFoldText()
    let line = getline(v:foldstart)
    let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g') 
    return v:folddashes . sub
endfunction


function! Gitstatusline()
    let head =  fugitive#head() 
    return head == '' ? '' : ' ' . head
endfunction


function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction


function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

