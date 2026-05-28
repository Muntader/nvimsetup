-- Configuring Comment.nvim for commenting with TSX/JSX support
require('Comment').setup {
  padding = true,
  sticky = true,
  ignore = nil,
  toggler = {
    line = 'gcc',
    block = 'gbc',
  },
  opleader = {
    line = 'gc',
    block = 'gb',
  },
  mappings = {
    basic = true,
    extra = false,
  },
  pre_hook = pcall(require, "ts_context_commentstring.integrations.comment_nvim")
      and require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook()
      or nil,
}
