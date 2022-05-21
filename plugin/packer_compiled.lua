-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/btye/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/btye/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/btye/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/btye/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/btye/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["aquarium-vim"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/aquarium-vim",
    url = "https://github.com/frenzyexists/aquarium-vim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["dracula.nvim"] = {
    config = { "\27LJ\2\nc\0\0\2\0\4\0\t6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0K\0\1\0\27dracula_italic_comment\31dracula_show_end_of_buffer\6g\bvim\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["everblush.vim"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/everblush.vim",
    url = "https://github.com/mangeshrex/everblush.vim"
  },
  fzf = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["github-colors"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/github-colors",
    url = "https://github.com/lourenci/github-colors"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["kanagawa.nvim"] = {
    config = { "\27LJ\2\n»\3\0\0\4\0\v\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0\18\2\0\0009\0\t\0005\3\n\0B\0\3\1K\0\1\0\1\0\t\14horizdown\b‚î≥\fhorizup\b‚îª\nhoriz\b‚îÅ\nstlnc\6 \14verthoriz\b‚ïã\14vertright\b‚î£\bstl\6 \rvertleft\b‚î®\tvert\b‚îÉ\vappend\14fillchars\bopt\bvim\14overrides\vcolors\1\0\f\19statementStyle\tbold\17keywordStyle\vitalic\18functionStyle\tNONE\17commentStyle\vitalic\14undercurl\2\17globalStatus\2\16dimInactive\2\16transparent\1\21specialException\2\18specialReturn\2\25variablebuiltinStyle\vitalic\14typeStyle\tNONE\nsetup\rkanagawa\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["monokai.nvim"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/monokai.nvim",
    url = "https://github.com/tanvirtin/monokai.nvim"
  },
  ["night-owl.vim"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/night-owl.vim",
    url = "https://github.com/haishanh/night-owl.vim"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequire^\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\1K\0\1\0\thook\0\1\0\1\18comment_empty\2\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n∏\3\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\2B\0\2\1K\0\1\0\26context_commentstring\vconfig\1\0\2\tjson\n// %s\blua\n-- %s\1\0\2\venable\2\19enable_autocmd\1\fautotag\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\26\0\0\tbash\6c\ncmake\bcpp\bcss\thelp\nhjson\thtml\15javascript\njsdoc\tjson\njson5\blua\rmarkdown\nninja\bphp\vpython\nquery\truby\trust\bvue\nscala\tscss\15typescript\bvue\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\nπ\1\0\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\0024\3\0\0=\3\b\2B\0\2\1K\0\1\0\19exact_patterns\rpatterns\fdefault\1\0\0\1\4\0\0\nclass\rfunction\vmethod\1\0\3\vzindex\3\20\venable\2\14max_lines\3\0\nsetup\23treesitter-context\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-treesitter-pairs"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs",
    url = "https://github.com/theHamsta/nvim-treesitter-pairs"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n°\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\roverride\1\0\1\fdefault\2\bzsh\1\0\0\1\0\4\ticon\bÓûï\16cterm_color\a65\tname\bZsh\ncolor\f#428850\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["tabline-framework.nvim"] = {
    config = { "\27LJ\2\nÕ\2\0\1\t\1\14\0=-\1\0\0009\1\0\0019\3\1\0B\1\2\2'\2\2\0009\3\3\0\15\0\3\0X\4\4Ä-\3\0\0009\3\4\3\18\5\1\0B\3\2\1-\3\0\0009\3\5\3'\5\6\0B\3\2\0019\3\1\0\15\0\3\0X\4\28Ä-\3\0\0009\3\5\3'\5\a\0-\6\0\0009\6\b\0069\b\1\0B\6\2\2'\a\a\0&\5\a\5B\3\2\1-\3\0\0009\3\4\3\18\5\2\0B\3\2\1-\3\0\0009\3\5\0039\5\1\0B\3\2\1-\3\0\0009\3\5\0039\5\t\0\15\0\5\0X\6\2Ä'\5\n\0X\6\1Ä'\5\v\0B\3\2\1X\3\tÄ-\3\0\0009\3\5\0039\5\t\0\15\0\5\0X\6\2Ä'\5\f\0X\6\1Ä'\5\r\0B\3\2\1-\3\0\0009\3\5\3'\5\a\0B\3\2\1K\0\1\0\0¿\b[-]\b[+]\a  \t ÔÑë\rmodified\ticon\6 \5\badd\vset_fg\fcurrent\f#abb2bf\rfilename\15icon_colorK\1\1\4\0\4\0\b9\1\0\0005\3\1\0B\1\2\0019\1\2\0003\3\3\0B\1\2\0012\0\0ÄK\0\1\0\0\14make_bufs\1\2\1\0\n Óò´ \afg\f#bb0000\baddV\1\0\4\0\6\0\t3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0=\0\5\3B\1\2\1K\0\1\0\vrender\1\0\0\nsetup\22tabline_framework\frequire\0\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/tabline-framework.nvim",
    url = "https://github.com/rafcamlet/tabline-framework.nvim"
  },
  ["tokyodark.nvim"] = {
    config = { "\27LJ\2\nƒ\1\0\0\2\0\a\0\0176\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0K\0\1\0\b1.0\26tokyodark_color_gamma\28tokyodark_enable_italic$tokyodark_enable_italic_comment%tokyodark_transparent_background\6g\bvim\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/tokyodark.nvim",
    url = "https://github.com/tiagovla/tokyodark.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-nightfly-guicolors"] = {
    config = { "\27LJ\2\nU\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\20nightflyItalics\24nightflyCursorColor\6g\bvim\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors",
    url = "https://github.com/bluz71/vim-nightfly-guicolors"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n∏\3\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\3=\3\15\2B\0\2\1K\0\1\0\26context_commentstring\vconfig\1\0\2\tjson\n// %s\blua\n-- %s\1\0\2\venable\2\19enable_autocmd\1\fautotag\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\26\0\0\tbash\6c\ncmake\bcpp\bcss\thelp\nhjson\thtml\15javascript\njsdoc\tjson\njson5\blua\rmarkdown\nninja\bphp\vpython\nquery\truby\trust\bvue\nscala\tscss\15typescript\bvue\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: kanagawa.nvim
time([[Config for kanagawa.nvim]], true)
try_loadstring("\27LJ\2\n»\3\0\0\4\0\v\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0\18\2\0\0009\0\t\0005\3\n\0B\0\3\1K\0\1\0\1\0\t\14horizdown\b‚î≥\fhorizup\b‚îª\nhoriz\b‚îÅ\nstlnc\6 \14verthoriz\b‚ïã\14vertright\b‚î£\bstl\6 \rvertleft\b‚î®\tvert\b‚îÉ\vappend\14fillchars\bopt\bvim\14overrides\vcolors\1\0\f\19statementStyle\tbold\17keywordStyle\vitalic\18functionStyle\tNONE\17commentStyle\vitalic\14undercurl\2\17globalStatus\2\16dimInactive\2\16transparent\1\21specialException\2\18specialReturn\2\25variablebuiltinStyle\vitalic\14typeStyle\tNONE\nsetup\rkanagawa\frequire\0", "config", "kanagawa.nvim")
time([[Config for kanagawa.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\nπ\1\0\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\0024\3\0\0=\3\b\2B\0\2\1K\0\1\0\19exact_patterns\rpatterns\fdefault\1\0\0\1\4\0\0\nclass\rfunction\vmethod\1\0\3\vzindex\3\20\venable\2\14max_lines\3\0\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: dracula.nvim
time([[Config for dracula.nvim]], true)
try_loadstring("\27LJ\2\nc\0\0\2\0\4\0\t6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0K\0\1\0\27dracula_italic_comment\31dracula_show_end_of_buffer\6g\bvim\0", "config", "dracula.nvim")
time([[Config for dracula.nvim]], false)
-- Config for: tokyodark.nvim
time([[Config for tokyodark.nvim]], true)
try_loadstring("\27LJ\2\nƒ\1\0\0\2\0\a\0\0176\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0K\0\1\0\b1.0\26tokyodark_color_gamma\28tokyodark_enable_italic$tokyodark_enable_italic_comment%tokyodark_transparent_background\6g\bvim\0", "config", "tokyodark.nvim")
time([[Config for tokyodark.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n°\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\roverride\1\0\1\fdefault\2\bzsh\1\0\0\1\0\4\ticon\bÓûï\16cterm_color\a65\tname\bZsh\ncolor\f#428850\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: tabline-framework.nvim
time([[Config for tabline-framework.nvim]], true)
try_loadstring("\27LJ\2\nÕ\2\0\1\t\1\14\0=-\1\0\0009\1\0\0019\3\1\0B\1\2\2'\2\2\0009\3\3\0\15\0\3\0X\4\4Ä-\3\0\0009\3\4\3\18\5\1\0B\3\2\1-\3\0\0009\3\5\3'\5\6\0B\3\2\0019\3\1\0\15\0\3\0X\4\28Ä-\3\0\0009\3\5\3'\5\a\0-\6\0\0009\6\b\0069\b\1\0B\6\2\2'\a\a\0&\5\a\5B\3\2\1-\3\0\0009\3\4\3\18\5\2\0B\3\2\1-\3\0\0009\3\5\0039\5\1\0B\3\2\1-\3\0\0009\3\5\0039\5\t\0\15\0\5\0X\6\2Ä'\5\n\0X\6\1Ä'\5\v\0B\3\2\1X\3\tÄ-\3\0\0009\3\5\0039\5\t\0\15\0\5\0X\6\2Ä'\5\f\0X\6\1Ä'\5\r\0B\3\2\1-\3\0\0009\3\5\3'\5\a\0B\3\2\1K\0\1\0\0¿\b[-]\b[+]\a  \t ÔÑë\rmodified\ticon\6 \5\badd\vset_fg\fcurrent\f#abb2bf\rfilename\15icon_colorK\1\1\4\0\4\0\b9\1\0\0005\3\1\0B\1\2\0019\1\2\0003\3\3\0B\1\2\0012\0\0ÄK\0\1\0\0\14make_bufs\1\2\1\0\n Óò´ \afg\f#bb0000\baddV\1\0\4\0\6\0\t3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0=\0\5\3B\1\2\1K\0\1\0\vrender\1\0\0\nsetup\22tabline_framework\frequire\0\0", "config", "tabline-framework.nvim")
time([[Config for tabline-framework.nvim]], false)
-- Config for: vim-nightfly-guicolors
time([[Config for vim-nightfly-guicolors]], true)
try_loadstring("\27LJ\2\nU\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\20nightflyItalics\24nightflyCursorColor\6g\bvim\0", "config", "vim-nightfly-guicolors")
time([[Config for vim-nightfly-guicolors]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequire^\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\1K\0\1\0\thook\0\1\0\1\18comment_empty\2\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
if should_profile then save_profiles(1) end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
