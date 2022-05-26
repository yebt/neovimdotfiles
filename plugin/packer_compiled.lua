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
  ["coc.nvim"] = {
    config = { "\27LJ\2\nó\4\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1 \0\0\31@yaegassy/coc-intelephense\26@yaegassy/coc-phpstan\24@yaegassy/coc-volar\14coc-blade#coc-clang-format-style-options\15coc-clangd\fcoc-css\19coc-cssmodules\14coc-emmet\17coc-explorer\fcoc-git\rcoc-html\rcoc-html\25coc-html-css-support\19coc-htmldjango\17coc-htmlhint\rcoc-json\21coc-markdownlint\21coc-php-cs-fixer\17coc-phpactor\14coc-phpls\17coc-prettier\14coc-psalm\16coc-pyright\17coc-snippets\15coc-syntax\16coc-tabnine\20coc-tailwindcss\17coc-tsserver\14coc-vetur\15coc-vimlsp\26coc_global_extensions\fpython3\27coc_python_interpreter\6g\bvim\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["code_runner.nvim"] = {
    config = { "\27LJ\2\nÍ\3\0\0\6\0\19\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\17\0005\3\16\0=\3\18\2B\0\2\1K\0\1\0\rfiletype\1\0\0\1\0\4\trust;cd $dir && rustc $fileName && $dir/$fileNameWithoutExt\vpython\15python3 -u\15typescript\rdeno run\tjava;cd $dir && javac $fileName && java $fileNameWithoutExt\nsetup\16code_runner\frequire\1\0\2\vsilent\1\fnoremap\2\20:RunProject<CR>\15<leader>rp\1\0\2\vsilent\1\fnoremap\2\17:RunFile<CR>\15<leader>rf\1\0\2\vsilent\1\fnoremap\2\17:RunCode<CR>\15<leader>rc\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/code_runner.nvim",
    url = "https://github.com/CRAG666/code_runner.nvim"
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
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n¬\1\0\0\3\2\15\0 5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\a\1=\1\b\0-\1\0\0009\1\a\1=\1\t\0-\1\0\0009\1\a\1=\1\n\0-\1\0\0009\1\v\1=\1\f\0-\1\1\0009\1\r\0019\1\14\1B\1\1\0028\1\1\0\v\1\0\0X\2\2Ä-\2\0\0009\1\v\2L\1\2\0\4¿\0¿\tmode\afn\6R\bred\6v\6\22\6V\fmagenta\6c\vorange\6i\ngreen\6n\1\0\0\tcyan»\1\0\0\6\2\b\0\0265\0\0\0-\1\0\0009\1\1\0019\1\2\1'\3\3\0-\4\1\0B\4\1\2&\3\4\3B\1\2\1-\1\0\0009\1\4\0019\1\5\1B\1\1\0028\1\1\0\v\1\0\0X\2\5Ä-\2\0\0009\2\4\0029\2\5\2B\2\1\2\18\1\2\0'\2\6\0\18\3\1\0'\4\a\0&\2\4\2L\2\2\0\0¿\5¿\6 \a  \tmode\afn\27hi GalaxyViMode guibg=\17nvim_command\bapi\1\0\a\6i\6I\6v\6V\6R\6R\6\22\aVL\6V\6V\6c\6C\6n\6N\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n Ôû° ∞\1\0\0\a\0\b\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0026\2\3\0009\2\4\2\18\4\1\0B\2\2\2)\3\28\0\1\3\2\0X\2\tÄ6\2\3\0009\2\5\2\18\4\1\0)\5\1\0)\6\25\0B\2\4\2'\3\6\0&\2\3\2L\2\2\0\18\2\1\0'\3\a\0&\2\3\2L\2\2\0\6 \b...\bsub\blen\vstring\19get_git_branch\29galaxyline.providers.vcs\frequire\17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 \17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 \17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 \19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b   \"\0\0\2\1\1\0\3-\0\0\0009\0\0\0D\0\1\0\6¿\17get_location\"\0\0\2\1\1\0\3-\0\0\0009\0\0\0D\0\1\0\6¿\17is_available\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b   %\0\0\1\1\2\0\4-\0\0\0009\0\0\0009\0\1\0L\0\2\0\0¿\rfiletype\abo˘\19\1\0\r\0j\0∆\0026\0\0\0006\1\1\0'\3\2\0B\1\2\0026\2\1\0'\4\3\0B\2\2\0029\3\4\0015\4\6\0=\4\5\0015\4\a\0003\5\b\0009\6\t\0035\a\17\0005\b\v\0003\t\n\0=\t\f\b4\t\3\0009\n\r\4>\n\1\t9\n\r\4>\n\2\t=\t\14\b4\t\3\0009\n\15\4>\n\1\t9\n\15\4>\n\2\t=\t\16\b=\b\18\a>\a\1\0069\6\t\0035\a\22\0005\b\19\0004\t\3\0006\n\1\0'\f\20\0B\n\2\0029\n\21\n>\n\1\t9\n\15\4>\n\2\t=\t\14\b=\b\23\a>\a\2\0069\6\t\0035\a\26\0005\b\24\0004\t\3\0009\n\25\4>\n\1\t9\n\15\4>\n\2\t=\t\14\b4\t\3\0009\n\15\4>\n\1\t9\n\r\4>\n\2\t=\t\16\b=\b\27\a>\a\3\0069\6\t\0035\a!\0005\b\29\0003\t\28\0=\t\f\b9\t\30\2=\t\31\b4\t\3\0009\n \4>\n\1\t9\n\r\4>\n\2\t=\t\14\b=\b\"\a>\a\4\0069\6\t\0035\a%\0005\b$\0003\t#\0=\t\f\b9\t\30\2=\t\31\b4\t\3\0009\n\25\4>\n\1\t9\n\r\4>\n\2\t=\t\14\b=\b&\a>\a\5\0069\6\t\0035\a)\0005\b'\0009\t\30\2=\t\31\b4\t\3\0009\n(\4>\n\1\t9\n\r\4>\n\2\t=\t\14\b=\b*\a>\a\6\0069\6\t\0035\a-\0005\b+\0009\t\30\2=\t\31\b4\t\3\0009\n,\4>\n\1\t9\n\r\4>\n\2\t=\t\14\b=\b.\a>\a\a\0069\6\t\0035\a0\0005\b/\0009\t\30\2=\t\31\b4\t\3\0009\n \4>\n\1\t9\n\r\4>\n\2\t=\t\14\b=\b1\a>\a\b\0069\6\t\0035\a4\0005\b3\0003\t2\0=\t\f\b4\t\3\0009\n\15\4>\n\1\t9\n\r\4>\n\2\t=\t\14\b=\b5\a>\a\t\0069\6\t\0035\a8\0005\b7\0003\t6\0=\t\f\b4\t\3\0009\n\15\4>\n\1\t9\n\15\4>\n\2\t=\t\14\b=\b9\a>\a\n\0069\6\t\0035\a;\0005\b:\0004\t\3\0009\n \4>\n\1\t9\n\15\4>\n\2\t=\t\14\b=\b<\a>\a\v\0069\6\t\0035\a>\0005\b=\0004\t\3\0009\n,\4>\n\1\t9\n\15\4>\n\2\t=\t\14\b=\b?\a>\a\f\0069\6\t\0035\aA\0005\b@\0004\t\3\0009\n\25\4>\n\1\t9\n\15\4>\n\2\t=\t\14\b=\bB\a>\a\r\0069\6\t\0035\aE\0005\bD\0003\tC\0=\t\f\b4\t\3\0009\n\15\4>\n\1\t9\n\15\4>\n\2\t=\t\14\b=\b9\a>\a\14\0069\6\t\0035\aH\0005\bF\0004\t\3\0009\nG\4>\n\1\t9\n\15\4>\n\2\t=\t\14\b4\t\3\0009\n\15\4>\n\1\t9\n\r\4>\n\2\t=\t\16\b=\bI\a>\a\15\0066\6\1\0'\bJ\0B\6\2\0029\aK\0035\bN\0005\tM\0003\nL\0=\n\f\t=\tO\b>\b\0\a9\aK\0035\bS\0005\tQ\0003\nP\0=\n\f\t3\nR\0=\n\31\t4\n\3\0009\v\15\4>\v\1\n9\v\r\4>\v\2\n=\n\16\t=\tT\b>\b\1\a9\aK\0035\bW\0005\tV\0003\nU\0=\n\f\t=\tO\b>\b\3\a9\aX\0035\b[\0005\tZ\0003\nY\0=\n\f\t4\n\3\0009\v\25\4>\v\1\n9\v\15\4>\v\2\n=\n\14\t4\n\3\0009\v\15\4>\v\1\n9\v\r\4>\v\2\n=\n\16\t=\t\\\b>\b\1\a9\aX\0035\b^\0005\t]\0004\n\3\0009\v\25\4>\v\1\n9\v\15\4>\v\2\n=\n\14\t4\n\3\0009\v\r\4>\v\1\n9\v\15\4>\v\2\n=\n\16\t=\t_\b>\b\2\a9\a`\0035\bb\0005\ta\0004\n\3\0009\v\25\4>\v\1\n9\v\15\4>\v\2\n=\n\14\t4\n\3\0009\v\15\4>\v\1\n9\v\r\4>\v\2\n=\n\16\t=\tc\b>\b\1\a9\ad\0035\bg\0005\te\0004\n\3\0009\vf\4>\v\1\n9\v\15\4>\v\2\n=\n\14\t4\n\3\0009\v\15\4>\v\1\n9\v\r\4>\v\2\n=\n\16\t=\th\b>\b\1\a9\ai\1B\a\1\0012\0\0ÄK\0\1\0\20load_galaxyline\15BufferIcon\1\0\0\vyellow\1\0\2\14separator\6 \rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\2\14separator\6 \rprovider\17FileTypeName\20short_line_left\rLineInfo\1\0\0\1\0\2\14separator\b | \rprovider\15LineColumn\15FileFormat\1\0\0\1\0\1\14separator\6 \0\nright\1\0\0\1\0\0\0\fnvimGPS\1\0\0\0\1\0\0\0\vSpace2\1\0\0\1\0\0\0\bmid\rnvim-gps\19DiagnosticInfo\1\0\0\tblue\1\0\3\14separator\6 \ticon\n ÔÅö \rprovider\19DiagnosticInfo\1\0\0\1\0\0\0\19DiagnosticHint\1\0\0\1\0\2\ticon\n ÓÄä \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\1\0\2\ticon\n ÔÅ± \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\0\2\ticon\n ÔÅó \rprovider\20DiagnosticError\nSpace\1\0\0\1\0\0\0\fLeftEnd\1\0\0\1\0\0\0\15DiffRemove\1\0\0\1\0\2\ticon\tÔëò \rprovider\15DiffRemove\17DiffModified\1\0\0\vorange\1\0\2\ticon\tÔëô \rprovider\17DiffModified\fDiffAdd\1\0\0\ngreen\1\0\2\ticon\tÔëó \rprovider\fDiffAdd\14GitBranch\1\0\0\1\0\0\0\fGitIcon\1\0\0\bred\14condition\24check_git_workspace\1\0\0\0\rFileName\1\0\0\afg\1\0\2\14separator\6 \rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color\"galaxyline.providers.fileinfo\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\24separator_highlight\15section_bg\14highlight\abg\rprovider\1\0\1\14separator\6 \0\tleft\0\1\0\n\bred\f#ff5555\tblue\f#8be9fd\fmagenta\f#ff79c6\vorange\f#ffb86c\ngreen\f#50fa7b\tcyan\f#8be9fd\afg\f#f8f8f2\vyellow\f#f1fa8c\15section_bg\f#38393f\abg\f#282a36\1\4\0\0\rNvimTree\rpackager\nvista\20short_line_list\fsection\25galaxyline.condition\15galaxyline\frequire\bvim\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/NTBBloodbath/galaxyline.nvim"
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
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n¡\1\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0-let g:indent_blankline_enabled = v:false\bcmd\bvim\1\0\3\tchar\b‚ñè\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kanagawa.nvim"] = {
    config = { "\27LJ\2\n»\3\0\0\4\0\v\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0\18\2\0\0009\0\t\0005\3\n\0B\0\3\1K\0\1\0\1\0\t\14verthoriz\b‚ïã\14vertright\b‚î£\rvertleft\b‚î®\tvert\b‚îÉ\bstl\6 \14horizdown\b‚î≥\fhorizup\b‚îª\nhoriz\b‚îÅ\nstlnc\6 \vappend\14fillchars\bopt\bvim\14overrides\vcolors\1\0\f\17globalStatus\2\16dimInactive\2\16transparent\1\21specialException\2\18specialReturn\2\25variablebuiltinStyle\vitalic\14typeStyle\tNONE\19statementStyle\tbold\17keywordStyle\vitalic\18functionStyle\tNONE\17commentStyle\vitalic\14undercurl\2\nsetup\rkanagawa\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["monokai.nvim"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/monokai.nvim",
    url = "https://github.com/tanvirtin/monokai.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\nŒ\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\15filesystem\19filtered_items\1\0\1\24follow_current_file\2\1\0\1\18hide_dotfiles\1\1\0\3\23enable_diagnostics\1\22enable_git_status\2\25close_if_last_window\2\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neoformat = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["night-owl.vim"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/night-owl.vim",
    url = "https://github.com/haishanh/night-owl.vim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-blame-line"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-blame-line",
    url = "https://github.com/tveskag/nvim-blame-line"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequire^\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\1K\0\1\0\thook\0\1\0\1\18comment_empty\2\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-cursorword"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-cursorword",
    url = "https://github.com/xiyaowong/nvim-cursorword"
  },
  ["nvim-gps"] = {
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\14separator\b > \nsetup\rnvim-gps\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n€\3\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0005\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\26context_commentstring\vconfig\1\0\2\tjson\n// %s\blua\n-- %s\1\0\2\venable\2\19enable_autocmd\1\fautotag\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\tfold\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\27\0\0\tbash\6c\ncmake\bcpp\bcss\15dockerfile\thelp\nhjson\thtml\15javascript\njsdoc\tjson\njson5\blua\rmarkdown\nninja\bphp\vpython\nquery\truby\trust\bvue\nscala\tscss\15typescript\bvue\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\nπ\1\0\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\0024\3\0\0=\3\b\2B\0\2\1K\0\1\0\19exact_patterns\rpatterns\fdefault\1\0\0\1\4\0\0\nclass\rfunction\vmethod\1\0\3\vzindex\3\20\venable\1\14max_lines\3\0\nsetup\23treesitter-context\frequire\0" },
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
    config = { "\27LJ\2\n°\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\roverride\1\0\1\fdefault\2\bzsh\1\0\0\1\0\4\ncolor\f#428850\ticon\bÓûï\16cterm_color\a65\tname\bZsh\nsetup\22nvim-web-devicons\frequire\0" },
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
    config = { "\27LJ\2\nÃ\2\0\1\t\1\14\0=-\1\0\0009\1\0\0019\3\1\0B\1\2\2'\2\2\0009\3\3\0\15\0\3\0X\4\4Ä-\3\0\0009\3\4\3\18\5\1\0B\3\2\1-\3\0\0009\3\5\3'\5\6\0B\3\2\0019\3\1\0\15\0\3\0X\4\28Ä-\3\0\0009\3\5\3'\5\a\0-\6\0\0009\6\b\0069\b\1\0B\6\2\2'\a\a\0&\5\a\5B\3\2\1-\3\0\0009\3\4\3\18\5\2\0B\3\2\1-\3\0\0009\3\5\0039\5\1\0B\3\2\1-\3\0\0009\3\5\0039\5\t\0\15\0\5\0X\6\2Ä'\5\n\0X\6\1Ä'\5\v\0B\3\2\1X\3\tÄ-\3\0\0009\3\5\0039\5\t\0\15\0\5\0X\6\2Ä'\5\f\0X\6\1Ä'\5\r\0B\3\2\1-\3\0\0009\3\5\3'\5\a\0B\3\2\1K\0\1\0\0¿\b[-]\b[+]\a  \t ÔÑë\rmodified\ticon\6 \5\badd\vset_fg\fcurrent\vNormal\rfilename\15icon_colorK\1\1\4\0\4\0\b9\1\0\0005\3\1\0B\1\2\0019\1\2\0003\3\3\0B\1\2\0012\0\0ÄK\0\1\0\0\14make_bufs\1\2\1\0\n Ô≤ã \afg\f#bb0000\baddV\1\0\4\0\6\0\t3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0=\0\5\3B\1\2\1K\0\1\0\vrender\1\0\0\nsetup\22tabline_framework\frequire\0\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/tabline-framework.nvim",
    url = "https://github.com/rafcamlet/tabline-framework.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
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
  ultisnips = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
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
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/btye/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-gps
time([[Config for nvim-gps]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\14separator\b > \nsetup\rnvim-gps\frequire\0", "config", "nvim-gps")
time([[Config for nvim-gps]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n€\3\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0005\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\26context_commentstring\vconfig\1\0\2\tjson\n// %s\blua\n-- %s\1\0\2\venable\2\19enable_autocmd\1\fautotag\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\tfold\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\27\0\0\tbash\6c\ncmake\bcpp\bcss\15dockerfile\thelp\nhjson\thtml\15javascript\njsdoc\tjson\njson5\blua\rmarkdown\nninja\bphp\vpython\nquery\truby\trust\bvue\nscala\tscss\15typescript\bvue\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\nŒ\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\15filesystem\19filtered_items\1\0\1\24follow_current_file\2\1\0\1\18hide_dotfiles\1\1\0\3\23enable_diagnostics\1\22enable_git_status\2\25close_if_last_window\2\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\nπ\1\0\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\0024\3\0\0=\3\b\2B\0\2\1K\0\1\0\19exact_patterns\rpatterns\fdefault\1\0\0\1\4\0\0\nclass\rfunction\vmethod\1\0\3\vzindex\3\20\venable\1\14max_lines\3\0\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: neoformat
time([[Config for neoformat]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "neoformat")
time([[Config for neoformat]], false)
-- Config for: coc.nvim
time([[Config for coc.nvim]], true)
try_loadstring("\27LJ\2\nó\4\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1 \0\0\31@yaegassy/coc-intelephense\26@yaegassy/coc-phpstan\24@yaegassy/coc-volar\14coc-blade#coc-clang-format-style-options\15coc-clangd\fcoc-css\19coc-cssmodules\14coc-emmet\17coc-explorer\fcoc-git\rcoc-html\rcoc-html\25coc-html-css-support\19coc-htmldjango\17coc-htmlhint\rcoc-json\21coc-markdownlint\21coc-php-cs-fixer\17coc-phpactor\14coc-phpls\17coc-prettier\14coc-psalm\16coc-pyright\17coc-snippets\15coc-syntax\16coc-tabnine\20coc-tailwindcss\17coc-tsserver\14coc-vetur\15coc-vimlsp\26coc_global_extensions\fpython3\27coc_python_interpreter\6g\bvim\0", "config", "coc.nvim")
time([[Config for coc.nvim]], false)
-- Config for: code_runner.nvim
time([[Config for code_runner.nvim]], true)
try_loadstring("\27LJ\2\nÍ\3\0\0\6\0\19\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\17\0005\3\16\0=\3\18\2B\0\2\1K\0\1\0\rfiletype\1\0\0\1\0\4\trust;cd $dir && rustc $fileName && $dir/$fileNameWithoutExt\vpython\15python3 -u\15typescript\rdeno run\tjava;cd $dir && javac $fileName && java $fileNameWithoutExt\nsetup\16code_runner\frequire\1\0\2\vsilent\1\fnoremap\2\20:RunProject<CR>\15<leader>rp\1\0\2\vsilent\1\fnoremap\2\17:RunFile<CR>\15<leader>rf\1\0\2\vsilent\1\fnoremap\2\17:RunCode<CR>\15<leader>rc\6n\bset\vkeymap\bvim\0", "config", "code_runner.nvim")
time([[Config for code_runner.nvim]], false)
-- Config for: dracula.nvim
time([[Config for dracula.nvim]], true)
try_loadstring("\27LJ\2\nc\0\0\2\0\4\0\t6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0K\0\1\0\27dracula_italic_comment\31dracula_show_end_of_buffer\6g\bvim\0", "config", "dracula.nvim")
time([[Config for dracula.nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequire^\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\1K\0\1\0\thook\0\1\0\1\18comment_empty\2\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: vim-nightfly-guicolors
time([[Config for vim-nightfly-guicolors]], true)
try_loadstring("\27LJ\2\nU\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\20nightflyItalics\24nightflyCursorColor\6g\bvim\0", "config", "vim-nightfly-guicolors")
time([[Config for vim-nightfly-guicolors]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n¡\1\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0-let g:indent_blankline_enabled = v:false\bcmd\bvim\1\0\3\tchar\b‚ñè\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: tabline-framework.nvim
time([[Config for tabline-framework.nvim]], true)
try_loadstring("\27LJ\2\nÃ\2\0\1\t\1\14\0=-\1\0\0009\1\0\0019\3\1\0B\1\2\2'\2\2\0009\3\3\0\15\0\3\0X\4\4Ä-\3\0\0009\3\4\3\18\5\1\0B\3\2\1-\3\0\0009\3\5\3'\5\6\0B\3\2\0019\3\1\0\15\0\3\0X\4\28Ä-\3\0\0009\3\5\3'\5\a\0-\6\0\0009\6\b\0069\b\1\0B\6\2\2'\a\a\0&\5\a\5B\3\2\1-\3\0\0009\3\4\3\18\5\2\0B\3\2\1-\3\0\0009\3\5\0039\5\1\0B\3\2\1-\3\0\0009\3\5\0039\5\t\0\15\0\5\0X\6\2Ä'\5\n\0X\6\1Ä'\5\v\0B\3\2\1X\3\tÄ-\3\0\0009\3\5\0039\5\t\0\15\0\5\0X\6\2Ä'\5\f\0X\6\1Ä'\5\r\0B\3\2\1-\3\0\0009\3\5\3'\5\a\0B\3\2\1K\0\1\0\0¿\b[-]\b[+]\a  \t ÔÑë\rmodified\ticon\6 \5\badd\vset_fg\fcurrent\vNormal\rfilename\15icon_colorK\1\1\4\0\4\0\b9\1\0\0005\3\1\0B\1\2\0019\1\2\0003\3\3\0B\1\2\0012\0\0ÄK\0\1\0\0\14make_bufs\1\2\1\0\n Ô≤ã \afg\f#bb0000\baddV\1\0\4\0\6\0\t3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0=\0\5\3B\1\2\1K\0\1\0\vrender\1\0\0\nsetup\22tabline_framework\frequire\0\0", "config", "tabline-framework.nvim")
time([[Config for tabline-framework.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n°\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\roverride\1\0\1\fdefault\2\bzsh\1\0\0\1\0\4\ncolor\f#428850\ticon\bÓûï\16cterm_color\a65\tname\bZsh\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: kanagawa.nvim
time([[Config for kanagawa.nvim]], true)
try_loadstring("\27LJ\2\n»\3\0\0\4\0\v\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0\18\2\0\0009\0\t\0005\3\n\0B\0\3\1K\0\1\0\1\0\t\14verthoriz\b‚ïã\14vertright\b‚î£\rvertleft\b‚î®\tvert\b‚îÉ\bstl\6 \14horizdown\b‚î≥\fhorizup\b‚îª\nhoriz\b‚îÅ\nstlnc\6 \vappend\14fillchars\bopt\bvim\14overrides\vcolors\1\0\f\17globalStatus\2\16dimInactive\2\16transparent\1\21specialException\2\18specialReturn\2\25variablebuiltinStyle\vitalic\14typeStyle\tNONE\19statementStyle\tbold\17keywordStyle\vitalic\18functionStyle\tNONE\17commentStyle\vitalic\14undercurl\2\nsetup\rkanagawa\frequire\0", "config", "kanagawa.nvim")
time([[Config for kanagawa.nvim]], false)
-- Config for: tokyodark.nvim
time([[Config for tokyodark.nvim]], true)
try_loadstring("\27LJ\2\nƒ\1\0\0\2\0\a\0\0176\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0K\0\1\0\b1.0\26tokyodark_color_gamma\28tokyodark_enable_italic$tokyodark_enable_italic_comment%tokyodark_transparent_background\6g\bvim\0", "config", "tokyodark.nvim")
time([[Config for tokyodark.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n¬\1\0\0\3\2\15\0 5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\a\1=\1\b\0-\1\0\0009\1\a\1=\1\t\0-\1\0\0009\1\a\1=\1\n\0-\1\0\0009\1\v\1=\1\f\0-\1\1\0009\1\r\0019\1\14\1B\1\1\0028\1\1\0\v\1\0\0X\2\2Ä-\2\0\0009\1\v\2L\1\2\0\4¿\0¿\tmode\afn\6R\bred\6v\6\22\6V\fmagenta\6c\vorange\6i\ngreen\6n\1\0\0\tcyan»\1\0\0\6\2\b\0\0265\0\0\0-\1\0\0009\1\1\0019\1\2\1'\3\3\0-\4\1\0B\4\1\2&\3\4\3B\1\2\1-\1\0\0009\1\4\0019\1\5\1B\1\1\0028\1\1\0\v\1\0\0X\2\5Ä-\2\0\0009\2\4\0029\2\5\2B\2\1\2\18\1\2\0'\2\6\0\18\3\1\0'\4\a\0&\2\4\2L\2\2\0\0¿\5¿\6 \a  \tmode\afn\27hi GalaxyViMode guibg=\17nvim_command\bapi\1\0\a\6i\6I\6v\6V\6R\6R\6\22\aVL\6V\6V\6c\6C\6n\6N\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n Ôû° ∞\1\0\0\a\0\b\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0026\2\3\0009\2\4\2\18\4\1\0B\2\2\2)\3\28\0\1\3\2\0X\2\tÄ6\2\3\0009\2\5\2\18\4\1\0)\5\1\0)\6\25\0B\2\4\2'\3\6\0&\2\3\2L\2\2\0\18\2\1\0'\3\a\0&\2\3\2L\2\2\0\6 \b...\bsub\blen\vstring\19get_git_branch\29galaxyline.providers.vcs\frequire\17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 \17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 \17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 \19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b   \"\0\0\2\1\1\0\3-\0\0\0009\0\0\0D\0\1\0\6¿\17get_location\"\0\0\2\1\1\0\3-\0\0\0009\0\0\0D\0\1\0\6¿\17is_available\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b   %\0\0\1\1\2\0\4-\0\0\0009\0\0\0009\0\1\0L\0\2\0\0¿\rfiletype\abo˘\19\1\0\r\0j\0∆\0026\0\0\0006\1\1\0'\3\2\0B\1\2\0026\2\1\0'\4\3\0B\2\2\0029\3\4\0015\4\6\0=\4\5\0015\4\a\0003\5\b\0009\6\t\0035\a\17\0005\b\v\0003\t\n\0=\t\f\b4\t\3\0009\n\r\4>\n\1\t9\n\r\4>\n\2\t=\t\14\b4\t\3\0009\n\15\4>\n\1\t9\n\15\4>\n\2\t=\t\16\b=\b\18\a>\a\1\0069\6\t\0035\a\22\0005\b\19\0004\t\3\0006\n\1\0'\f\20\0B\n\2\0029\n\21\n>\n\1\t9\n\15\4>\n\2\t=\t\14\b=\b\23\a>\a\2\0069\6\t\0035\a\26\0005\b\24\0004\t\3\0009\n\25\4>\n\1\t9\n\15\4>\n\2\t=\t\14\b4\t\3\0009\n\15\4>\n\1\t9\n\r\4>\n\2\t=\t\16\b=\b\27\a>\a\3\0069\6\t\0035\a!\0005\b\29\0003\t\28\0=\t\f\b9\t\30\2=\t\31\b4\t\3\0009\n \4>\n\1\t9\n\r\4>\n\2\t=\t\14\b=\b\"\a>\a\4\0069\6\t\0035\a%\0005\b$\0003\t#\0=\t\f\b9\t\30\2=\t\31\b4\t\3\0009\n\25\4>\n\1\t9\n\r\4>\n\2\t=\t\14\b=\b&\a>\a\5\0069\6\t\0035\a)\0005\b'\0009\t\30\2=\t\31\b4\t\3\0009\n(\4>\n\1\t9\n\r\4>\n\2\t=\t\14\b=\b*\a>\a\6\0069\6\t\0035\a-\0005\b+\0009\t\30\2=\t\31\b4\t\3\0009\n,\4>\n\1\t9\n\r\4>\n\2\t=\t\14\b=\b.\a>\a\a\0069\6\t\0035\a0\0005\b/\0009\t\30\2=\t\31\b4\t\3\0009\n \4>\n\1\t9\n\r\4>\n\2\t=\t\14\b=\b1\a>\a\b\0069\6\t\0035\a4\0005\b3\0003\t2\0=\t\f\b4\t\3\0009\n\15\4>\n\1\t9\n\r\4>\n\2\t=\t\14\b=\b5\a>\a\t\0069\6\t\0035\a8\0005\b7\0003\t6\0=\t\f\b4\t\3\0009\n\15\4>\n\1\t9\n\15\4>\n\2\t=\t\14\b=\b9\a>\a\n\0069\6\t\0035\a;\0005\b:\0004\t\3\0009\n \4>\n\1\t9\n\15\4>\n\2\t=\t\14\b=\b<\a>\a\v\0069\6\t\0035\a>\0005\b=\0004\t\3\0009\n,\4>\n\1\t9\n\15\4>\n\2\t=\t\14\b=\b?\a>\a\f\0069\6\t\0035\aA\0005\b@\0004\t\3\0009\n\25\4>\n\1\t9\n\15\4>\n\2\t=\t\14\b=\bB\a>\a\r\0069\6\t\0035\aE\0005\bD\0003\tC\0=\t\f\b4\t\3\0009\n\15\4>\n\1\t9\n\15\4>\n\2\t=\t\14\b=\b9\a>\a\14\0069\6\t\0035\aH\0005\bF\0004\t\3\0009\nG\4>\n\1\t9\n\15\4>\n\2\t=\t\14\b4\t\3\0009\n\15\4>\n\1\t9\n\r\4>\n\2\t=\t\16\b=\bI\a>\a\15\0066\6\1\0'\bJ\0B\6\2\0029\aK\0035\bN\0005\tM\0003\nL\0=\n\f\t=\tO\b>\b\0\a9\aK\0035\bS\0005\tQ\0003\nP\0=\n\f\t3\nR\0=\n\31\t4\n\3\0009\v\15\4>\v\1\n9\v\r\4>\v\2\n=\n\16\t=\tT\b>\b\1\a9\aK\0035\bW\0005\tV\0003\nU\0=\n\f\t=\tO\b>\b\3\a9\aX\0035\b[\0005\tZ\0003\nY\0=\n\f\t4\n\3\0009\v\25\4>\v\1\n9\v\15\4>\v\2\n=\n\14\t4\n\3\0009\v\15\4>\v\1\n9\v\r\4>\v\2\n=\n\16\t=\t\\\b>\b\1\a9\aX\0035\b^\0005\t]\0004\n\3\0009\v\25\4>\v\1\n9\v\15\4>\v\2\n=\n\14\t4\n\3\0009\v\r\4>\v\1\n9\v\15\4>\v\2\n=\n\16\t=\t_\b>\b\2\a9\a`\0035\bb\0005\ta\0004\n\3\0009\v\25\4>\v\1\n9\v\15\4>\v\2\n=\n\14\t4\n\3\0009\v\15\4>\v\1\n9\v\r\4>\v\2\n=\n\16\t=\tc\b>\b\1\a9\ad\0035\bg\0005\te\0004\n\3\0009\vf\4>\v\1\n9\v\15\4>\v\2\n=\n\14\t4\n\3\0009\v\15\4>\v\1\n9\v\r\4>\v\2\n=\n\16\t=\th\b>\b\1\a9\ai\1B\a\1\0012\0\0ÄK\0\1\0\20load_galaxyline\15BufferIcon\1\0\0\vyellow\1\0\2\14separator\6 \rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\2\14separator\6 \rprovider\17FileTypeName\20short_line_left\rLineInfo\1\0\0\1\0\2\14separator\b | \rprovider\15LineColumn\15FileFormat\1\0\0\1\0\1\14separator\6 \0\nright\1\0\0\1\0\0\0\fnvimGPS\1\0\0\0\1\0\0\0\vSpace2\1\0\0\1\0\0\0\bmid\rnvim-gps\19DiagnosticInfo\1\0\0\tblue\1\0\3\14separator\6 \ticon\n ÔÅö \rprovider\19DiagnosticInfo\1\0\0\1\0\0\0\19DiagnosticHint\1\0\0\1\0\2\ticon\n ÓÄä \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\1\0\2\ticon\n ÔÅ± \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\0\2\ticon\n ÔÅó \rprovider\20DiagnosticError\nSpace\1\0\0\1\0\0\0\fLeftEnd\1\0\0\1\0\0\0\15DiffRemove\1\0\0\1\0\2\ticon\tÔëò \rprovider\15DiffRemove\17DiffModified\1\0\0\vorange\1\0\2\ticon\tÔëô \rprovider\17DiffModified\fDiffAdd\1\0\0\ngreen\1\0\2\ticon\tÔëó \rprovider\fDiffAdd\14GitBranch\1\0\0\1\0\0\0\fGitIcon\1\0\0\bred\14condition\24check_git_workspace\1\0\0\0\rFileName\1\0\0\afg\1\0\2\14separator\6 \rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color\"galaxyline.providers.fileinfo\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\24separator_highlight\15section_bg\14highlight\abg\rprovider\1\0\1\14separator\6 \0\tleft\0\1\0\n\bred\f#ff5555\tblue\f#8be9fd\fmagenta\f#ff79c6\vorange\f#ffb86c\ngreen\f#50fa7b\tcyan\f#8be9fd\afg\f#f8f8f2\vyellow\f#f1fa8c\15section_bg\f#38393f\abg\f#282a36\1\4\0\0\rNvimTree\rpackager\nvista\20short_line_list\fsection\25galaxyline.condition\15galaxyline\frequire\bvim\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
if should_profile then save_profiles(1) end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
