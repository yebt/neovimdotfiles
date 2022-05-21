require("bufferline").setup{
    options = {
        show_buffer_close_icons=false
    }
}

-- require'nvim-tree'.setup {
--     hijack_directories = {
--         enable = true,
--         auto_open = true,
--     },
--     update_focused_file = {
--         enable = true,
--         update_cwd = true,
--         ignore_list = {},
--     },
-- }

require'nvim-treesitter.configs'.setup {
    ensure_installed = { 
        'bash',
        'c',
        'cmake',
        'cpp', 
        'css',
        'dart',
        'dot',
        'fish',
        'html',
        'http',
        'hjson',
        'java', 
        'javascript',
        'jsdoc', 
        'json',
        'json5',
        'jsonc',
        'lua',
        'ninja',
        'perl',
        'php',
        'phpdoc',
        'python',
        'query',
        'rust',
        'scss', 
        'typescript',
        'vala',
        'vue'
    },
    highlight = {
        enable = true,
        --additional_vim_regex_highlighting= {'html'}
        disable = {'json', 'html', 'vim'}
    },
    indent = {
        enable = true
    },
    textobjects = { enable = true },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    context_commentstring = {
        enable = true
    },
    playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
            toggle_query_editor = 'o',
            toggle_hl_groups = 'i',
            toggle_injected_languages = 't',
            toggle_anonymous_nodes = 'a',
            toggle_language_display = 'I',
            focus_language = 'f',
            unfocus_language = 'F',
            update = 'R',
            goto_node = '<cr>',
            show_help = '?',
        },
    },
    pairs = {
        enable = true,
    },
    autotag = {
        enable = true,
        filetypes = {
            'html', 'javascript', 'typescript', 'javascriptreact', 
            'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
            'xml', 'php', 'markdown', 'glimmer','handlebars', 'hbs', 'blade'
        }
    },
    autotag = {
        enable = true,
    }

}

-- require'treesitter-context'.setup{
--     enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
--     throttle = true, -- Throttles plugin updates (may improve performance)
--     max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
--     patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
--         -- For all filetypes
--         -- Note that setting an entry here replaces all other patterns for this entry.
--         -- By setting the 'default' entry below, you can control which nodes you want to
--         -- appear in the context window.
--         default = {
--             'class',
--             'function',
--             'method',
--             -- 'for', -- These won't appear in the context
--             'while',
--             'if',
--             'switch',
--             'case',
--         },
--         -- Example for a specific filetype.
--         -- If a pattern is missing, *open a PR* so everyone can benefit.
--         --   rust = {
--         --       'impl_item',
--         --   },
--     },
--     exact_patterns = {
--         -- Example for a specific filetype with Lua patterns
--         -- Treat patterns.rust as a Lua pattern (i.e "^impl_item$" will
--         -- exactly match "impl_item" only)
--         -- rust = true, 
--     }
-- }

-- vim.cmd([[
-- set foldmethod=expr
-- set foldexpr=nvim_treesitter#foldexpr()
-- ]])

require('nvim-autopairs').setup{
    disable_filetype = { "TelescopePrompt" , },
    ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", ""),
    check_ts = true
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.org = {
    install_info = {
        url = 'https://github.com/milisims/tree-sitter-org',
        revision = 'main',
        files = { 'src/parser.c', 'src/scanner.cc' },
    },
    filetype = 'org',
}


require('telescope').load_extension('coc')


-- vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
--     vim.lsp.diagnostic.on_publish_diagnostics,
--     {
--         underline = true,
--         virtual_text = {
--             spacing = 5,
--             severity_limit = 'Warning',
--         },
--         update_in_insert = true,
--     }
-- )

-- require 'notify'.setup({
--     timeout = 1000,
--     render = 'minimal'
-- })
-- vim.notify = require("notify")

-- local async = require("plenary.async")
-- local notify = require("notify").async
