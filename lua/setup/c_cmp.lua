--vim.opt.runtimepath:append("~/github/lsp_signature.nvim")

local cmp = require 'cmp'


local kind_icons = {
    Class = "ﴯ",
    Color = "",
    Constant = "",
    Constructor = "",
    Enum = "",
    EnumMember = "",
    Event = "",
    Field = "",
    File = "",
    Folder = "",
    Function = "",
    Interface = "",
    Keyword = "",
    Method = "",
    Module = "",
    Operator = "",
    Property = "ﰠ",
    Reference = "",
    Snippet = "",
    Struct = "",
    Text = "",
    TypeParameter = "",
    Unit = "",
    Value = "",
    Variable = ""
}



cmp.setup({
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<ESC>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = false,
        },
    },
    snippet = {
        expand = function(args)
            -- require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
            vim.fn["UltiSnips#Anon"](args.body)
        end,
    },
    sources =
    {
        { name = "ultisnips" },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
            -- { name = 'luasnip' },
            -- { name = 'emoji' },
        {
                name = 'path',
                option = {
                    trailing_slash = true
                },
            },
        { name = 'buffer' },
        { name = 'cmp_tabnine' },
        { name = 'nvim_lsp_signature_help' }
    },
    formatting = {
        format = function(entry, vim_item)
            -- Kind icons
            vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
            -- Source
            vim_item.menu = ({
                buffer = "[Buf]",
                nvim_lsp = "[LSP]",
                -- luasnip = "[Luasnip]",
                nvim_lua = "[Lua]",
                latex_symbols = "[LaTeX]",
                cmp_tabnine = "[TN]",
                ultisnips = "[UltiSnips]"
            })[entry.source.name]
            return vim_item
        end
    },
    completion = { completeopt = "menu,menuone,noinsert" },
    experimental = { ghost_text = true },
})

require("luasnip").config.set_config({ history = true, updateevents = "TextChanged,TextChangedI" })
require("luasnip.loaders.from_vscode").load()

local cmp_autopairs = require("nvim-autopairs.completion.cmp")

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
--
cmp_autopairs.lisp[#cmp_autopairs.lisp + 1] = "racket"

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = { "documentation", "detail", "additionalTextEdits" },
}

local sumneko_root_path = vim.fn.expand("$HOME") .. "/github/sumneko/lua-language-server"
local sumneko_binary = vim.fn.expand("$HOME") .. "/github/sumneko/lua-language-server/bin/macOS/lua-language-server"

local lua_cfg = {
    cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
    settings = {
        Lua = {
            runtime = { version = "LuaJIT", path = vim.split(package.path, ";") },
            diagnostics = { enable = true },
        },
    },
    capabilities = capabilities,
}

local signature_config = {
    log_path = vim.fn.expand("$HOME") .. "/tmp/sig.log",
    debug = true,
    hint_enable = false,
    handler_opts = { border = "single" },
    max_width = 80,
}

require("lsp_signature").setup(signature_config)

require("lspconfig").sumneko_lua.setup(lua_cfg)
require("lspconfig").gopls.setup({ capabilities = capabilities })
require("lspconfig").clangd.setup({ capabilities = capabilities })
