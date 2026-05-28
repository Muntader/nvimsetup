local function darken_hex(color, factor)
	if not color or color == "none" then return "none" end
	local r, g, b
	if type(color) == "number" then
		r = bit.rshift(bit.band(color, 0xFF0000), 16)
		g = bit.rshift(bit.band(color, 0x00FF00), 8)
		b = bit.band(color, 0x0000FF)
	else
		local hex = color:gsub("#", "")
		r = tonumber(hex:sub(1, 2), 16)
		g = tonumber(hex:sub(3, 4), 16)
		b = tonumber(hex:sub(5, 6), 16)
	end
	r = math.min(255, math.floor(r * factor))
	g = math.min(255, math.floor(g * factor))
	b = math.min(255, math.floor(b * factor))
	return string.format("#%02x%02x%02x", r, g, b)
end

local function setup_tree_highlights()
	local norm = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
	local norm_bg = norm.bg or "none"
	local cursorline = vim.api.nvim_get_hl(0, { name = "CursorLine", link = false })
	local cl_bg = cursorline.bg or norm_bg
	local is_dark = vim.o.background == "dark"
	local factor = is_dark and 1.08 or 0.93
	local tree_bg = darken_hex(norm_bg, factor)

	vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = tree_bg })
	vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = tree_bg })
	vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = tree_bg })
	vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = tree_bg, bg = tree_bg })
	vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { fg = tree_bg, bg = tree_bg })
	vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = cl_bg })
	-- VSCode-style: folders are a single muted color, files use their icon colors
	-- VSCode-style: folders get a consistent theme color, files stay neutral
	vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { link = "Directory" })
	vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { link = "Directory" })
	vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { link = "Normal" })
	vim.api.nvim_set_hl(0, "NeoTreeFileName", { link = "Normal" })
	vim.api.nvim_set_hl(0, "NeoTreeRootName", { link = "Title" })
	vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { link = "NonText" })
	vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { link = "Type" })
	vim.api.nvim_set_hl(0, "NeoTreeDotfile", { link = "Comment" })
	vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { link = "StatusLine" })
	vim.api.nvim_set_hl(0, "NeoTreeFloatNormal", { link = "NormalFloat" })
end

setup_tree_highlights()
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.schedule(setup_tree_highlights)
	end,
})

require("neo-tree").setup({
	close_if_last_window = true,
	enable_diagnostics = true,
	enable_git_status = true,
	enable_modified_markers = true,

		default_component_configs = {
		diagnostics = {
			symbols = {
				hint = "󰌶",
				info = "󰋼",
				warn = "󰀪",
				error = "󰅚",
			},
			highlights = {
				hint = "DiagnosticSignHint",
				info = "DiagnosticSignInfo",
				warn = "DiagnosticSignWarn",
				error = "DiagnosticSignError",
			},
		},
		name = {
			-- Disabled: git status colors make the tree look like a rainbow
			use_git_status_colors = false,
		},
		indent = {
			padding = 0,
			with_markers = true,
		},
		icon = {
			-- VSCode-style simple folder icons
			folder_closed = "󰉋",
			folder_open = "󰝰",
			folder_empty = "󰉖",
			default = "󰈙",
		},
		modified = {
			symbol = "●",
			highlight = "NeoTreeModified",
		},
		git_status = {
			-- VSCode-style: minimal right-side indicators
			symbols = {
				added     = "",
				deleted   = "",
				modified  = "",
				renamed   = "",
				untracked = "",
				ignored   = "",
				unstaged  = "",
				staged    = "",
				conflict  = "",
			},
		},
	},

	window = {
		position = "left",
		width = 30,
		mappings = {
			["<C-f>"] = function()
				vim.cmd("wincmd p")
				vim.api.nvim_feedkeys("/", "n", false)
			end,
			["t"] = function(state)
				local node = state.tree:get_node()
				if node then
					local path = node.type == "directory" and node.path or vim.fn.fnamemodify(node.path, ":h")
					vim.cmd("split | terminal")
					vim.cmd("lcd " .. vim.fn.fnameescape(path))
					vim.cmd("startinsert")
				end
			end,
			["y"] = function(state)
				local node = state.tree:get_node()
				if node then
					vim.fn.setreg("+", node.path)
					vim.notify('Copied: ' .. node.path, vim.log.levels.INFO)
				end
			end,
			["Y"] = function(state)
				local node = state.tree:get_node()
				if node then
					vim.fn.setreg("+", node.path)
					vim.fn.setreg('"', node.path)
					vim.notify('Copied: ' .. node.path, vim.log.levels.INFO)
				end
			end,
			["o"] = function(state)
				local node = state.tree:get_node()
				if node then
					local dir = node.type == "directory" and node.path or vim.fn.fnamemodify(node.path, ":h")
					vim.ui.open(dir)
				end
			end,
		},
	},

	filesystem = {
		follow_current_file = { enabled = true },
		hijack_netrw = true,
		use_libuv_file_watcher = true,
		filtered_items = {
			visible = false,
			hide_dotfiles = false,
			hide_gitignored = true,
			hide_hidden = true,
			always_show = { ".gitignore", ".env.local" },
			never_show = { ".git", "node_modules" },
		},
		window = {
			mappings = {
				["d"] = "delete",
			["gr"] = function(state)
				local node = state.tree:get_node()
				if node then
					vim.fn.system({ "git", "restore", node.path })
					vim.cmd("Neotree refresh")
					vim.notify('Restored: ' .. node.path, vim.log.levels.INFO)
				end
			end,
			},
		},
	},

	buffers = {
		follow_current_file = { enabled = true },
		group_empty_dirs = true,
		show_unloaded = true,
		window = {
			mappings = {
				["d"] = "delete",
			},
		},
	},

	git_status = {
		window = {
			position = "left",
			mappings = {
				["s"] = "stage",
				["S"] = "unstage",
				["d"] = "delete",
			},
		},
	},

})

-- Force refresh neo-tree when diagnostics change (inline badges)
vim.api.nvim_create_autocmd("DiagnosticChanged", {
	callback = function()
		pcall(vim.cmd, "Neotree refresh")
	end,
})

-- Reveal current file in tree
vim.keymap.set("n", "<leader>ft", ":Neotree reveal<CR>", { noremap = true, silent = true })
