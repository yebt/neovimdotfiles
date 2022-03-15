
" try work the home key
function! HomeVSC()
    let lastcurp = col('.')
    execute "normal ^"
    if lastcurp == col('.')
        execute "normal 0"
    endif
endfunction


" FOLD
function! MyFoldText()
    let line = getline(v:foldstart)
    let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g') 
    return v:folddashes . sub
endfunction

" STAUS LINE

function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

" function! GetICon()
"     return luaeval("require'nvim-web-devicons'.get_icon('" . expand('%'). "')")
" endfunction

function! GetUniqueSessionName()
    let path = fnamemodify(getcwd(), ':~:t')
    let path = empty(path) ? 'no-project' : path
    let branch = gitbranch#name()
    let branch = empty(branch) ? '' : '-' . branch
    return substitute(path . branch, '/', '-', 'g')
endfunction

"autocmd User        StartifyReady silent execute 'SLoad '  . GetUniqueSessionName()
"autocmd VimLeavePre *             silent execute 'SSave! ' . GetUniqueSessionName()
command! SSG silent execute 'SSave! ' . GetUniqueSessionName()


function! Show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

command! CosShowDoc  call Show_documentation()

function! Check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


