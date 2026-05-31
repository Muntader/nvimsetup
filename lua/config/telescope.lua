-- Helper function to get filename from a path string
-- (You can place this at the top of your Telescope config file or in a utility module)
local function get_filename_from_path(path_str)
	if type(path_str) ~= "string" then
		return ""
	end
	return path_str:match("([^/\\]+)%s*$") or ""
end

require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["<C-u>"] = false,
				["<C-d>"] = false,
				["<C-j>"] = require("telescope.actions").move_selection_next,
				["<C-k>"] = require("telescope.actions").move_selection_previous,
				["<Tab>"] = require("telescope.actions").move_selection_next,
				["<S-Tab>"] = require("telescope.actions").move_selection_previous,
			},
			n = {
				["<C-j>"] = require("telescope.actions").move_selection_next,
				["<C-k>"] = require("telescope.actions").move_selection_previous,
				["<Tab>"] = require("telescope.actions").move_selection_next,
				["<S-Tab>"] = require("telescope.actions").move_selection_previous,
			},
		},
		file_ignore_patterns = { "node_modules", ".git/", "dist/", "build/" },
		sorting_strategy = "ascending",
		layout_config = {
			height = 0.4,
			prompt_position = "top", -- Recommended for intuitive top-down sorting
			preview_cutoff = 120,
		},
		scroll_strategy = "limit",

		-- Updated tiebreak function to prioritize filename matches
		tiebreak = function(current_entry, existing_entry, prompt)
			if prompt == nil or string.match(prompt, "^%s*$") then
				return nil -- No prompt, no tiebreak
			end

			-- Extract filenames
			-- Assumes entry.value or entry.display contains the path
			local current_filename = get_filename_from_path(current_entry.value or current_entry.display)
			local existing_filename = get_filename_from_path(existing_entry.value or existing_entry.display)

			-- Scoring logic for filename match:
			-- 2 points: prompt is a prefix of the filename
			-- 1 point:  prompt is contained within the filename
			-- 0 points: no match in filename
			local function score_filename_match(filename, p)
				if filename == "" or p == "" then
					return 0
				end
				if string.find(filename, p, 1, true) == 1 then
					return 2
				end
				if string.find(filename, p, 1, true) ~= nil then
					return 1
				end
				return 0
			end

			local current_score = score_filename_match(current_filename, prompt)
			local existing_score = score_filename_match(existing_filename, prompt)

			if current_score > existing_score then
				return true -- current_entry is better
			elseif current_score < existing_score then
				return false -- existing_entry is better
			end

			-- If filename scores are equal (e.g., both match, or neither matches),
			-- you could add your original path prefix tiebreak here as a secondary check:
			-- local current_path_starts_with_prompt = string.find(current_entry.display or current_entry.value or "", prompt, 1, true) == 1
			-- local existing_path_starts_with_prompt = string.find(existing_entry.display or existing_entry.value or "", prompt, 1, true) == 1
			-- if current_path_starts_with_prompt and not existing_path_starts_with_prompt then
			--   return true
			-- elseif not current_path_starts_with_prompt and existing_path_starts_with_prompt then
			--   return false
			-- end

			return nil -- Defer to the main FZF sorter if scores are equal or no filename preference
		end,

		border = true,
		borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
		prompt_prefix = " > ",
		selection_caret = "· ",
		preview = {
			hide_on_startup = false,
			treesitter = true,
			filesize_limit = 0.5,
			timeout = 100,
		},
	},
	pickers = {
		find_files = {
			hidden = true, -- Show hidden files (dotfiles)
			-- Ensure only files are searched. `fd` is highly recommended.
			-- `fd` respects .gitignore by default and is very fast.
			-- The `--color never` flag prevents ANSI color codes from interfering.
			find_command = { "fd", "--type", "f", "--hidden", "--color", "never" },
			-- If you don't have `fd`, you can use `rg` (ripgrep):
			-- find_command = { "rg", "--files", "--hidden", "--glob", "!{.git,node_modules,dist,build}/*" },
			-- Note: Telescope's `file_ignore_patterns` will also apply.
		},
		buffers = {
			mappings = {
				n = {
					["<CR>"] = function(prompt_bufnr)
						local action = require("telescope.actions")
						local selection = require("telescope.actions.state").get_selected_entry()
						action.close(prompt_bufnr)
						vim.cmd("tabnew")
						vim.cmd("buffer " .. selection.bufnr)
					end,
				},
			},
		},
		-- ... other pickers from your config ...
		treesitter = { show_line = true, symbols = { "function", "method", "class", "interface", "type" } },
		lsp_definitions = { jump_type = "tab" },
		lsp_references = { jump_type = "tab" },
		current_buffer_fuzzy_find = { previewer = true },
		oldfiles = { only_cwd = true },
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
		file_browser = {
			hijack_netrw = false,
			hidden = true,
			respect_gitignore = true,
			mappings = {
				i = {
					["<C-t>"] = function(prompt_bufnr)
						local action = require("telescope.actions")
						local selection = require("telescope.actions.state").get_selected_entry()
						action.close(prompt_bufnr)
						vim.cmd("tabnew")
						vim.cmd("edit " .. (selection.path or selection.value))
					end,
				},
			},
		},
	},
})

-- Load extensions
pcall(function()
	require("telescope").load_extension("fzf")
end)
pcall(function()
	require("telescope").load_extension("project")
end)
