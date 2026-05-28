-- Configuring nvim-autopairs for automatic bracket pairing
require("nvim-autopairs").setup({
	check_ts = true, -- Enable Treesitter integration
	disable_filetype = { "TelescopePrompt", "vim" },
})

-- Auto-brackets are handled by blink.cmp (auto_brackets.enabled = true in lua/config/blink.lua)
