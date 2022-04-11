require("bufferline").setup{
    options = {
        show_buffer_close_icons=false
    }
}

require'nvim-tree'.setup {
    hijack_directories = {
        enable = true,
        auto_open = true,
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
    },
}
