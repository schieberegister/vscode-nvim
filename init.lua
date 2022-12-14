require "user.plugins"
require "user.keybindings"

-- classic vim options
  -- global options
  vim.go.clipboard = "unnamed"
  vim.go.ruler = true
  vim.go.mouse = "a"
  vim.go.smarttab = true
  vim.go.ma = true
  vim.go.background = "dark"
  vim.go.updatetime = 100

  -- window options
  vim.wo.number = true
  vim.wo.relativenumber = true
  vim.cmd "set noshowmode"

  -- buffer option
  vim.bo.autoindent = true
  vim.bo.tabstop = 2
  vim.bo.shiftwidth = 2
  vim.bo.expandtab = true
  vim.bo.softtabstop = 2

require('Comment').setup()
require("lsp-status")
require "user.lualine"
require("bufferline").setup{}

require'nvim-lastplace'.setup {
    lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
    lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
    lastplace_open_folds = true
}
