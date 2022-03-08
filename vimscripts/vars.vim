"function! wintabs#ui#get_tabline() 71
"  let spaceline = [g:wintabs_renderers.line_sep(), s:get_spaceline()]
"  let bufline = s:truncate_line(
"        \0,
"        \s:get_bufline(0),
"        \&columns - wintabs#element#len(spaceline),
"        \)
"  let padding = g:wintabs_renderers.padding(
"        \&columns - wintabs#element#len(bufline) - wintabs#element#len(spaceline)
"        \)
"  return wintabs#element#render([bufline, padding, spaceline])
"endfunction



let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:false 
"let bufferline.closable = v:false

let bufferline.icon_separator_active = ''
let bufferline.icon_separator_inactive = ''
let bufferline.icon_close_tab = ' '
let bufferline.icon_close_tab_modified = '●'

let bufferline.maximum_padding = 2

hi! BufferCurrent  guifg=#dcd7ba guibg=#363646
hi! BufferCurrentSign guibg=#363646
hi! BufferCurrentMod guifg=#ff9e3b guibg=#363646

