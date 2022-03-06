vim.cmd ([[packadd packer.nvim]])

return require('packer').startup({
    function()
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        -- TELESCOPE
        use {
            'nvim-telescope/telescope.nvim',
            requires = { {'nvim-lua/plenary.nvim'} }
        }

    end,
    -- CONFIG
    config = { 
        display = {
            non_interactive = false, -- If true, disable display windows for all operations
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end,
            open_cmd = '65vnew \\[packer\\]', -- An optional command to open a window for packer's display
            working_sym = '🔨 Working...', --  🔧🔩🔨  Whe symbol for a plugin being installed/updated
            error_sym = '💀 Error ', --   'ﮊ Error 'The symbol for a plugin with an error in installation/updating
            done_sym = '🍺 Nice ', --  The symbol for a plugin which has completed installation/updating
            removed_sym = '🔥 Deleted ', -- The symbol for an unused plugin which was removed
            moved_sym = '🗃️ Moved ', --נּ The symbol for a plugin which was moved (e.g. from opt to start)
            header_sym = '━', -- The symbol for the header line in packer's display
            show_all_info = true, -- Should packer show all update details automatically?
            prompt_border = 'double', -- Border style of prompt popups.
        },
    }
})

