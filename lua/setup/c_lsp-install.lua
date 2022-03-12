local lsp_installer = require("nvim-lsp-installer")


lsp_installer.settings({
    ui = {
        icons = {
            server_installed = " ✓",
            server_pending = " ➜",
            server_uninstalled = " ✗"
        }
    }
})


local servers = {
    "angularls",
    "bashls",
    "clangd",
    "cssls",
    "cssmodules_ls",
    "denols",
    "diagnosticls",
    "emmet_ls",
    "html",
    "intelephense",
    "jsonls",
    "lemminx",
    "phpactor",
    "psalm",
    "pylsp",
    "pyright",
    "quick_lint_js",
    -- "remark_ls",
    "sqlls",
    "sumneko_lua",
    "tailwindcss",
    "tsserver",
    "vimls",
    "volar",
    "vuels",
    "yamlls",
}
for _, name in pairs(servers) do
    local server_is_found, server = lsp_installer.get_server(name)
    if server_is_found and not server:is_installed() then
        print("Installing " .. name)
        server:install()
    end
end

-- crazy maps
local opts_k = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts_k)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts_k)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts_k)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts_k)


local on_attach = function(_, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>',opts_k)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts_k)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts_k)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts_k)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts_k)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts_k)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts_k)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts_k)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts_k)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts_k)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts_k)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts_k)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts_k)
end

local enhance_server_opts = {
    -- Provide settings that should only apply to the "eslintls" server
    ["eslintls"] = function(opts)
        opts.settings = {
            format = {
                enable = true,
            },
        }
    end,
    ["sumneko_lua"] = function(opts)
        local runtime_path = vim.split(package.path, ';')
        table.insert(runtime_path, "lua/?.lua")
        table.insert(runtime_path, "lua/?/init.lua")

        opts.settings = {
            format = {
                enable = true,
            },
            Lua = {
                runtime = {
                    path = runtime_path,
                },
                diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    globals = {'vim'},
                },
            }
        }
    end,
}



lsp_installer.on_server_ready(function(server)
    -- Specify the default options which we'll use to setup all servers
    local opts = {
        on_attach = on_attach,
    }
    if enhance_server_opts[server.name] then
        -- Enhance the default opts with the server-specific ones
        enhance_server_opts[server.name](opts)
    end

    server:setup(opts)
end)

