"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"

let g:seoul256_light_background = 252

let g:material_style = "deep ocean"

let g:gruvbox_contrast_dark="hard"

let g:neon_style="dark"
let g:neon_bold=v:true

let g:onedark_config = {
            \ 'style': 'warmer',
            \}

" let g:indentLine_char = '▏'
" "¦, ┆, │, ⎸, or ▏ t
" "let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_first_char='▏'
" let g:indentLine_showFirstIndentLevel=1
" let g:indentLine_fileTypeExclude=[]
" let g:indentLine_bufNameExclude=['NERD_tree.*', 'help']


let g:solarized_italic_comments = v:true
let g:solarized_italic_keywords = v:true
let g:solarized_italic_functions = v:true
let g:solarized_italic_variables = v:false
let g:solarized_contrast = v:true
let g:solarized_borders = v:false
let g:solarized_disable_background = v:false


let g:far#enable_undo=1


let g:nvim_tree_indent_markers = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_group_empty = 1


"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:CtrlSpaceDefaultMappingKey = "<C-space> "

let g:vim_matchtag_files = '*.html,*.xml,*.js,*.jsx,*.ts,*.tsx,*.vue,*.svelte,*.jsp,*.php,*.erb,*.tpl'

" coc-marketplace
" let g:coc_global_extensions = [
"             \'coc-json', 
"             \'coc-tsserver', 
"             \'coc-json', 
"             \'coc-html', 
"             \'coc-css',
"             \'coc-tailwindcss',
"             \'coc-pyright', 
"             \'coc-phpls',
"             \'coc-phpactor',
"             \'@yaegassy/coc-intelephense',
"             \'coc-php-cs-fixer',
"             \'coc-prettier',
"             \'coc-vimlsp',
"             \'coc-angular',
"             \'coc-blade',
"             \'coc-cssmodules',
"             \'coc-emmet',
"             \'coc-explorer',
"             \'coc-flutter',
"             \'coc-html-css-support',
"             \'coc-java',
"             \'coc-markdownlint',
"             \'coc-sql',
"             \'coc-tabnine',
"             \'coc-snippets',
"             \'coc-floatinput',
"             \'coc-prettier'
"             \]

let g:indent_blankline_filetype_exclude = ['help','startify','term','toggleterm','NvimTree','coc-explorer']
let g:indent_blankline_bufname_exclude = ['term']

" ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠠⡀⠐⡀⠀⠀⠀⠀⠀⠀⠀⠀
" ⠀⠀⣴⣶⣤⡴⢦⣤⣤⠔⠀⠀⠀⠀⢀⣭⣭⣿⣷⣿⣦⣷⣄⠀⠀⠀⠀⠀⠀⠀
" ⠀⠀⠀⠈⠙⢿⡿⠿⢿⣷⣖⡀⢀⠔⣿⣿⣿⠋⠉⠉⠻⣿⣏⣳⡀⠀⠀⠀⠀⠀
" ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⡢⠀⣿⣿⣿⡄⠀⠀⢀⠛⠿⠿⣷⣦⠀⠀⠀⠀
" ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠇⠀⢏⠻⣿⣿⣦⣤⣈⣢⣤⣀⣈⠛⠀⠀⠀⠀
" ⠀⠀⠠⡀⢀⡠⠄⠀⢀⣿⣿⢻⠀⠀⠀⢂⣭⣿⣿⣿⣿⠿⣿⣷⣽⣶⣦⣄⠀⠀
" ⠀⠀⣰⣷⣿⣿⣶⡠⢸⣿⣿⠀⠀⢀⢴⣿⣿⠟⠉⢿⣿⣧⠈⠛⠉⠉⡉⠋⠀⠀
" ⠀⢸⣽⣿⠀⢹⣿⣯⠚⣿⣿⡀⠀⠀⣾⣿⣿⡀⠀⢸⣿⣿⢀⢤⣾⣶⣷⡀⠀⠀
" ⠰⡿⠋⠀⠀⣼⣿⣿⠃⠹⣿⣿⣄⡀⢻⢻⣿⣷⣄⣿⣿⡿⣰⣿⡏⠉⢿⣯⣆⠀
" ⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠈⠻⣿⣿⣷⣦⣿⣿⣿⣿⣿⡇⢸⢿⣷⡄⠀⠈⠻⠁
" ⠀⠀⠀⠀⠀⠘⣿⣿⣶⣦⣤⣤⣸⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⣸⣿⠇⠀⠀⠀⠀
" ⠀⠀⠀⠀⣀⣀⠈⢽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⣿⢿⡋⠀⠀⠀⠀⠀
" ⣄⣀⣤⣬⣽⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣷⣦⣤⣛⡵
"
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⣴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣝⣻⡇⢀⣹⡆⣾⣟⢳⣴⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣄⠀⠸⠟⣩⣭⡀⢿⣯⠀⠨⢿⢃⣤⣄⣰⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣘⠒⣶⣸⣿⠛⢟⣤⢱⣿⠿⣷⣘⣷⡍⣩⠶⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠦⠿⣹⣥⣝⠛⢋⣠⣿⢣⡶⢮⡶⢙⣛⣋⢾⠟⠚⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢶⣤⡿⣩⡹⢇⣿⠋⣥⢄⢽⢀⢤⠍⣭⡽⢇⣾⢿⣇⣶⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠹⣷⣿⠟⠀⠀⠁⠀⡈⠁⠀⠹⢷⣾⠿⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡷⢀⢿⠀⠀⠀⠀⣤⣊⠀⠀⠀⠀⡗⠢⡀⠀⠀⠀⡇⠀⡇⠀⠀⠀⢴⠁⠀⠀⠀⢠⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠀⠋⠈⠆⠀⠀⠀⠈⠢⠀⠀⠀⠀⠗⠉⠀⠀⠀⠀⠱⠴⠁⠀⠀⠀⠔⠁⠀⠀⠀⠎⠀⠣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
let g:startify_custom_header = [
            \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⣴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣝⣻⡇⢀⣹⡆⣾⣟⢳⣴⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣄⠀⠸⠟⣩⣭⡀⢿⣯⠀⠨⢿⢃⣤⣄⣰⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣘⠒⣶⣸⣿⠛⢟⣤⢱⣿⠿⣷⣘⣷⡍⣩⠶⣦⠀⠀⠀⠀⠀⠀⠀⠀',
            \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠦⠿⣹⣥⣝⠛⢋⣠⣿⢣⡶⢮⡶⢙⣛⣋⢾⠟⠚⠋⠀⠀⠀⠀⠀⠀⠀⠀',
            \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢶⣤⡿⣩⡹⢇⣿⠋⣥⢄⢽⢀⢤⠍⣭⡽⢇⣾⢿⣇⣶⠒⠀⠀⠀⠀⠀⠀',
            \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠹⣷⣿⠟⠀⠀⠁⠀⡈⠁⠀⠹⢷⣾⠿⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀',
            \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            \'⠀⠀⠀⠀⠀⡷⢀⢿⠀⠀⠀⠀⣤⣊⠀⠀⠀⠀⡗⠢⡀⠀⠀⠀⡇⠀⡇⠀⠀⠀⢴⠁⠀⠀⠀⢠⢳⠀⠀',
            \'⠀⠀⠀⠀⠰⠀⠋⠈⠆⠀⠀⠀⠈⠢⠀⠀⠀⠀⠗⠉⠀⠀⠀⠀⠱⠴⠁⠀⠀⠀⠔⠁⠀⠀⠀⠎⠀⠣⠀',
            \]

" ⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣾⣿⣷⢾⣿⣟⣿⣿⣿⡿⣛⣉⣛⢿⣿⣿⣷⣾⣿⣿⣿⣿⣿⣿
" ⣿⣿⣿⡿⣷⣾⣟⣿⣿⣛⣿⡿⣣⢠⡹⣿⣯⣽⡏⣼⣿⣿⣿⣧⢹⣯⣽⣿⣿⠛⣿⣿⣿⣿
" ⣿⣿⣿⣿⡿⢿⣿⣿⣿⡿⣡⣾⣿⡇⣻⣶⣜⢿⣷⡹⠟⢿⡿⢏⣾⡿⢿⣟⣿⣿⣿⣿⣿⣿
" ⣿⣿⣽⣿⣷⣿⢟⣵⣍⡰⣿⣿⣿⣷⡜⢛⠿⣦⣉⢴⣷⢰⣔⠿⢿⣷⣾⡿⣿⣏⣿⣿⣻⣿
" ⣿⣿⠟⠘⣿⣵⣿⡟⢹⣿⣦⢻⣿⣿⣿⣾⣷⣬⢻⣆⢻⣮⡙⠟⣰⣦⣙⢿⣿⡿⢿⣿⣭⣿
" ⣿⣿⢊⢈⢾⣿⣯⠆⠰⣽⣿⣧⣝⢿⣿⣿⣿⣿⣶⣍⡂⢻⣿⣷⠇⠘⣿⣷⡿⡁⢈⣻⣿⣿
" ⣿⡷⡡⠠⡳⣿⡵⣊⢘⢮⣿⣿⣿⣿⡿⢛⣛⡛⠛⣿⣿⣷⣿⡷⡃⢘⢾⣿⣟⠄⠠⣻⣿⣿
" ⣿⣟⠔⠐⣝⣿⢞⡥⢨⡳⣿⣿⡿⠿⠡⠿⠿⠣⠰⠘⠿⣿⣿⡟⡁⢨⡳⣿⣫⠆⠰⣝⣿⣿
" ⣿⡯⢞⢘⢮⣿⣫⠄⠰⣝⣿⣶⢶⡿⣯⣿⣻⣻⣿⡿⡯⣶⣿⣋⠄⠠⣝⣿⡵⡃⢘⢮⣿⣿
" ⣿⣶⣫⢨⣳⣚⣓⣶⣰⡾⠿⣽⠷⠾⠾⠷⠿⠿⠾⠷⠷⢯⣿⣥⠆⠐⢬⣻⢞⡁⢈⡳⣽⣿
" ⣿⣿⣿⣼⣻⣽⣼⣿⣽⣹⣗⡮⢻⣯⣭⣭⣿⣿⣿⣭⡽⢟⣫⢵⣿⣸⣿⢷⣯⡄⣤⣽⣾⣿
" ⣿⣿⣿⣷⣒⣒⣒⣲⣶⣒⣒⣚⣛⣒⣒⣛⣛⣿⣿⡇⠾⠽⠮⠼⠯⠷⠧⠯⠷⠿⣿⣿⣿⣿
" ⣿⣿⣿⣿⣿⣭⣭⣭⣭⣭⣿⣭⣭⣿⣿⣿⣿⣿⣿⣿⣟⣛⣻⣿⣛⣛⣛⣛⣻⣿⣿⣿⣿⣿

let g:startify_bookmarks = [ 
            \{'c': '~/.vimrc'}, 
            \'~/.zshrc' 
            \]

let g:startify_commands = [
            \{'h': ['Old files','Telescope oldfiles']},
            \{'p': ['Plugins','e ~/.config/nvim/configs/5_plugins.vim']},
            \{'tfd': ['Find file fd','Telescope fd']},
            \{'tlg': ['Find word','Telescope live_grep']},
            \{'dsw': ['Delete swap fiels', '!rm -rf ~/.local/share/nvim/swap/*']},
            \{'dss': ['Delete sessions fiels', '!rm -rf ~/.local/share/nvim/session/*']},
            \]

let g:startify_lists = [
            \ { 'type': 'commands',  'header': ['   Commands']       },
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ ]

let g:startify_files_number = 4

let g:startify_session_before_save = [ 'silent! tabdo NERDTreeClose', 'silent! tabdo NvimTreeClose', 'silent! tabdo TagBarClose' ]


" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
let g:neoformat_run_all_formatters = 1
let g:neoformat_try_node_exe = 1

" let g:neoformat_try_node_exe="~/.npm-global/bin/"
let g:neoformat_lua_luafmt = {
            \ 'exe': '/home/b/.npm-global/bin/luafmt',
            \ 'args': ['--stdin'],
            \ 'stdin': 1,
            \ }

let g:neoformat_html_prettier = {
            \ 'exe': '/home/b/.npm-global/bin/prettier',
            \ 'args': ['--stdin-filepath', '"%:p"'],
            \ 'stdin': 1,
            \ 'try_node_exe': 1,
            \}

let g:neoformat_php_phpcbf = {
            \ 'exe': 'phpcbf',
            \ 'stdin': 1,
            \ 'args': ['--standard=PSR12'],
            \ 'valid_exit_codes': [0,1],
            \ }

let g:neoformat_php_prettier = {
            \ 'exe': '~/.npm-global/bin/prettier',
            \ 'args': ['--stdin-filepath', '"%:p"'],
            \ 'stdin': 1,
            \ 'try_node_exe': 1,
            \}


let g:neoformat_enabled_lua = ['luafmt']
let g:neoformat_enabled_html = ['prettier']
let g:neoformat_enabled_php = ['phpcbf', 'prettier']

let g:bracey_auto_start_browser=0;
