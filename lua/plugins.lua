local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


return require('packer').startup(
{
    function()
        -- Plugins
        use 'wbthomason/packer.nvim'


        -- Search
        use {'junegunn/fzf'}
        use {'junegunn/fzf.vim'}


        -- Syntax
        use {'p00f/nvim-ts-rainbow'}
        use {'theHamsta/nvim-treesitter-pairs'}
        use {'windwp/nvim-ts-autotag'}
        use {'andymass/vim-matchup'}
        use {'JoosepAlviste/nvim-ts-context-commentstring'}
        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate',
            config = function()
                require'nvim-treesitter.configs'.setup {
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
                        "rust","vue",
                        "scala",
                        "scss",
                        "typescript",
                        "vue",
                    },

                    highlight = {
                        enable = true,
                    },
                    rainbow = {
                        enable = true,
                        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
                        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
                        max_file_lines = nil, -- Do not enable for files with more than n lines, int
                        -- colors = {}, -- table of hex strings
                        -- termcolors = {} -- table of colour name strings
                    },
                    autotag = {
                        enable = true,
                    },
                    context_commentstring = {
                        enable = true,
                        enable_autocmd = false,
                        config = {
                            json = '// %s',
                            lua = '-- %s',
                        }
                    },
                    --                    pairs = {
                        --                        enable = true,
                        --                        disable = {},
                        --                        highlight_pair_events = {"CursorMoved"}, -- e.g. {"CursorMoved"}, -- when to highlight the pairs, use {} to deactivate highlighting
                        --                        highlight_self = true, -- whether to highlight also the part of the pair under cursor (or only the partner)
                        --                        goto_right_end = false, -- whether to go to the end of the right partner or the beginning
                        --                        fallback_cmd_normal = "call matchit#Match_wrapper('',1,'n')", -- What command to issue when we can't find a pair (e.g. "normal! %")
                        --                        keymaps = {
                            --                            goto_partner = "<leader>%",
                            --                            delete_balanced = "X",
                            --                        },
                            --                        delete_balanced = {
                                --                            only_on_first_char = false, -- whether to trigger balanced delete when on first character of a pair
                                --                            fallback_cmd_normal = nil, -- fallback command when no pair found, can be nil
                                --                            longest_partner = false, -- whether to delete the longest or the shortest pair when multiple found.
                                --                            -- E.g. whether to delete the angle bracket or whole tag in  <pair> </pair>
                                --                        }
                                --                    }
                            }
                        end
                    }
                    use {
                        'nvim-treesitter/nvim-treesitter-context',
                        config = function ()
                            require'treesitter-context'.setup{
                                enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                                max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
                                patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
                                -- For all filetypes
                                -- Note that setting an entry here replaces all other patterns for this entry.
                                -- By setting the 'default' entry below, you can control which nodes you want to
                                -- appear in the context window.
                                default = {
                                    'class',
                                    'function',
                                    'method',
                                    -- 'for', -- These won't appear in the context
                                    -- 'while',
                                    -- 'if',
                                    -- 'switch',
                                    -- 'case',
                                },
                                -- Example for a specific filetype.
                                -- If a pattern is missing, *open a PR* so everyone can benefit.
                                --   rust = {
                                    --       'impl_item',
                                    --   },
                                },
                                exact_patterns = {
                                    -- Example for a specific filetype with Lua patterns
                                    -- Treat patterns.rust as a Lua pattern (i.e "^impl_item$" will
                                    -- exactly match "impl_item" only)
                                    -- rust = true,
                                },

                                -- [!] The options below are exposed but shouldn't require your attention,
                                --     you can safely ignore them.

                                zindex = 20, -- The Z-index of the context window
                            }
                        end
                    }

                    -- GIT
                    use {
                        'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
                        config = function() require('gitsigns').setup() end
                    }

                    -- Icons
                    use {
                        'kyazdani42/nvim-web-devicons',
                        config = function()
                            require'nvim-web-devicons'.setup {
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
                                };
                                -- globally enable default icons (default to false)
                                -- will get overriden by `get_icons` option
                                default = true;
                            }
                        end
                    }


                    -- UI
                    use { 
                        "rafcamlet/tabline-framework.nvim",  
                        requires = "kyazdani42/nvim-web-devicons",
                        config = function()
                            local render = function(f)
                                f.add { '  ', fg = "#bb0000" }

                                f.make_bufs(function(info)
                                    -- With the help of kyazdani42/nvim-web-devicons we can fetch color
                                    -- associated with the filetype
                                    local icon_color = f.icon_color(info.filename)

                                    -- If this is the current tab then highlight it
                                    local old_fg = "#abb2bf"
                                    if info.current then
                                        -- We can use set_fg to change default fg color
                                        -- so you won't need to specify it every time
                                        f.set_fg(icon_color)
                                    end

                                    f.add('')
                                    -- f.add( ' ' .. info.index .. ' ')

                                    if info.filename then

                                        -- The icon function returns a filetype icon based on the filename
                                        f.add(' ' .. f.icon(info.filename) .. ' ')
                                        f.set_fg(old_fg)

                                        f.add(info.filename)
                                        -- f.add(info.modified and ' +' or '  ')
                                        f.add(info.modified and ' ' or '  ')

                                    else
                                        f.add(info.modified and '[+]' or '[-]')
                                    end
                                    f.add ' '
                                end)
                            end

                            require('tabline_framework').setup { render = render }

                        end
                    }


                    -- Behavour
                    use {
                        "folke/which-key.nvim",
                        config = function()
                            require("which-key").setup {
                                -- your configuration comes here
                                -- or leave it empty to use the default settings
                                -- refer to the configuration section below
                            }
                        end
                    }
                    use {
                        'terrortylor/nvim-comment',
                        config = function()
                            require('nvim_comment').setup({
                                comment_empty = true,
                                hook = function()
                                    require("ts_context_commentstring.internal").update_commentstring()
                                end,
                            })
                        end
                    }


                    -- Colorscheme
                    use {
                        'tomasiser/vim-code-dark',
                    }
                    use { "mangeshrex/everblush.vim" }
                    use {
                        'tiagovla/tokyodark.nvim',
                        config = function()
                            vim.g.tokyodark_transparent_background = false
                            vim.g.tokyodark_enable_italic_comment = true
                            vim.g.tokyodark_enable_italic = true
                            vim.g.tokyodark_color_gamma = "1.0"
                        end
                    }
                    use 'folke/tokyonight.nvim'
                    use {
                        "rebelot/kanagawa.nvim",
                        config = function()
                            require('kanagawa').setup({
                                undercurl = true,           -- enable undercurls
                                commentStyle = "italic",
                                functionStyle = "NONE",
                                keywordStyle = "italic",
                                statementStyle = "bold",
                                typeStyle = "NONE",
                                variablebuiltinStyle = "italic",
                                specialReturn = true,       -- special highlight for the return keyword
                                specialException = true,    -- special highlight for exception handling keywords
                                transparent = false,        -- do not set background color
                                dimInactive = true,        -- dim inactive window `:h hl-NormalNC`
                                globalStatus = true,       -- adjust window separators highlight for laststatus=3
                                colors = {},
                                overrides = {},
                            })
                            vim.opt.fillchars:append({
                                stl = " ",
                                stlnc = " ",
                                horiz = '━',
                                horizup = '┻',
                                horizdown = '┳',
                                vert = '┃',
                                vertleft = '┨',
                                vertright = '┣',
                                verthoriz = '╋',
                            })
                        end
                    }
                    use 'frenzyexists/aquarium-vim'
                    use({
                        "catppuccin/nvim",
                        as = "catppuccin"
                    })
                    use {
                        'Mofiqul/dracula.nvim',
                        config = function()
                            vim.g.dracula_show_end_of_buffer = true
                            vim.g.dracula_italic_comment = true
                        end
                    }
                    use {
                        'lourenci/github-colors'
                    }
                    use 'tanvirtin/monokai.nvim'
                    use {
                        'bluz71/vim-nightfly-guicolors',
                        config = function()
                            vim.g.nightflyCursorColor = 1
                            vim.g.nightflyItalics = 1
                        end
                    }
                    use 'haishanh/night-owl.vim'





                    -- Automatically set up your configuration after cloning packer.nvim
                    -- Put this at the end after all plugins
                    if packer_bootstrap then
                        require('packer').sync()
                    end
                end,
                config = {
                    display = {
                        non_interactive = false, -- If true, disable display windows for all operations
                        open_fn = function()
                            return require('packer.util').float({ border = 'shadow' })
                        end,
                        open_cmd = '65vnew \\[packer\\]', -- An optional command to open a window for packer's display
                        working_sym = '🔨', -- The symbol for a plugin being installed/updated
                        error_sym = '🔥', -- The symbol for a plugin with an error in installation/updating
                        done_sym = '✨', -- The symbol for a plugin which has completed installation/updating
                        removed_sym = '🚫', -- The symbol for an unused plugin which was removed
                        moved_sym = '📦', -- The symbol for a plugin which was moved (e.g. from opt to start)
                        header_sym = '═', -- The symbol for the header line in packer's display
                        show_all_info = true, -- Should packer show all update details automatically?
                        prompt_border = 'shadow', -- Border style of prompt popups.
                        keybindings = { 
                            -- Keybindings for the display window
                            quit = 'q',
                            toggle_info = '<CR>',
                            diff = 'd',
                            prompt_revert = 'r',
                        }
                    },
                    profile = {
                        enable = true,
                        threshold = 1 -- the amount in ms that a plugins load time must be over for it to be included in the profile
                    }
                }
            })


            -- require'packer'.startup(
            -- {
                -- 	function()
                    -- 		  -- Packer can manage itself
                    -- 		  use 'wbthomason/packer.nvim'
                    -- 	end,
                    -- 	configs ={
                        -- 		display = {
                            -- 			-- working_sym = '⟳', -- The symbol for a plugin being installed/updated
                            -- 			working_sym = '🔨 ', -- The symbol for a plugin being installed/updated
                            -- 			-- error_sym = '✗', -- The symbol for a plugin with an error in installation/updating
                            -- 			error_sym = '🔥 ', -- The symbol for a plugin with an error in installation/updating
                            -- 			-- done_sym = '✓', -- The symbol for a plugin which has completed installation/updating
                            -- 			done_sym = '✨', -- The symbol for a plugin which has completed installation/updating
                            -- 			-- removed_sym = '-', -- The symbol for an unused plugin which was removed
                            -- 			removed_sym = '🚫 ', -- The symbol for an unused plugin which was removed
                            -- 			-- moved_sym = '→', -- The symbol for a plugin which was moved (e.g. from opt to start)
                            -- 			moved_sym = '📦 ', -- The symbol for a plugin which was moved (e.g. from opt to start)
                            -- 			--header_sym = '━', -- The symbol for the header line in packer's display
                            -- 			header_sym = '▒', -- The symbol for the header line in packer's display
                            -- 
                            -- 			open_fn = function()
                                -- 				return require('packer.util').float({ border = 'shadow' })
                                -- 			end
                                -- 		},
                                -- 		luarocks = {
                                    -- 			python_cmd = 'python' -- Set the python command to use for running hererocks
                                    -- 		},
                                    -- 		log = { level = 'warn' }, -- The default print log level. One of: "trace", "debug", "info", "warn", "error", "fatal".
                                    -- 		profile = {
                                        -- 			enable = false,
                                        -- 			threshold = 1, -- integer in milliseconds, plugins which load faster than this won't be shown in profile output
                                        -- 		},
                                        -- 		autoremove = false, -- Remove disabled or unused plugins without prompting the user
                                        -- 	},
                                        -- 	rocks = {
                                            -- 	}
                                            -- })

