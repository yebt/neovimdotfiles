"" BAR BAR
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:false 
"let bufferline.closable = v:false

let bufferline.icon_separator_active = ''
let bufferline.icon_separator_inactive = ''
let bufferline.icon_close_tab = ' '
let bufferline.icon_close_tab_modified = '●'

let bufferline.maximum_padding = 2

"" VIM PATCH
let g:vim_matchtag_files = '*.html,*.xml,*.js,*.jsx,*.vue,*.svelte,*.jsp,*.tpl'

" Signify
let g:signify_disable_by_default = 1

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
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
            \ ]

" NVIM TREE
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_root_folder_modifier = ':~' 
let g:nvim_tree_show_icons = {
            \ 'git': 0,
            \ 'folders': 1,
            \ 'files': 1,
            \ 'folder_arrows': 1,
            \ }


" INDENT BLANK LINE
let g:indent_blankline_filetype_exclude = ['help', 'startify', 'checkhealth', 'lspinfo', 'lsp-installer', 'CHADTree', 'NvimTree', 'tagbar', 'term']

