require'nvim-treesitter.configs'.setup {
    -- One of "all", "maintained" (parsers with maintainers), or a list of languages
    ensure_installed = "maintained",

    -- Install languages synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- List of parsers to ignore installing
    -- ignore_install = { "javascript" },

    highlight = {
        -- `false` will disable the whole extension
        enable = true,

        -- list of language that will be disabled
        disable = { "c", "rust" },

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = {'vim'},
    },

    incremental_selection = {
        enable = false,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },

    indent = {
        enable = false
    },

--     refactor = {
-- 
--         highlight_definitions = {
--             enable = true,
--             -- Set to false if you have an `updatetime` of ~100.
--             clear_on_cursor_move = true,
--         },
--         highlight_current_scope = { 
--             enable = false 
--         },
--         smart_rename = {
--             enable = true,
--             keymaps = {
--                 smart_rename = "grr",
--             },
--         },
-- 
--         navigation = {
--             enable = true,
--             keymaps = {
--                 goto_definition = "gnd",
--                 list_definitions = "gnD",
--                 list_definitions_toc = "gO",
--                 goto_next_usage = "<a-*>",
--                 goto_previous_usage = "<a-#>",
--             },
--         },
--     },

    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },

    --pairs = {
    --    enable = true,
    --    disable = {},
    --    highlight_pair_events = {}, -- e.g. {"CursorMoved"}, -- when to highlight the pairs, use {} to deactivate highlighting
    --    highlight_self = false, -- whether to highlight also the part of the pair under cursor (or only the partner)
    --    goto_right_end = false, -- whether to go to the end of the right partner or the beginning
    --    fallback_cmd_normal = "call matchit#Match_wrapper('',1,'n')", -- What command to issue when we can't find a pair (e.g. "normal! %")
    --    keymaps = {
    --        goto_partner = "<leader>%",
    --        delete_balanced = "X",
    --    },
    --    delete_balanced = {
    --        -- only_on_first_char = false, -- whether to trigger balanced delete when on first character of a pair
    --        only_on_first_char = true, -- whether to trigger balanced delete when on first character of a pair
    --        fallback_cmd_normal = nil, -- fallback command when no pair found, can be nil
    --        longest_partner = false, -- whether to delete the longest or the shortest pair when multiple found.
    --        -- E.g. whether to delete the angle bracket or whole tag in  <pair> </pair>
    --    }
    --}

}

