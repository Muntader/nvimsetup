-- Configuring general Neovim settings
vim.opt.number = true -- Enable line numbers
vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.tabstop = 2 -- 2 spaces for tabs
vim.opt.shiftwidth = 2 -- 2 spaces for indentation
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.smartindent = true -- Smart indentation
vim.opt.termguicolors = true -- Enable true color support
vim.opt.cursorline = true -- Highlight current line
vim.opt.guifont = "JetBrainsMono Nerd Font:h12"
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.mouse = "a" -- Enable mouse support
vim.opt.mousefocus = true -- Focus follows mouse
vim.opt.mousemodel = "popup" -- Right-click popup menu
vim.opt.mousescroll = "ver:5,hor:6" -- Scroll 5 lines vertically, 6 horizontally
vim.opt.wrap = false -- Disable line wrapping
vim.opt.showmode = false -- Hide mode (use statusline instead)
vim.opt.signcolumn = "yes" -- Always show sign column
vim.opt.timeoutlen = 500 -- Keymap timeout (ms)
vim.opt.hidden = true -- Allow hidden buffers
vim.opt.undofile = true -- Persistent undo
vim.opt.swapfile = false -- Enable swap files
vim.opt.backupdir = vim.fn.stdpath("data") .. "/backup//" -- Backup file directory

vim.fn.mkdir(vim.fn.stdpath("data") .. "/undo", "p") -- Create undo directory
vim.fn.mkdir(vim.fn.stdpath("data") .. "/backup", "p") -- Create backup directory
vim.opt.scrolloff = 8 -- Keep 8 lines visible above/below cursor
vim.opt.sidescrolloff = 8 -- Keep 8 columns visible left/right
vim.opt.ignorecase = true -- Case-insensitive search
vim.opt.smartcase = true -- Case-sensitive if uppercase used
vim.opt.hlsearch = true -- Highlight search results
vim.opt.incsearch = true -- Incremental search
vim.opt.shortmess:append("A") -- Avoid swap file warnings
vim.opt.updatetime = 250 -- Update time (ms)
-- Auto-save on focus loss
vim.api.nvim_create_autocmd({ "InsertLeave", "FocusLost" }, {
	callback = function()
		if vim.bo.modified and vim.bo.buftype == "" then
			vim.cmd("silent! write")
		end
	end,
})

-- Suppress harmless plugin deprecation warnings
vim.g.deprecation_warnings = false

-- Disable unused providers to clean up checkhealth
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

-- Limit LSP log size and level
vim.lsp.log.set_level("ERROR")

-- Set leader key
vim.g.mapleader = " "

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Prepend nvim-treesitter parser path so installed parsers override built-ins early
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/nvim-treesitter")

-- Set up lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",

		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Session options
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Load plugins
require("lazy").setup("plugins")

-- Load configurations
require("mappings")
require("config.theme")
require("config.neo-tree")
require("config.treesitter")
require("config.lsp")
require("config.blink")
require("config.conform")
require("config.telescope")
require("config.bufferline")
require("config.lualine")
-- require("config.nvim-lint")  -- Disabled: linting handled by LSP + conform
require("config.comment")
require("config.autopairs")
require("config.auto-session")
require("config.trouble")
require("config.ui-colors")

-- Open tree+diagnostics when opening a file (alpha handles empty startup)
vim.api.nvim_create_autocmd("VimEnter", {
	once = true,
	callback = function()
		if vim.fn.argc() > 0 then
			vim.defer_fn(_G.toggle_tree_diagnostics, 200)
		end
	end,
})
