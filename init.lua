local ok, _ = pcall(require, 'plugins')
if not ok then
  print('Error loading plugins ' .. _ .. ' :C')
end

vim.cmd('runtime! vim/*vim')
