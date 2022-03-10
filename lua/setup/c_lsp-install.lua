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


-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function will take the provided server configuration and decorate it with the necessary properties
    -- before passing it onwards to lspconfig.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)


-- -- Include the servers you want to have installed by default below
-- local servers = {
--     "bashls",
--     "pyright",
--     "vuels",
--     "yamlls",
--     "sumneko_lua",
--     "vimls",
--     "cssls",
--     "angularls",
--     "cssmodules_ls",
--     "dartls",
--     "diagnosticls",
--     "emmet_ls",
--     "html",
--     "intelephense",
--     "jdtls",
--     "jsonls",
--     "phpactor",
--     "psalm",
--     "pylsp",
--     "quick_lint_js",
--     "sqls",
--     "tailwindcss",
--     "tsserver",
--     "vala_ls",
-- }
-- 
-- for _, name in pairs(servers) do
--     local server_is_found, server = lsp_installer.get_server(name)
--     if server_is_found and not server:is_installed() then
--         print("Installing " .. name)
--         server:install()
--     end
-- end
