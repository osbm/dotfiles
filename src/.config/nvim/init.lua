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

vim.g.python_host_prog = "~/Documents/bin/neovim-venv/bin/python"
vim.g.python3_host_prog = "~/Documents/bin/neovim-venv/bin/python"

require("config.lazy")

require("mason").setup()
require("mason-lspconfig").setup()


local lspconfig = require('lspconfig')
lspconfig.pyright.setup {
}

require("nvim-tree").setup()

if vim.fn.argc(-1) == 0 then
  vim.cmd("NvimTreeOpen")
end
