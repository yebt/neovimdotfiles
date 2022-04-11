" Lighline
"'colorscheme': 'spaceduck',
"'colorscheme': 'elly',
"colorscheme': 'plastic

let g:lightline = {
            \'colorscheme': 'gruvbox',
            \'component_function': {'filetype': 'MyFiletype','fileformat': 'MyFileformat',},
            \'enable': {'tabline': 0},
            \ 'mode_map': {
                \ 'n' : 'N',
                \ 'i' : 'I',
                \ 'R' : 'R',
                \ 'v' : 'V',
                \ 'V' : 'VL',
                \ "\<C-v>": 'VB',
                \ 'c' : 'C',
                \ 's' : 'S',
                \ 'S' : 'SL',
                \ "\<C-s>": 'SB',
                \ 't': 'T',
                \ },
                \}



function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction


