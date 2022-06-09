
lua << EOF
vim.g.coc_python_interpreter = "python3"
vim.g.coc_global_extensions = {
    "@yaegassy/coc-intelephense",
    "@yaegassy/coc-phpstan",
    "@yaegassy/coc-volar",
    "coc-blade",
    "coc-clang-format-style-options",
    "coc-clangd",
    "coc-css",
    "coc-cssmodules",
    "coc-docker",
    "coc-emmet",
    "coc-explorer",
    "coc-git",
    "coc-html",
    "coc-html",
    "coc-html-css-support",
    "coc-htmldjango",
    "coc-htmlhint",
    "coc-json",
    "coc-markdownlint",
    "coc-php-cs-fixer",
    "coc-phpactor",
    "coc-phpls",
    "coc-prettier",
    "coc-psalm",
    "coc-pyright",
    "coc-snippets",
    "coc-syntax",
    "coc-tabnine",
    "coc-tailwindcss",
    "coc-tsserver",
    "coc-vetur",
    "coc-vimlsp",
    }

require "nvim-treesitter.configs".setup {
    ensure_installed = {
        "bash",
        "c",
        "cmake",
        "cpp",
        "css",
        "dockerfile",
        "help",
        "hjson",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "json5",
        "lua",
        "markdown",
        "ninja",
        "php",
        "python",
        "query",
        "ruby",
        "rust",
        "vue",
        "scala",
        "scss",
        "typescript",
        "vue"
        },
    highlight = {
        enable = true
        },
    fold = {
        enable = true
        -- start_marker = {"^\\s*\\b(if|else|for|while)\\b"},
        -- end_marker = {"^\\s*\\b(fi|done|elif|end)\\b"},
        },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
        },
    autotag = {
        enable = true
        },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
        config = {
            json = "// %s",
            lua = "-- %s"
            }
        }
    }
require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    }

-- vim.keymap.set("n", "<leader>rc", ":RunCode<CR>", {noremap = true, silent = false})
-- vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", {noremap = true, silent = false})
-- vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", {noremap = true, silent = false})
-- 
-- 
-- require('code_runner').setup({
--   -- put here the commands by filetype
--   filetype = {
-- 		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
-- 		python = "python3 -u",
-- 		typescript = "deno run",
-- 		javascript = "npm run start",
-- 		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
-- 	},
-- })

require("nvim-autopairs").setup {}
EOF
