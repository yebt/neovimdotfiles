"" SOME VARS
" MATCH
let g:vim_matchtag_files = '*.html,*.xml,*.js,*.jsx,*.vue,*.svelte,*.jsp,*.tpl'

" DASHBOARD
" let g:dashboard_default_executive ='telescope'
" let g:dashboard_custom_shortcut={
"             \ 'last_session'       : 'SPC s l',
"             \ 'find_history'       : 'SPC f h',
"             \ 'find_file'          : 'SPC f f',
"             \ 'new_file'           : 'SPC c n',
"             \ 'change_colorscheme' : 'SPC t c',
"             \ 'find_word'          : 'SPC f a',
"             \ 'book_marks'         : 'SPC f b',
"             \ }

" let g:dashboard_custom_header = [
"             \" ┌────────────────────────────────┐",
"             \" │⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀│",
"             \" │⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⡿⠟⠻⢿⣶⣶⣶⣤⣄⡀⠀⠀⠀  ⠀│",
"             \" │⠀⠀⠀⠀⠀⠀⢀⣴⡿⠛⠉⠉⠀⠀⢸⣿⡁⠀⠀⠈⠉⠉⠉⠉⠻⣿⡄⠀⠀  ⠀│",
"             \" │⠀⠀⠀⠀⠀⢀⣾⡟⠀⠀⠀⠀⠀⠀⠀⠻⣷⣤⡄⠀⠀⠀⠘⠃⠀⣿⣷⠀⠀  ⠀│",
"             \" │⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣇⣀⣀⣀⣀⣀⣀⣿⣿⠀⠀  ⠀│",
"             \" │⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⣿⡿⠿⠿⠿⠿⣿⣿⠀⠀  ⠀│",
"             \" │⠀⠀⠀⠀⠀⠘⢿⣿⠀⠀⣄⣀⠀⠀⠀⣀⣀⠀⠀⣿⡇⠀⣀⡀⠀⣿⣿⠀⠀  ⠀│",
"             \" │⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⣿⡿⠿⠿⠿⢿⣿⠀⠀⣿⡇⠀⢻⣷⣤⣿⠏⠀⠀  ⠀│",
"             \" │⠀⠀⠀⠀⠀⠀⢸⣿⣤⣤⣿⡇⠀⠀⠀⢸⣿⣤⣤⣿⡇⠀⠀⠉⠉⠁⠀⠀⠀  ⠀│",
"             \" │⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀  ⠀│",
"             \" │         --- by bey ---         │",
"             \" └────────────────────────────────┘",
"             \]

" STARTIFY
let g:startify_custom_header = [
            \"   ┌────────────────────────────────┐",
            \"   │⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⡿⠟⠻⢿⣶⣶⣶⣤⣄⡀⠀⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⠀⢀⣴⡿⠛⠉⠉⠀⠀⢸⣿⡁⠀⠀⠈⠉⠉⠉⠉⠻⣿⡄⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⢀⣾⡟⠀⠀⠀⠀⠀⠀⠀⠻⣷⣤⡄⠀⠀⠀⠘⠃⠀⣿⣷⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣇⣀⣀⣀⣀⣀⣀⣿⣿⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⣿⡿⠿⠿⠿⠿⣿⣿⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⠘⢿⣿⠀⠀⣄⣀⠀⠀⠀⣀⣀⠀⠀⣿⡇⠀⣀⡀⠀⣿⣿⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⣿⡿⠿⠿⠿⢿⣿⠀⠀⣿⡇⠀⢻⣷⣤⣿⠏⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⠀⢸⣿⣤⣤⣿⡇⠀⠀⠀⢸⣿⣤⣤⣿⡇⠀⠀⠉⠉⠁⠀⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀  ⠀│",
            \"   │         --- by bey ---         │",
            \"   └────────────────────────────────┘",
            \]

let g:startify_files_number = 4

let g:startify_commands = [
            \ {'h': ['History','Telescope oldfiles']},
            \ {'ff': ['Search File','Telescope fd']},
            \ {'fw': ['Find word','Telescope live_grep']},
            \ {'gs': ['Git Status','Telescope git_status']},
            \ {'cs': ['Clear all sessions', '!rm -rf ~/.local/share/nvim/session/*']},
            \ {'cw': ['Clear all swap files', '!rm -rf ~/.local/share/nvim/swap/*']},
            \ ]

let g:startify_lists = [
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ ]

let g:startify_lists = [
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]

let g:startify_session_before_save = ['silent! tabdo NERDTreeClose', 'silent! TagbarClose']
let g:startify_session_persistence = 1

function! GetUniqueSessionName()
  let path = fnamemodify(getcwd(), ':~:t')
  let path = empty(path) ? 'no-project' : path
  let branch = gitbranch#name()
  let branch = empty(branch) ? '' : '-' . branch
  return substitute(path . branch, '/', '-', 'g')
endfunction

"autocmd User        StartifyReady silent execute 'SLoad '  . GetUniqueSessionName()
autocmd VimLeavePre *             silent execute 'SSave! ' . GetUniqueSessionName()

" TELESCOPE
autocmd User TelescopePreviewerLoaded setlocal wrap


" INDENTLINE
let g:nvim_tree_indent_markers = 1
let g:indent_blankline_filetype_exclude = ['help', 'startify', 'checkhealth', 'lspinfo', 'lsp-installer', 'CHADTree', 'NvimTree', 'tagbar']


" airline 
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline_theme='seoul256'
" let g:airline_theme='zenburn'
"let g:airline_theme='transparent'
" distinguished
" hybridline
" luna
" minimalist
" onedark
" seoul256
" supernova
" trasnparent
" zenburn

" BARBAR
" let bufferline = get(g:, 'bufferline', {})
" let bufferline.add_in_buffer_number_order = v:false
" let bufferline.animation = v:false
" let bufferline.auto_hide = v:false
" let bufferline.tabpages = v:true
" let bufferline.closable = v:false
" let bufferline.clickable = v:true
" let bufferline.icon_pinned = ''


