-- Highlights are managed by lua/config/ui-colors.lua

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
