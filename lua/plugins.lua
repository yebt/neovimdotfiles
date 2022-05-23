local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    Packer_bootstrap =
        fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end

return require("packer").startup(
    {
        function(use)
            -- Plugins{{{
            use "wbthomason/packer.nvim"

            -- LSP
            use {
                "williamboman/nvim-lsp-installer",
                {
                    "neovim/nvim-lspconfig",
                    config = function()
                        require("nvim-lsp-installer").setup {
                            automatic_installation = true,
                            ui = {
                                icons = {
                                    server_installed = "✓",
                                    server_pending = "➜",
                                    server_uninstalled = "✗"
                                }
                            }
                        }
                        -- local lspconfig = require("lspconfig")

                        -- lspconfig.sumneko_lua.setup {}
                        -- lspconfig.sumneko_lua.setup {}
                        -- lspconfig.bashls.setup {}
                        -- lspconfig.clangd.setup {}
                        -- lspconfig.cssls.setup {}
                        -- lspconfig.cssmodules_ls.setup {}
                        -- lspconfig.diagnosticls.setup {}
                        -- lspconfig.emmet_ls.setup {}
                        -- lspconfig.html.setup {}
                        -- lspconfig.intelephense.setup {}
                        -- lspconfig.jsonls.setup {}
                        -- lspconfig.phpactor.setup {}
                        -- lspconfig.prosemd_lsp.setup {}
                        -- lspconfig.psalm.setup {}
                        -- lspconfig.pyright.setup {}
                        -- lspconfig.sqls.setup {}
                        -- lspconfig.sumneko_lua.setup {}
                        -- lspconfig.tailwindcss.setup {}
                        -- lspconfig.tsserver.setup {}
                        -- lspconfig.vimls.setup {}
                        -- lspconfig.vls.setup {}
                        -- lspconfig.volar.setup {}
                        -- lspconfig.vuels.setup {}
                    end
                }
            }
            -- use {
            --     "williamboman/nvim-lsp-installer",
            --     config = function()
            --         require("nvim-lsp-installer").setup {}
            --     end
            -- }
            --
            -- use {
            --     "neovim/nvim-lspconfig",
            --     config = function()
            --         -- -- use python-language-server
            --         -- require "lspconfig".pyright.setup {}
            --         -- -- bash-language-server
            --         -- require "lspconfig".bashls.setup {}
            --         -- -- clagn
            --         -- require "lspconfig".clangd.setup {}
            --         -- -- css
            --         -- --Enable (broadcasting) snippet capability for completion
            --         -- local capabilities = vim.lsp.protocol.make_client_capabilities()
            --         -- capabilities.textDocument.completion.completionItem.snippetSupport = true
            --         --
            --         -- require "lspconfig".cssls.setup {
            --         --     capabilities = capabilities
            --         -- }
            --         -- -- css modelues
            --         -- require "lspconfig".cssmodules_ls.setup {}
            --         -- -- emmet
            --         -- require "lspconfig".emmet_ls.setup {
            --         --     filetypes = {"html", "css", "php", "phtml", "blade", "javascript", "vue", "vue-html"}
            --         -- }
            --         -- -- html
            --         -- --Enable (broadcasting) snippet capability for completion
            --         -- local capabilities = vim.lsp.protocol.make_client_capabilities()
            --         -- capabilities.textDocument.completion.completionItem.snippetSupport = true
            --         --
            --         -- require "lspconfig".html.setup {
            --         --     capabilities = capabilities,
            --         --     filetypes = {"html", "css", "php", "phtml", "blade", "javascript", "vue", "vue-html"}
            --         -- }
            --         -- -- inthelephense
            --         -- require "lspconfig".intelephense.setup {}
            --         -- -- json
            --         -- --Enable (broadcasting) snippet capability for completion
            --         -- local capabilities = vim.lsp.protocol.make_client_capabilities()
            --         -- capabilities.textDocument.completion.completionItem.snippetSupport = true
            --         --
            --         -- require "lspconfig".jsonls.setup {
            --         --     capabilities = capabilities
            --         -- }
            --         -- -- phpactor
            --         -- require "lspconfig".phpactor.setup {}
            --         -- -- stylelint_lsp
            --         -- require "lspconfig".stylelint_lsp.setup {
            --         --     settings = {
            --         --         stylelintplus = {}
            --         --     }
            --         -- }
            --         -- -- lua
            --         --
            --         -- -- tailwindcss
            --         -- require "lspconfig".tailwindcss.setup {}
            --         -- -- typescript
            --         -- -- rememember add this to root of project
            --         -- -- {
            --         -- --   "compilerOptions": {
            --         -- --     "module": "commonjs",
            --         -- --     "target": "es6",
            --         -- --     "checkJs": false
            --         -- --   },
            --         -- --   "exclude": [
            --         -- --     "node_modules"
            --         -- --   ]
            --         -- -- }
            --         -- require "lspconfig".tsserver.setup {}
            --         -- -- vue -vls
            --         -- require "lspconfig".vuels.setup {}
            --         -- -- vue -volar
            --         -- require "lspconfig".volar.setup {
            --         --     filetypes = {"typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json"}
            --         -- }
            --     end
            -- }

            -- Autocomplete
            use {
                -- cmp source
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-cmdline",
                -- For ultisnips users.
                "SirVer/ultisnips",
                "quangnguyen30192/cmp-nvim-ultisnips"
            }
            use {
                "hrsh7th/nvim-cmp",
                config = function()
                    -- Setup nvim-cmp.
                    local cmp = require "cmp"

                    cmp.setup(
                        {
                            snippet = {
                                -- REQUIRED - you must specify a snippet engine
                                expand = function(args)
                                    vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                                    -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                                    -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
                                    -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                                end
                            },
                            window = {},
                            mapping = cmp.mapping.preset.insert(
                                {
                                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                                    ["<C-Space>"] = cmp.mapping.complete(),
                                    ["<C-e>"] = cmp.mapping.abort(),
                                    ["<CR>"] = cmp.mapping.confirm({select = true}) -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                                }
                            ),
                            sources = cmp.config.sources(
                                {
                                    {name = "nvim_lsp"},
                                    -- {name = "vsnip"} -- For vsnip users.
                                    -- { name = 'luasnip' }, -- For luasnip users.
                                    {name = "ultisnips"} -- For ultisnips users.
                                    -- { name = 'snippy' }, -- For snippy users.
                                },
                                {
                                    {name = "buffer"}
                                }
                            )
                        }
                    )

                    -- Set configuration for specific filetype.
                    cmp.setup.filetype(
                        "gitcommit",
                        {
                            sources = cmp.config.sources(
                                {
                                    {name = "cmp_git"} -- You can specify the `cmp_git` source if you were installed it.
                                },
                                {
                                    {name = "buffer"}
                                }
                            )
                        }
                    )

                    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
                    cmp.setup.cmdline(
                        "/",
                        {
                            mapping = cmp.mapping.preset.cmdline(),
                            sources = {
                                {name = "buffer"}
                            }
                        }
                    )

                    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
                    cmp.setup.cmdline(
                        ":",
                        {
                            mapping = cmp.mapping.preset.cmdline(),
                            sources = cmp.config.sources(
                                {
                                    {name = "path"}
                                },
                                {
                                    {name = "cmdline"}
                                }
                            )
                        }
                    )
                    local lspconfig = require("lspconfig")

                    -- Setup lspconfig.
                    local capabilities =
                        require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
                    -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
                    local servers = {
                        "sumneko_lua",
                        "sumneko_lua",
                        "bashls",
                        "clangd",
                        "cssls",
                        "cssmodules_ls",
                        "diagnosticls",
                        "emmet_ls",
                        "html",
                        "intelephense",
                        "jsonls",
                        "phpactor",
                        "prosemd_lsp",
                        "psalm",
                        "pyright",
                        "sqls",
                        "sumneko_lua",
                        "tailwindcss",
                        "tsserver",
                        "vimls",
                        "vls",
                        "volar",
                        "vuels"
                    }
                    for _, lsp in pairs(servers) do
                        -- require("lspconfig")[lsp].setup {
                        lspconfig[lsp].setup {
                            capabilities = capabilities,
                            flags = {
                                -- This will be the default in neovim 0.7+
                                debounce_text_changes = 150
                            }
                        }
                    end
                end
            }

            -- Search
            use {"junegunn/fzf"}
            use {"junegunn/fzf.vim"}

            -- Syntax
            use {"p00f/nvim-ts-rainbow"}
            use {"theHamsta/nvim-treesitter-pairs"}
            use {"windwp/nvim-ts-autotag"}
            use {"andymass/vim-matchup"}
            use {"JoosepAlviste/nvim-ts-context-commentstring"}
            use {
                "nvim-treesitter/nvim-treesitter",
                run = ":TSUpdate",
                config = function()
                    require "nvim-treesitter.configs".setup {
                        ensure_installed = {
                            "bash",
                            "c",
                            "cmake",
                            "cpp",
                            "css",
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
                end
            }
            use {
                "nvim-treesitter/nvim-treesitter-context",
                config = function()
                    require "treesitter-context".setup {
                        enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                        max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
                        patterns = {
                            -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
                            -- For all filetypes
                            -- Note that setting an entry here replaces all other patterns for this entry.
                            -- By setting the 'default' entry below, you can control which nodes you want to
                            -- appear in the context window.
                            default = {
                                "class",
                                "function",
                                "method"
                                -- 'for', -- These won't appear in the context
                                -- 'while',
                                -- 'if',
                                -- 'switch',
                                -- 'case',
                            }
                            -- Example for a specific filetype.
                            -- If a pattern is missing, *open a PR* so everyone can benefit.
                            --   rust = {
                            --       'impl_item',
                            --   },
                        },
                        exact_patterns = {},
                        -- [!] The options below are exposed but shouldn't require your attention,
                        --     you can safely ignore them.

                        zindex = 20 -- The Z-index of the context window
                    }
                end
            }
            use {
                "sbdchd/neoformat",
                config = function()
                    -- cpp and c -> clang-format -- this is in clang
                    -- css -> prettier
                    -- html -> prettierd
                    -- lua -> lua-fmt
                end
            }

            -- GIT
            use {
                "lewis6991/gitsigns.nvim",
                requires = {"nvim-lua/plenary.nvim"},
                config = function()
                    require("gitsigns").setup()
                end
            }

            -- Icons
            use {
                "kyazdani42/nvim-web-devicons",
                config = function()
                    require "nvim-web-devicons".setup {
                        -- your personnal icons can go here (to override)
                        -- you can specify color or cterm_color instead of specifying both of them
                        -- DevIcon will be appended to `name`
                        override = {
                            zsh = {
                                icon = "",
                                color = "#428850",
                                cterm_color = "65",
                                name = "Zsh"
                            }
                        },
                        -- globally enable default icons (default to false)
                        -- will get overriden by `get_icons` option
                        default = true
                    }
                end
            }

            -- UI
            -- use {"startup-nvim/startup.nvim", requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"}, config = function() require"startup".setup()end        }

            use {
                "rafcamlet/tabline-framework.nvim",
                requires = "kyazdani42/nvim-web-devicons",
                config = function()
                    local render = function(f)
                        -- f.add { '  ', fg = "#bb0000" }
                        f.add {" ﲋ ", fg = "#bb0000"}

                        f.make_bufs(
                            function(info)
                                -- With the help of kyazdani42/nvim-web-devicons we can fetch color
                                -- associated with the filetype
                                local icon_color = f.icon_color(info.filename)

                                -- If this is the current tab then highlight it
                                --local old_fg = "#abb2bf"
                                local old_fg = "Normal"
                                if info.current then
                                    -- We can use set_fg to change default fg color
                                    -- so you won't need to specify it every time
                                    f.set_fg(icon_color)
                                end

                                f.add("")
                                -- f.add( ' ' .. info.index .. ' ')

                                if info.filename then
                                    -- The icon function returns a filetype icon based on the filename
                                    f.add(" " .. f.icon(info.filename) .. " ")
                                    f.set_fg(old_fg)

                                    f.add(info.filename)
                                    -- f.add(info.modified and ' +' or '  ')
                                    f.add(info.modified and " " or "  ")
                                else
                                    f.add(info.modified and "[+]" or "[-]")
                                end
                                f.add " "
                            end
                        )
                    end

                    require("tabline_framework").setup {render = render}
                end
            }
            -- use{
            --     "NTBBloodbath/galaxyline.nvim",
            --     -- your statusline
            --     config = function()
            --         -- require("galaxyline.themes.eviline")
            --         local vim = vim
            --         local gl = require('galaxyline')
            --         local condition = require("galaxyline.condition")
            --
            --         local gls = gl.section
            --         gl.short_line_list = {'NvimTree', 'packager', 'vista'}
            --
            --         -- Colors
            --         local colors = {
            --             bg = '#282a36',
            --             fg = '#f8f8f2',
            --             section_bg = '#38393f',
            --             yellow = '#f1fa8c',
            --             cyan = '#8be9fd',
            --             green = '#50fa7b',
            --             orange = '#ffb86c',
            --             magenta = '#ff79c6',
            --             blue = '#8be9fd',
            --             red = '#ff5555'
            --         }
            --
            --         -- Local helper functions
            --         local mode_color = function()
            --             local mode_colors = {
            --                 n = colors.cyan,
            --                 i = colors.green,
            --                 c = colors.orange,
            --                 V = colors.magenta,
            --                 [''] = colors.magenta,
            --                 v = colors.magenta,
            --                 R = colors.red
            --             }
            --
            --             local color = mode_colors[vim.fn.mode()]
            --
            --             if color == nil then color = colors.red end
            --
            --             return color
            --         end
            --
            --         -- Left side
            --         gls.left[1] = {
            --             ViMode = {
            --                 provider = function()
            --                     local alias = {
            --                         n = 'N',
            --                         i = 'I',
            --                         c = 'C',
            --                         V = 'V',
            --                         [''] = 'VL',
            --                         v = 'V',
            --                         R = 'R'
            --                     }
            --                     vim.api.nvim_command('hi GalaxyViMode guibg=' .. mode_color())
            --                     local alias_mode = alias[vim.fn.mode()]
            --                     if alias_mode == nil then alias_mode = vim.fn.mode() end
            --                     return "  " .. alias_mode .. " "
            --                 end,
            --                 highlight = {colors.bg, colors.bg},
            --                 separator = " ",
            --                 separator_highlight = {colors.section_bg, colors.section_bg}
            --             }
            --         }
            --         gls.left[2] = {
            --             FileIcon = {
            --                 provider = 'FileIcon',
            --                 highlight = {
            --                     require('galaxyline.providers.fileinfo').get_file_icon_color,
            --                     colors.section_bg
            --                 }
            --             }
            --         }
            --         gls.left[3] = {
            --             FileName = {
            --                 provider = 'FileName',
            --                 highlight = {colors.fg, colors.section_bg},
            --                 separator = " ",
            --                 separator_highlight = {colors.section_bg, colors.bg}
            --             }
            --         }
            --         gls.left[4] = {
            --             GitIcon = {
            --                 provider = function() return '  ' end,
            --                 condition = condition.check_git_workspace,
            --                 highlight = {colors.red, colors.bg}
            --             }
            --         }
            --         gls.left[5] = {
            --             GitBranch = {
            --                 provider = function()
            --                     local vcs = require('galaxyline.providers.vcs')
            --                     local branch_name = vcs.get_git_branch()
            --                     if (string.len(branch_name) > 28) then
            --                         return string.sub(branch_name, 1, 25) .. "..."
            --                     end
            --                     return branch_name .. " "
            --                 end,
            --                 condition = condition.check_git_workspace,
            --                 highlight = {colors.fg, colors.bg}
            --             }
            --         }
            --         gls.left[6] = {
            --             DiffAdd = {
            --                 provider = 'DiffAdd',
            --                 condition = condition.check_git_workspace,
            --                 icon = ' ',
            --                 highlight = {colors.green, colors.bg}
            --             }
            --         }
            --         gls.left[7] = {
            --             DiffModified = {
            --                 provider = 'DiffModified',
            --                 condition = condition.check_git_workspace,
            --                 icon = ' ',
            --                 highlight = {colors.orange, colors.bg}
            --             }
            --         }
            --         gls.left[8] = {
            --             DiffRemove = {
            --                 provider = 'DiffRemove',
            --                 condition = condition.check_git_workspace,
            --                 icon = ' ',
            --                 highlight = {colors.red, colors.bg}
            --             }
            --         }
            --         gls.left[9] = {
            --             LeftEnd = {
            --                 provider = function() return ' ' end,
            --                 highlight = {colors.section_bg, colors.bg}
            --             }
            --         }
            --         gls.left[10] = {
            --             DiagnosticError = {
            --                 provider = 'DiagnosticError',
            --                 icon = '  ',
            --                 highlight = {colors.red, colors.section_bg}
            --             }
            --         }
            --         gls.left[11] = {
            --             Space = {
            --                 provider = function() return ' ' end,
            --                 highlight = {colors.section_bg, colors.section_bg}
            --             }
            --         }
            --         gls.left[12] = {
            --             DiagnosticWarn = {
            --                 provider = 'DiagnosticWarn',
            --                 icon = '  ',
            --                 highlight = {colors.orange, colors.section_bg}
            --             }
            --         }
            --         gls.left[13] = {
            --             DiagnosticHint = {
            --                 provider = 'DiagnosticHint',
            --                 icon = '  ',
            --                 highlight = {colors.fg, colors.section_bg}
            --             }
            --         }
            --         gls.left[14] = {
            --             Space = {
            --                 provider = function() return ' ' end,
            --                 highlight = {colors.section_bg, colors.section_bg}
            --             }
            --         }
            --         gls.left[15] = {
            --             DiagnosticInfo = {
            --                 provider = 'DiagnosticInfo',
            --                 icon = '  ',
            --                 highlight = {colors.blue, colors.section_bg},
            --                 separator = ' ',
            --                 separator_highlight = {colors.section_bg, colors.bg}
            --             }
            --         }
            --         -- middle side
            --         local gps = require("nvim-gps")
            --         gls.mid[0] = {
            --             nvimGPS = {
            --                 provider = function()
            --                     return gps.get_location()
            --                 end,
            --                 condition = function()
            --                     return gps.is_available()
            --                 end,
            --
            --                 separator_highlight = {colors.section_bg, colors.bg}
            --             }
            --         }
            --
            --         -- Right side
            --         gls.right[1] = {
            --             FileFormat = {
            --                 provider = function() return vim.bo.filetype end,
            --                 highlight = {colors.fg, colors.section_bg},
            --                 separator = ' ',
            --                 separator_highlight = {colors.section_bg, colors.bg}
            --             }
            --         }
            --         gls.right[2] = {
            --             LineInfo = {
            --                 provider = 'LineColumn',
            --                 highlight = { colors.fg, colors.section_bg },
            --                 separator = ' | ',
            --                 separator_highlight = { colors.bg, colors.section_bg },
            --             },
            --         }
            --
            --         gls.right[3] = {
            --             ShowLspClient = {
            --                 provider = 'GetLspClient',
            --                 separator= ' ',
            --                 condition = function ()
            --                     local tbl = {['dashboard'] = true,['']=true}
            --                     if tbl[vim.bo.filetype] then
            --                         return false
            --                     end
            --                     return true
            --                 end,
            --                 icon = 'LSP:',
            --                 highlight = {colors.cyan,colors.bg,'italic'}
            --             }
            --         }
            --
            --
            --
            --
            --
            --         -- Short status line
            --         gls.short_line_left[1] = {
            --             BufferType = {
            --                 provider = 'FileTypeName',
            --                 highlight = {colors.fg, colors.section_bg},
            --                 separator = ' ',
            --                 separator_highlight = {colors.section_bg, colors.bg}
            --             }
            --         }
            --
            --         gls.short_line_right[1] = {
            --             BufferIcon = {
            --                 provider = 'BufferIcon',
            --                 highlight = {colors.yellow, colors.section_bg},
            --                 separator = ' ',
            --                 separator_highlight = {colors.section_bg, colors.bg}
            --             }
            --         }
            --
            --
            --         -- Force manual load so that nvim boots with a status line
            --         gl.load_galaxyline()
            --
            --     end,
            --     -- some optional icons
            --     requires = { "kyazdani42/nvim-web-devicons", opt = true }
            -- }

            -- use {
            --     'glepnir/indent-guides.nvim',
            --     config = function()
            --         exclude_filetypes = {'help','dashboard','dashpreview','NvimTree','vista','sagahover'};
            --         indent_space_guides = false;
            --     end
            -- }
            use {
                "lukas-reineke/indent-blankline.nvim",
                config = function()
                    require("indent_blankline").setup {
                        -- for example, context is off by default, use this to turn it on

                        show_current_context = true,
                        show_current_context_start = true,
                        char = "▏"
                        -- char_highlight_list = {
                        --     "Comment",
                        -- }
                    }
                    vim.cmd([[let g:indent_blankline_enabled = v:false]])
                end
            }
            use {
                "gelguy/wilder.nvim",
                config = function()
                    local wilder = require("wilder")
                    -- wilder.setup({modes = {":", "/", "?"}})
                    wilder.setup({modes = {":", "?"}})
                    wilder.set_option(
                        "renderer",
                        wilder.popupmenu_renderer(
                            {
                                highlighter = wilder.basic_highlighter(),
                                left = {" ", wilder.popupmenu_devicons()},
                                right = {" ", wilder.popupmenu_scrollbar()}
                            }
                        )
                    )
                end
            }

            -- Editing
            use {
                "windwp/nvim-autopairs",
                config = function()
                    require("nvim-autopairs").setup {
                        disable_filetype = {"TelescopePrompt", "vim"}
                    }
                end
            }

            -- Behavour
            use {
                "folke/which-key.nvim",
                config = function()
                    require("which-key").setup {}
                end
            }
            use {
                "terrortylor/nvim-comment",
                config = function()
                    require("nvim_comment").setup(
                        {
                            comment_empty = true,
                            hook = function()
                                require("ts_context_commentstring.internal").update_commentstring()
                            end
                        }
                    )
                end
            }
            -- use {
            --     "SmiteshP/nvim-gps",
            --     requires = "nvim-treesitter/nvim-treesitter"
            -- }
            -- use {
            --     'xiyaowong/nvim-cursorword',
            --     config = function()
            --
            --     end
            -- }
            use {
                "nvim-neo-tree/neo-tree.nvim",
                branch = "v2.x",
                requires = {
                    "nvim-lua/plenary.nvim",
                    "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
                    "MunifTanjim/nui.nvim"
                },
                config = function()
                    require("neo-tree").setup(
                        {
                            close_if_last_window = true,
                            enable_git_status = true,
                            enable_diagnostics = false,
                            filesystem = {
                                filtered_items = {
                                    hide_dotfiles = false
                                },
                                follow_current_file = true
                            }
                        }
                    )
                end
            }
            use {
                "CRAG666/code_runner.nvim",
                requires = "nvim-lua/plenary.nvim",
                config = function()
                    vim.keymap.set("n", "<leader>rc", ":RunCode<CR>", {noremap = true, silent = false})
                    vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", {noremap = true, silent = false})
                    vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", {noremap = true, silent = false})

                    require("code_runner").setup(
                        {
                            filetype = {
                                java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
                                python = "python3 -u",
                                typescript = "deno run",
                                rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
                            }
                        }
                    )
                end
            }

            -- Colorscheme
            use {
                "tomasiser/vim-code-dark"
            }
            use {"mangeshrex/everblush.vim"}
            use {
                "tiagovla/tokyodark.nvim",
                config = function()
                    vim.g.tokyodark_transparent_background = false
                    vim.g.tokyodark_enable_italic_comment = true
                    vim.g.tokyodark_enable_italic = true
                    vim.g.tokyodark_color_gamma = "1.0"
                end
            }
            use "folke/tokyonight.nvim"
            use {
                "rebelot/kanagawa.nvim",
                config = function()
                    require("kanagawa").setup(
                        {
                            undercurl = true, -- enable undercurls
                            commentStyle = "italic",
                            functionStyle = "NONE",
                            keywordStyle = "italic",
                            statementStyle = "bold",
                            typeStyle = "NONE",
                            variablebuiltinStyle = "italic",
                            specialReturn = true, -- special highlight for the return keyword
                            specialException = true, -- special highlight for exception handling keywords
                            transparent = false, -- do not set background color
                            dimInactive = true, -- dim inactive window `:h hl-NormalNC`
                            globalStatus = true, -- adjust window separators highlight for laststatus=3
                            colors = {},
                            overrides = {}
                        }
                    )
                    vim.opt.fillchars:append(
                        {
                            stl = " ",
                            stlnc = " ",
                            horiz = "━",
                            horizup = "┻",
                            horizdown = "┳",
                            vert = "┃",
                            vertleft = "┨",
                            vertright = "┣",
                            verthoriz = "╋"
                        }
                    )
                end
            }
            use "frenzyexists/aquarium-vim"
            use(
                {
                    "catppuccin/nvim",
                    as = "catppuccin"
                }
            )
            use {
                "Mofiqul/dracula.nvim",
                config = function()
                    vim.g.dracula_show_end_of_buffer = true
                    vim.g.dracula_italic_comment = true
                end
            }
            use {
                "lourenci/github-colors"
            }
            use "tanvirtin/monokai.nvim"
            use {
                "bluz71/vim-nightfly-guicolors",
                config = function()
                    vim.g.nightflyCursorColor = 1
                    vim.g.nightflyItalics = 1
                end
            }
            -- use "haishanh/night-owl.vim"
            use {
                "charliesbot/night-owl.vim"
            }

            -- Automatically set up your configuration after cloning packer.nvim
            -- Put this at the end after all plugins
            if Packer_bootstrap then
                require("packer").sync()
            end
        end,
        config = {
            display = {
                non_interactive = false, -- If true, disable display windows for all operations
                open_fn = function()
                    return require("packer.util").float({border = "shadow"})
                end,
                open_cmd = "65vnew \\[packer\\]", -- An optional command to open a window for packer's display
                working_sym = "🔨", -- The symbol for a plugin being installed/updated
                error_sym = "🔥", -- The symbol for a plugin with an error in installation/updating
                done_sym = "✨", -- The symbol for a plugin which has completed installation/updating
                removed_sym = "🚫", -- The symbol for an unused plugin which was removed
                moved_sym = "📦", -- The symbol for a plugin which was moved (e.g. from opt to start)
                header_sym = "═", -- The symbol for the header line in packer's display
                show_all_info = true, -- Should packer show all update details automatically?
                prompt_border = "shadow", -- Border style of prompt popups.
                keybindings = {
                    -- Keybindings for the display window
                    quit = "q",
                    toggle_info = "<CR>",
                    diff = "d",
                    prompt_revert = "r"
                }
            },
            profile = {
                enable = true,
                threshold = 1 -- the amount in ms that a plugins load time must be over for it to be included in the profile
            }
        }
    }
)
