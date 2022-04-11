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
            \'coc-floatinput',
            \'coc-prettier',
            \'coc-flutter',
            \'coc-vue',
            \'coc-vetur',
            \'coc-pairs',
            \'coc-marketplace'
            \]

"""""""
" COC "
"""""""

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


" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)


" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
                \   'left': [ [ 'mode', 'paste' ],
                \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
                \ },
                \ 'component_function': {
                    \   'cocstatus': 'coc#status'
                    \ },
                    \ }

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

