"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"

let g:seoul256_light_background = 252

let g:material_style = "deep ocean"

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
let g:coc_global_extensions = [
            \'coc-json', 
            \'coc-tsserver', 
            \'coc-json', 
            \'coc-html', 
            \'coc-css',
            \'coc-tailwindcss',
            \'coc-pyright', 
            \'coc-phpls',
            \'coc-phpactor',
            \'@yaegassy/coc-intelephense',
            \'coc-php-cs-fixer',
            \'coc-prettier',
            \'coc-vimlsp',
            \'coc-angular',
            \'coc-blade',
            \'coc-cssmodules',
            \'coc-emmet',
            \'coc-explorer',
            \'coc-flutter',
            \'coc-html-css-support',
            \'coc-java',
            \'coc-markdownlint',
            \'coc-sql',
            \'coc-tabnine',
            \'coc-snippets',
            \]
