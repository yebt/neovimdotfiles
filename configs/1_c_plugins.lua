require "nvim-treesitter.configs".setup(
    {
        -- ensure_installed = {'lua', 'vim', 'html', 'css', 'php', 'json', 'todotxt', 'markdown', 'typescript', 'json5', 'vue', 'java', 'bash', 'javascript', 'scss', 'jsdoc', 'comment', 'phpdoc', 'fish', 'python', 'dart' },
        -- modules
        highlight = {
            enable = true,
            disable = {"c"},
            -- additional_vim_regex_highlighting ={'vim','php'},
            additional_vim_regex_highlighting = {"vim"}
        },
        indent = {
            enable = true
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "gnn",
                node_incremental = "gni",
                scope_incremental = "gns",
                node_decremental = "gnd"
            }
        },
        refactor = {
            highlight_definitions = {
                enable = true,
                -- Set to false if you have an `updatetime` of ~100.
                clear_on_cursor_move = true
            },
            highlight_current_scope = {enable = false}
        },
        playground = {
            enable = true,
            disable = {},
            updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
            persist_queries = false, -- Whether the query persists across vim sessions
            keybindings = {
                toggle_query_editor = "o",
                toggle_hl_groups = "i",
                toggle_injected_languages = "t",
                toggle_anonymous_nodes = "a",
                toggle_language_display = "I",
                focus_language = "f",
                unfocus_language = "F",
                update = "R",
                goto_node = "<cr>",
                show_help = "?"
            }
        },
        query_linter = {
            enable = true,
            use_virtual_text = true,
            lint_events = {"BufWrite", "CursorHold"}
        },
        pairs = {
            enable = true,
            disable = {},
            highlight_pair_events = {}, -- e.g. {"CursorMoved"}, -- when to highlight the pairs, use {} to deactivate highlighting
            highlight_self = false, -- whether to highlight also the part of the pair under cursor (or only the partner)
            goto_right_end = false, -- whether to go to the end of the right partner or the beginning
            fallback_cmd_normal = "call matchit#Match_wrapper('',1,'n')", -- What command to issue when we can't find a pair (e.g. "normal! %")
            keymaps = {
                goto_partner = "<leader>%",
                delete_balanced = "X"
            },
            delete_balanced = {
                only_on_first_char = false, -- whether to trigger balanced delete when on first character of a pair
                fallback_cmd_normal = nil, -- fallback command when no pair found, can be nil
                longest_partner = false -- whether to delete the longest or the shortest pair when multiple found.
                -- E.g. whether to delete the angle bracket or whole tag in  <pair> </pair>
            }
        }
    }
)

-- vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup(
    {
        -- for example, context is off by default, use this to turn it on
        show_current_context = true,
        show_current_context_start = true,
        char_highlight_list = {
            "IndentBlanklineIndent1"
        }
    }
)

require("neoscroll").setup(
    {
        hide_cursor = false,
        stop_eof = false,
        easing_function = "quintic"
    }
)

require("which-key").setup({})

require("nvim-autopairs").setup({})

require "nvim-tree".setup(
    {
        disable_netrw = false,
        hijack_netrw = true,
        open_on_setup = false,
        auto_close = true,
        auto_reload_on_write = true,
        open_on_tab = true,
        hijack_cursor = true,
        hijack_unnamed_buffer_when_opening = true,
        update_focused_file = {
            enable = true,
            update_cwd = false,
            ignore_list = {}
        },
        git = {
            enable = false
        },
        mappings = {
            custom_only = true,
            list = {}
        }
    }
)

require "colorizer".setup()

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

require("bufferline").setup(
    {
        options = {
            mode = "buffers", -- set to "tabs" to only show tabpages instead
            numbers = "none",
            indicator_icon = "▎",
            buffer_close_icon = "",
            modified_icon = "●",
            close_icon = "",
            left_trunc_marker = "",
            right_trunc_marker = "",
            offsets = {
                {filetype = "NvimTree", text = "NvimTree Explorer", text_align = "left"},
                {filetype = "coc-explorer", text = "Coc-Explorer Explorer", text_align = "left"},
                {filetype = "tagbar", text = "Tagbar Explorer", text_align = "right"}
            },
            show_buffer_close_icons = false,
            show_close_icon = false,
            show_tab_indicators = false,
            -- can also be a table containing 2 custom separators
            -- [focused and unfocused]. eg: { '|', '|' }
            -- separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
            separator_style = "thick",
            -- separator_style = {'',''},
            enforce_regular_tabs = true,
            always_show_bufferline = true
        }
    }
)

require("kanagawa").setup(
    {
        undercurl = true, -- enable undercurls
        commentStyle = "italic",
        functionStyle = "bold",
        keywordStyle = "italic",
        statementStyle = "bold",
        typeStyle = "NONE",
        variablebuiltinStyle = "italic",
        specialReturn = true, -- special highlight for the return keyword
        specialException = true, -- special highlight for exception handling keywords
        transparent = false, -- do not set background color
        dimInactive = true, -- dim inactive window `:h hl-NormalNC`
        colors = {
            -- sumiInk1 = "black",
            sumiInk1 = "#1B1B23",
        },
        overrides = {}
    }
)

vim.cmd("colorscheme kanagawa")

-- require('lspconfig').jsonls.setup {
--   settings = {
--     json = {
--       schemas = require('schemastore').json.schemas(),
--     },
--   },
-- }
