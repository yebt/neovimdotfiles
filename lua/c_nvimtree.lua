require'nvim-tree'.setup ({
    disable_netrw        = false,
    hijack_netrw         = true,
    open_on_setup        = true,
    auto_close           = false,
    auto_reload_on_write = true,
    open_on_tab          = true,
    hijack_cursor        = true,
    update_focused_file = {
        enable      = false,
        update_cwd  = false,
        ignore_list = {}
    },
})
vim.cmd([[
let g:nvim_tree_indent_markers = 1 
let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_show_icons = {
\ 'git': 0,
\ 'folders': 0,
\ 'files': 0,
\ 'folder_arrows': 0,
\ }
]])
