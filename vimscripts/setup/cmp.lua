local lspkind = require 'lspkind'
local cmp = require'cmp'

cmp.setup({
    enabled =  true,
    mapping = {
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.close(),
        ["<C-y>"] = cmp.mapping.confirm{
            behavior =  cmp.ConfirmBehavior.Insert,
            select = true
        },
        ["<C-space>"] =  cmp.mapping.complete(),
    },
    source = {
        {name = "gh_issues"},
        {name = "nvim_lua"},
        {name = "nvim_lsp"},
        {name = "path"},
        {name = "luasnip"},
        {name = "buffer", keyword_length = 5}
    },

    snippet = {
        expand = function (args)
            require 'luasnip'.lsp_expand(args.body)
        end
    },

    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[lsp]",
                nvim_lua = "[api]",
                path = "[path]",
                luasnip = "[snip]",
                gh_issue = "[issues]",
            }

        }
    },

    experimental = {
        native_menu = false,

        ghost_text = true
    }
})


-- -- Setup lspconfig.
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
    --     capabilities = capabilities
    -- }

