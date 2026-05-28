-- Configuring auto-session for session management
require('auto-session').setup {
  log_level = 'error',
  auto_session_enable_last_session = false,
  auto_session_root_dir = vim.fn.stdpath('data') .. '/sessions/',
  auto_restore = true,
  auto_save = true,
  auto_session_suppress_dirs = { '~/', '~/Downloads', '/' },
  bypass_save_filetypes = { 'neo-tree', 'dashboard', 'help', 'terminal' },
  pre_save_cmds = { 'Neotree close', 'AerialClose' },
}
