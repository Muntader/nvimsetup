require("scrollview").setup({
	winblend = 10,
	signs_on_startup = { "cursor", "diagnostics", "search" },
	hide_on_cursor_intersect = false,
	hide_on_float_intersect = false,
})
require("scrollview").set_state(true)

-- Refresh scrollview on theme change
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		pcall(require("scrollview").refresh)
	end,
})
