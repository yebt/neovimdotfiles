" === VARS ===

" == plug 
" let g:plug_window = "vertical botright new"
let g:plug_window = "NewFloatWindow"


let g:netrw_keepdir     = 0
let g:netrw_banner      = 0
let g:netrw_localcopydircmd = 'cp -r'


let g:indent_blankline_char = '▏'
let g:indent_blankline_use_treesitter= v:true
let g:indent_blankline_bufname_exclude = ['NvimTree','coc-explorer','tagbar']
let g:indent_blankline_filetype_exclude =['help', 'NvimTree', 'coc-explorer', 'tagbar', 'toggleterm', 'startify']
let g:indent_blankline_enabled = v:false
let g:toggleterm_terminal_mapping = '<A-t>'

let g:tmux_navigator_no_mappings = 1

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php'

let g:startify_custom_header = []
let g:startify_session_dir = "~/.config/nvim/sessions/"
let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   MRU']            },
            \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
            \ { 'type': 'commands',  'header': ['   Commands']       },
            \ ]
"" BOCKMARKS
let g:startify_bookmarks = [ 
            \{'c': '~/.config/nvim/init.vim'},
            \{'i': '~/.config/i3/config'},
            \'~/.zshrc'
            \]
let g:startify_files_number = 5
let g:startify_update_oldfiles = 1
let g:startify_session_autoload = 0
let g:startify_session_dir = "/home/eb/.config/nvim/stsessions/"
let g:startify_session_before_save = ['silent! tabdo NvimTreeClose',]
let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_dir = 0
let g:startify_padding_left = 4


"" COC NVIM Extensions
let g:coc_global_extensions = [
            \'coc-blade',
            \'coc-css',
            \'coc-emmet',
            \'coc-explorer',
            \'coc-git',
            \'coc-highlight',
            \'coc-html',
            \'coc-html-css-support',
            \'coc-json',
            \'coc-markdownlint',
            \'coc-phpls',
            \'coc-pyright',
            \'coc-snippets',
            \'coc-tabnine',
            \'coc-tsserver'
            \]

" On case of use the other intelephense
call add(g:coc_global_extensions, '@yaegassy/coc-intelephense')

"Any fold vim
" no use function minial on the any fold
hi Folded term=underline
let g:anyfold_fold_display=0

"BRACERY
let g:bracey_refresh_on_save=1
let g:bracey_server_allow_remote_connections=1
