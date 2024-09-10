vim.opt.number = true
vim.opt.relativenumber = true


vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

require("config.lazy")

