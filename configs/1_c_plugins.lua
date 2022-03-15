require'nvim-treesitter.configs'.setup ({
    ensure_installed = {'lua', 'vim', 'html', 'css', 'php', 'json', 'todotxt', 'markdown', 'typescript', 'json5', 'vue', 'java', 'bash', 'javascript', 'scss', 'jsdoc', 'comment', 'phpdoc', 'fish', 'python', 'dart' },
    -- modules
    highlight ={
        enable = true
    },
    indent = {
        enable = true
    }

})

-- vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup ({
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
    }
})

require('nvim-autopairs').setup({})


require'nvim-tree'.setup ({
    disable_netrw        = false,
    hijack_netrw         = true,
    open_on_setup        = false,
    auto_close           = true,
    auto_reload_on_write = true,
    open_on_tab          = true,
    hijack_cursor        = true,
    hijack_unnamed_buffer_when_opening = true,
    update_focused_file = {
        enable      = true,
        update_cwd  = false,
        ignore_list = {}
    },
    git = {
        enable = false,
    },
    mappings = {
        custom_only = true,
        list = {}
    },

})


require'colorizer'.setup()

require("nvim-web-devicons").set_icon {
    zsh = {
        icon = "",
        color = "#428850",
        cterm_color = "65",
        name = "Zsh"
    },
    tpl = {
        icon = "ﯦ",
        color = "#ffe326",
        cterm_color = "70",
        name = "tpl"
    }
}

local get_hex = require('cokeline/utils').get_hex

require('cokeline').setup({
    sidebar = {
        filetype = 'NvimTree',
        components = {
        {
                text = '  NvimTree', 
                fg = yellow, 
                bg = black,
                bg = get_hex('NvimTreeNormal', 'bg'),
                style = 'bold',
            },
        }
    },
})
