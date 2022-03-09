require'nvim-tree'.setup ({
    update_focused_file = {
        enable      = true,
        update_cwd  = false,
        ignore_list = {}
    },
    git = {
        enable = false,
        ignore = true,
        timeout = 500,
    },
    view = {
        width = 30,
        height = 30,
        hide_root_folder = false,
        side = 'left',
        preserve_window_proportions = true,
        mappings = {
            custom_only = false,
            list = {}
        },
        number = false,
        relativenumber = false,
        signcolumn = "yes"
    },

})
