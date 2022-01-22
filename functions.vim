function! StatuslineMode()
    let l:mode=mode()
    if l:mode==#"n"
        return "NORMAL"
    elseif l:mode==?"v"
        return "VISUAL"
    elseif l:mode==#"i"
        return "INSERT"
    elseif l:mode==#"R"
        return "REPLACE"
    elseif l:mode==?"s"
        return "SELECT"
    elseif l:mode==#"t"
        return "TERMINAL"
    elseif l:mode==#"c"
        return "COMMAND"
    elseif l:mode==#"!"
        return "SHELL"
    endif
endfunction

function! StatuslineGitBranch()
    let b:gitbranch=""
    if &modifiable
        try
            let l:dir=expand('%:p:h')
            let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
            if !v:shell_error
                let b:gitbranch="(".substitute(l:gitrevparse, '\n', '', 'g').") "
            endif
        catch
        endtry
    endif
endfunction


function! BreakHabitsWindow() abort


    " Create the scratch buffer displayed in the floating window
    let buf = nvim_create_buf(v:false, v:true)

    " Get the current UI
    let ui = nvim_list_uis()[0]

    " Define the size of the floating window
    let pwidth = 0.7
    let pheight = 0.9
    let width = float2nr((ui.width)*pwidth)
    let height = float2nr((ui.height)*pheight)

    " Create the floating window
    let opts = {'relative': 'editor',
                \ 'width': width,
                \ 'height': height,
                \ 'col': (ui.width/2) - (width/2),
                \ 'row': (ui.height/2) - ((float2nr(height*1.3))/2),
                \ 'anchor': 'NW',
                \ 'style': 'minimal',
                \ 'border': 'shadow'
                \ }
    let win = nvim_open_win(buf, 1, opts)
endfunction

command! NewFloatWindow call BreakHabitsWindow()


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
        execute '! ./vendor/bin/phpcbf --standard=PSR12  '. expand('%') 
    elseif filereadable("phpcbf")
       execute '! phpcbf --standard=PSR12  '. expand('%') 
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
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
