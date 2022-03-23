" function! GetActiveBuffers()
"     let l:blist = getbufinfo({'bufloaded': 1, 'buflisted': 1})
"     let l:result = []
"     for l:item in l:blist
"         "skip unnamed buffers; also skip hidden buffers?
"         if empty(l:item.name) || l:item.hidden
"             continue
"         endif
"         call add(l:result, shellescape(l:item.name))
"     endfor
"     return l:result
" endfunction

"function! GetBuff()
"    let l:blist = getbufinfo()
"    let l:buff_exeptions=['startify']
"    let l:buff_dash=[]
"    " let l:result  = []
"    " let l:result  = ''
"    let l:result .= '%#TabLineFill#'
"    for l:item in l:blist
"        "skip unnamed buffers; also skip hidden buffers?
"        " if empty(l:item.name) || l:item.hidden
"        if empty(l:item.name)
"            continue
"        endif
"        " call add(l:result, l:item.variables.sy.info.file)
"        " sy': {'info': {'file':
"        if l:item.hidden
"            let l:result .= '%#TabLineSel#'
"        else 
"            let l:result .= '%#TabLineFill#'
"        endif

"        " let l:result .= l:item.variables.sy.info.file
"        let l:result .= l:item.name
"        " let l:result .= l:item.hidden . '->' . l:item.variables.sy.info.file . '  '
"    endfor
"    let l:result .= '%#TabLine#'
"    return l:result
"endfunction

"set tabline=%!GetBuff()

"  set tabline=%!MyTabLine()  " custom tab pages line

" [{
"     'lnum': 13, 
"     'bufnr': 1, 
"     'name': '/home/b/.config/nvim/configs/8_vimscript.vim', 
"     'changed': 0, 
"     'lastused': 1647980173, 
"     'loaded': 1, 
"     'windows': [1000], 
"     'hidden': 0, 
"     'listed': 1, 
"     'changedtick': 3, 
"     'linecount': 13
" }]

"  set tabline=%!MyTabLine()  " custom tab pages line
"  function! MyTabLine()
"      let s = ''
"      " loop through each tab page
"      for i in range(tabpagenr('$'))
"          if i + 1 == tabpagenr()
"              let s .= '%#TabLineSel#'
"          else
"              let s .= '%#TabLine#'
"          endif
"          if i + 1 == tabpagenr()
"              let s .= '%#TabLineSel#' " WildMenu
"          else
"              let s .= '%#Title#'
"          endif
"          " set the tab page number (for mouse clicks)
"          let s .= '%' . (i + 1) . 'T '
"          " set page number string
"          let s .= i + 1 . ''
"          " get buffer names and statuses
"          let n = ''  " temp str for buf names
"          let m = 0   " &modified counter
"          let buflist = tabpagebuflist(i + 1)
"          " loop through each buffer in a tab
"          for b in buflist
"              if getbufvar(b, "&buftype") == 'help'
"                  " let n .= '[H]' . fnamemodify(bufname(b), ':t:s/.txt$//')
"              elseif getbufvar(b, "&buftype") == 'quickfix'
"                  " let n .= '[Q]'
"              elseif getbufvar(b, "&modifiable")
"                  let n .= fnamemodify(bufname(b), ':t') . ', ' " pathshorten(bufname(b))
"              endif
"              if getbufvar(b, "&modified")
"                  let m += 1
"              endif
"          endfor
"          " let n .= fnamemodify(bufname(buflist[tabpagewinnr(i + 1) - 1]), ':t')
"          let n = substitute(n, ', $', '', '')
"          " add modified label
"          if m > 0
"              let s .= '+'
"              " let s .= '[' . m . '+]'
"          endif
"          if i + 1 == tabpagenr()
"              let s .= ' %#TabLineSel#'
"          else
"              let s .= ' %#TabLine#'
"          endif
"          " add buffer names
"          if n == ''
"              let s.= '[New]'
"          else
"              let s .= n
"          endif
"          " switch to no underlining and add final space
"          let s .= ' '
"      endfor
"      let s .= '%#TabLineFill#%T'
"      " right-aligned close button
"      " if tabpagenr('$') > 1
"      "   let s .= '%=%#TabLineFill#%999Xclose'
"      " endif
"      return s
"  endfunction
