local ok, _ = pcall(require, 'plugins')
if not ok then
    print('Error loading plugins ' .. _ .. ' :C')
end

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- vim.cmd([[ 
-- source ~/.config/nvim/vim/functions.vim 
-- source ~/.config/nvim/vim/maps.vim
-- source ~/.config/nvim/vim/options.vim 
-- source ~/.config/nvim/vim/functions.vim 
-- source ~/.config/nvim/vim/view.vim
-- "source ~/.config/nvim/vim/zautocmd.vim
-- ]])
vim.cmd([[runtime! vim/*.vim]]) 
