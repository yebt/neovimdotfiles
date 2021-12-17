require'nvim-treesitter.configs'.setup ({
    ensure_installed = "all",
    highlight = {
        enable = true,
        additional_vim_regex_highlighting= {'vim'}
    },
    indent = {
        enable = true
    },
    autotag = {
        enable = true,
        filetypes  = {   'html', 'javascript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue' , "blade", "php", }
    }
})

require('gitsigns').setup()
require("bufferline").setup{
    options = {
        numbers = "none",
        diagnostics_update_in_insert = true,
        offsets = { {filetype = "coc-explorer", text = "COC F.Explorer"},
        {
            filetype = "NvimTree",
            text = function()
                return vim.api.nvim_exec([[ echo "▼ " .  split(getcwd(),"/")[-1] . "/.." ]],true)
            end,
            highlight = "NVimTreeRootFolder",
            text_align = "left"
        },
    },
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = false,

}
}

require('lualine').setup{
    options = {

        theme = 'auto',
        component_separators = { },
        section_separators = { },
    },
}


local tree_cb = require'nvim-tree.config'.nvim_tree_callback
require'nvim-tree'.setup ({

    disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = true,
    ignore_ft_on_setup  = {},
    auto_close          = true,
    open_on_tab         = false,
    hijack_cursor       = false,
    update_cwd          = false,
    update_to_buf_dir   = {
        enable = false,
        auto_open = true,
    },
    diagnostics = {
        enable = false,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        }
    },
    update_focused_file = {
        enable      = true,
        update_cwd  = true,
        ignore_list = {}
    },
    system_open = {
        cmd  = nil,
        args = {}
    },
    filters = {
        dotfiles = false,
        custom = {}
    },
    view = {
        width = 30,
        height = 30,
        hide_root_folder = true,
        side = 'left',
        auto_resize = false,
        mappings = {
            custom_only = true,
            list = {
                { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
                { key = {"<2-RightMouse>", "<C-]>", "cd"},    cb = tree_cb("cd") },
                { key = "<C-v>",                        cb = tree_cb("vsplit") },
                { key = "<C-x>",                        cb = tree_cb("split") },
                { key = "<C-t>",                        cb = tree_cb("tabnew") },
                { key = "<",                            cb = tree_cb("prev_sibling") },
                { key = ">",                            cb = tree_cb("next_sibling") },
                { key = "P",                            cb = tree_cb("parent_node") },
                { key = "<BS>",                         cb = tree_cb("close_node") },
                { key = "<S-CR>",                       cb = tree_cb("close_node") },
                { key = "<Tab>",                        cb = tree_cb("preview") },
                { key = "K",                            cb = tree_cb("first_sibling") },
                { key = "J",                            cb = tree_cb("last_sibling") },
                { key = "I",                            cb = tree_cb("toggle_ignored") },
                { key = "H",                            cb = tree_cb("toggle_dotfiles") },
                { key = "R",                            cb = tree_cb("refresh") },
                { key = "ma",                            cb = tree_cb("create") },
                { key = "md",                            cb = tree_cb("remove") },
                { key = "mr",                            cb = tree_cb("rename") },
                { key = "<C-r>",                        cb = tree_cb("full_rename") },
                { key = "mx",                            cb = tree_cb("cut") },
                { key = "mc",                            cb = tree_cb("copy") },
                { key = "mp",                            cb = tree_cb("paste") },
                { key = "y",                            cb = tree_cb("copy_name") },
                { key = "Y",                            cb = tree_cb("copy_path") },
                { key = "gy",                           cb = tree_cb("copy_absolute_path") },
                { key = "[c",                           cb = tree_cb("prev_git_item") },
                { key = "]c",                           cb = tree_cb("next_git_item") },
                { key = { "-", ".."},                            cb = tree_cb("dir_up") },
                { key = "s",                            cb = tree_cb("system_open") },
                { key = "q",                            cb = tree_cb("close") },
                { key = "g?",                           cb = tree_cb("toggle_help") },
            }
        }
    }
})

require("which-key").setup ({})


require("toggleterm").setup({})


require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    --show_current_context = true,
    --show_current_context_start = true,
}

require('spectre').setup({})

