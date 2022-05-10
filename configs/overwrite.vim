let g:bufferline_echo = 1


let g:coc_global_extensions = [
            \'@yaegassy/coc-intelephense',
            \'coc-blade',
            \'coc-css',
            \'coc-cssmodules',
            \'coc-emmet',
            \'coc-explorer',
            \'coc-floatinput',
            \'coc-html', 
            \'coc-html-css-support',
            \'coc-java',
            \'coc-json', 
            \'coc-markdownlint',
            \'coc-pairs',
            \'coc-php-cs-fixer',
            \'coc-phpactor',
            \'coc-phpls',
            \'coc-prettier',
            \'coc-pyright', 
            \'coc-sql',
            \'coc-tabnine',
            \'coc-tailwindcss',
            \'coc-tsserver', 
            \'coc-vetur',
            \'coc-vimlsp',
            \'coc-vue',
            \]

" let g:coc_global_extensions = [
"             \'@yaegassy/coc-intelephense',
"             \'coc-angular',
"             \'coc-blade',
"             \'coc-css',
"             \'coc-cssmodules',
"             \'coc-emmet',
"             \'coc-explorer',
"             \'coc-floatinput',
"             \'coc-flutter',
"             \'coc-flutter',
"             \'coc-html', 
"             \'coc-html-css-support',
"             \'coc-java',
"             \'coc-json', 
"             \'coc-json', 
"             \'coc-markdownlint',
"             \'coc-marketplace',
"             \'coc-pairs',
"             \'coc-php-cs-fixer',
"             \'coc-phpactor',
"             \'coc-phpls',
"             \'coc-prettier'
"             \'coc-prettier',
"             \'coc-prettier',
"             \'coc-pyright', 
"             \'coc-snippets',
"             \'coc-sql',
"             \'coc-tabnine',
"             \'coc-tailwindcss',
"             \'coc-tsserver', 
"             \'coc-vetur',
"             \'coc-vimlsp',
"             \'coc-vue',
"             \]

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Use autocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

function! StatusDiagnostic() abort
    let info = get(b:, 'coc_diagnostic_info', {})
    if empty(info) | return '' | endif
    let msgs = []
    if get(info, 'error', 0)
        call add(msgs, 'E' . info['error'])
    endif
    if get(info, 'warning', 0)
        call add(msgs, 'W' . info['warning'])
    endif
    return join(msgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument





let g:lightline = {
            \ 'active': {
                \   'left': [ [ 'mode', 'paste' ],
                \             [ 'cocstatus', 'readonly', 'filename', 'modified' ],
                \             ['gitbranch' ]]
                \ },
                \'component_function': {
                    \'gitbranch': 'Gitstatusline', 
                    \'filetype': 'MyFiletype',
                    \'fileformat': 'MyFileformat',
                    \'cocstatus': 'coc#status'
                    \},
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




let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   MRU']            },
            \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ { 'type': 'commands',  'header': ['   Commands']       },
            \ ]

let g:startify_bookmarks = [ {'c': '~/.vimrc'}, '~/.zshrc' ]

let g:startify_files_number = 4
let g:startify_custom_header =""

function! GetUniqueSessionName()
  let path = fnamemodify(getcwd(), ':~:t')
  let path = empty(path) ? 'no-project' : path
  let branch = gitbranch#name()
  let branch = empty(branch) ? '' : '-' . branch
  return substitute(path . branch, '/', '-', 'g')
endfunction

"autocmd User        StartifyReady silent execute 'SLoad '  . GetUniqueSessionName()
autocmd VimLeavePre *             silent execute 'SSave! ' . GetUniqueSessionName()



let g:indentLine_char = '▏'
let g:indentLine_first_char= '▏'
let g:indentLine_showFirstIndentLevel=1
let g:indentLine_fileTypeExclude=['text', 'sh', 'startify', 'coc-explorer']
let g:indentLine_bufTypeExclude=['help', 'terminal', 'startify']
let g:indentLine_faster=1



let g:nvim_tree_show_icons = {
            \ 'git': 0,
            \ 'folders': 1,
            \ 'files': 1,
            \ 'folder_arrows': 1,
            \ }


let g:bracey_browser_command =0
let g:bracey_auto_start_browser=1
let g:bracey_refresh_on_save=1
