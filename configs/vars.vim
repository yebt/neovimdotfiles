" Icons
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

" rainbow_parentheses

let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]

" IndentLine
let g:indentLine_char = '▏'
let g:indentLine_first_char= '▏'
let g:indentLine_showFirstIndentLevel=1
let g:indentLine_fileTypeExclude=['text', 'sh', 'startify']
let g:indentLine_bufTypeExclude=['help', 'terminal', 'startify']
let g:indentLine_faster=1


let g:nvim_tree_show_icons = {
            \ 'git': 0,
            \ 'folders': 1,
            \ 'files': 1,
            \ 'folder_arrows': 1,
            \ }


" Bracery 
" DEfault browser
let g:bracey_browser_command =0
let g:bracey_auto_start_browser=1
let g:bracey_refresh_on_save=1
