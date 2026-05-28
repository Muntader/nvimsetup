require("trouble").setup({
	-- General options
	auto_open = false, -- Don't open automatically on diagnostics
	auto_close = true, -- Close Trouble when ESC is pressed or when the last diagnostic is fixed
	auto_preview = true, -- Automatically show a preview of the diagnostic item under the cursor
	auto_refresh = true, -- Refresh diagnostics when they change
	auto_jump = { "lsp_definitions", "lsp_references", "lsp_implementations" }, -- Only auto-jump for these actions, not for diagnostics on open
	-- Nnote: auto_jump usually applies when an item is selected and Enter is pressed, or for specific commands.
	-- By not having "diagnostics" or similar here, and using `mode = "document"`,
	-- opening Trouble for document diagnostics won't jump.

	-- UI Customization
	win = {
		-- For newer versions, `size` might be preferred over `width`/`height` directly under `win`
		-- width = 50, -- (Kept for compatibility, but `size` is more flexible)
	},
	signs = {
		-- icons / text used for diagnostics
		error = "", -- Alternative: "", ""
		warning = "", -- Alternative: ""
		hint = "",
		information = "", -- Alternative: ""
		other = "﫠",
	},
	use_diagnostic_signs = true, -- Use icons from your LSP diagnostic signs if available (recommended for consistency)
	indent_lines = true, -- Show indent lines
	padding = true, -- Add padding around the content
	fold_open = "", -- Icon for open folds (e.g., files)
	fold_closed = "", -- Icon for closed folds

	-- Default mode when opening Trouble
	-- THIS IS KEY FOR "CURRENT FILE ONLY" BEHAVIOR
	modes = {
		diagnostics = {
			mode = "document", -- "workspace", "document", "quickfix"
			auto_preview = true, -- Keep this true for easy message viewing
			-- focus_on_open = false, -- If you want to ensure focus remains in the editor initially
			-- though you'll need to focus Trouble to navigate it.
			-- The default often works well, as `auto_jump` is controlled.
		},
		-- You can configure other modes (lsp_references, etc.) separately if needed
	},

	-- Actions (keymaps within the Trouble window)
	actions = {
		open_split = "s", -- Open in a new split
		open_vsplit = "v", -- Open in a new vertical split
		open_tab = "t", -- Open in a new tab
		jump = { "<cr>", "o" }, -- Jump to the diagnostic item
		jump_close = { "O" }, -- Jump and close Trouble
		toggle_mode = "m", -- Toggle between workspace/document diagnostics
		toggle_preview = "P", -- Toggle the preview
		preview = "p", -- Preview item
		close = { "q", "<esc>" }, -- Close Trouble
		refresh = "r", -- Refresh diagnostics
		-- etc.
	},
})

-- Recommended Keymaps (place these in your general keymap configuration)
vim.keymap.set("n", "<leader>xx", function()
	require("trouble").toggle()
end, { desc = "Toggle Trouble (Workspace Diagnostics)" })
vim.keymap.set("n", "<leader>xt", function()
	require("trouble").toggle("document_diagnostics")
end, { desc = "Toggle Trouble (Document Diagnostics)" })
vim.keymap.set("n", "<leader>xq", function()
	require("trouble").toggle("quickfix")
end, { desc = "Toggle Trouble (Quickfix List)" })
vim.keymap.set("n", "<leader>xl", function()
	require("trouble").toggle("loclist")
end, { desc = "Toggle Trouble (Location List)" })
vim.keymap.set("n", "gR", function()
	require("trouble").toggle("lsp_references")
end, { desc = "Toggle Trouble (LSP References)" })

-- For your specific request, you'll primarily use `<leader>xt`
