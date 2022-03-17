call plug#begin('~/.config/nvim/plugged')
"Plug 'arcticicestudio/nord-vim'
"Plug 'cocopon/iceberg.vim'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'ayu-theme/ayu-vim'
Plug 'Shatur/neovim-ayu'
"Plug 'junegunn/seoul256.vim'
Plug 'ulwlu/elly.vim'

"Plug 'RRethy/nvim-base16'
Plug 'marko-cerovac/material.nvim'
"Plug 'shaunsingh/nord.nvim'
"Plug 'shaunsingh/solarized.nvim'
Plug 'rebelot/kanagawa.nvim'

Plug 'norcalli/nvim-colorizer.lua'

Plug 'karb94/neoscroll.nvim'

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'windwp/nvim-spectre'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'vim-ctrlspace/vim-ctrlspace'

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'preservim/tagbar'
Plug 'akinsho/toggleterm.nvim'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-startify'

Plug 'folke/which-key.nvim'

" Plug 'noib3/nvim-cokeline'
Plug 'akinsho/bufferline.nvim'

Plug 'Yggdroot/hiPairs'
Plug 'tpope/vim-commentary'
"Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-autopairs'
Plug 'tpope/vim-surround'
Plug 'leafOfTree/vim-matchtag'

Plug 'sheerun/vim-polyglot'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'nvim-treesitter/playground'
Plug 'p00f/nvim-ts-rainbow'
Plug 'theHamsta/nvim-treesitter-pairs'

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'sbdchd/neoformat'

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()