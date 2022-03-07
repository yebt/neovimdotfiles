vim.cmd [[highlight IndentBlanklineIndent1 guifg=#2C2C3A gui=nocombine ]]

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
    },
}

