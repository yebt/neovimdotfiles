" try work the home key
function! HomeVSC()
    let lastcurp = col('.')
    execute "normal ^"
    if lastcurp == col('.')
        execute "normal 0"
    endif
endfunction


" PHP code sniffer
function! PHPCSFBEY()
    if filereadable("./vendor/bin/phpcbf")
        execute '! ./vendor/bin/phpcbf --standard=PSR13  '. expand('%') 
    elseif filereadable("phpcbf")
       execute '! phpcbf --standard=PSR13  '. expand('%') 
    else
        echo "No PhpCodeSniffer available"
    endif
endfunction

command! PHPCSFBEY call PHPCSFBEY()

" Try use trigger to fold
" function! ToggleFod()
"     let foldM=&foldmethod
"     if (foldM == 'manual')
"         echo "Is Manual"
"         set foldmethod=expr
"         set foldexpr=nvim_treesitter#foldexpr()
"     elseif (foldM == 'expr' )
        
"     else 
"         echo "No manual"
"     endif
"     echo foldM
" endfunction

" Add `:Format` command to format current buffer.
command! -nargs=1 Format call CocActionAsync('format') 

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold  call CocAction('fold', <f-args>) 

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=1 OR   :try call CocActionAsync('runCommand', 'editor.action.organizeImport') catch /.*/ echo "No coc organize imppss" endtry

"" PHP 
" try use php initp
function! PHPinitCharacter()
    if line('.') == 2
        " echo "asdf"
        call append(line('.')0,"<?php")
    endif
endfunction

"FOLD
" trye overwrite the fold
" TRY config fold
function! SetAtFold()
    try 
        let tempfiletype=&filetype
        if (tempfiletype == 'vim'  )
        " if (tempfiletype == 'vim' || tempfiletype == 'conf' )
            set foldmethod=marker
            set foldlevel=2
        elseif (tempfiletype == 'conf')
            set foldmethod=manual
            set foldlevel=3
        else
            set foldmethod=expr
            set foldlevel=100
            "AnyFoldActivate
            " call CocAction('fold')
            " call CocAction('fold')
        endif
    catch /.*/
        echo "FOLD AT SET ERROR"
    endtry
endfunction


"" CURSOR HOLD
function! HoldCursor()
    try 
        call CocActionAsync('highlight')
    catch /.*/
    endtry
endfunction


" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap <leader>e :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4001
    echo 'Highlight current word: off'
    return 1
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=501
    echo 'Highlight current word: ON'
    return 2
  endif
endfunction

" autosave delay, cursorhold trigger, default: 4001ms
setl updatetime=301

" highlight the word under cursor (CursorMoved is inperformant)
highlight WordUnderCursor cterm=underline gui=underline
autocmd CursorHold * call HighlightCursorWord()
function! HighlightCursorWord()
    " if hlsearch is active, don't overwrite it!
    let search = getreg('/')
    let cword = expand('<cword>')
    if match(cword, search) == 0
        exe printf('match WordUnderCursor /\V\<%s\>/', escape(cword, '/\'))
    endif
endfunction

" FOLD
function! MyFoldText()
    let line = getline(v:foldstart)
    let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
    return v:folddashes . sub
endfunction

