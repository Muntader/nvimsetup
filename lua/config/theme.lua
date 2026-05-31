-- theme.lua - Slimmed theme management with KDE + Alacritty sync
local M = {}

local function load_github_theme(name)
	require("github-theme").setup({
		groups = {
			all = {
				-- JSX/TSX: tags should be green (entityTag), not orange (type)
				["@tag.tsx"] = { link = "@tag" },
				["@tag.javascript"] = { link = "@tag" },
				-- JSX/TSX: delimiters should fallback, not be blue (attribute)
				["@tag.delimiter.tsx"] = { link = "@tag.delimiter" },
				["@tag.delimiter.javascript"] = { link = "@tag.delimiter" },
				-- Properties/fields should be default text, not blue (constant)
				["@variable.member"] = { link = "@variable" },
				["@property"] = { link = "@variable" },
				-- Builtin types should be blue (support.type), not red (keyword)
				["@type.builtin"] = { link = "@constant" },
				-- Module/namespace names should be default text, not red
				["@module"] = { link = "@variable" },
				-- Operators should be default text, not blue
				["@operator"] = { link = "@variable" },
				["Operator"] = { link = "Identifier" },
				-- Builtin functions should be blue, not uncolored
				["@function.builtin"] = { link = "@constant" },
				-- Exception keywords should be red, not blue
				["@keyword.exception"] = { link = "@keyword" },
				-- Markdown headings should match GitHub's heading color
				["@markup.heading"] = { fg = "palette.accent.emphasis" },
				-- Semantic tokens: classes/interfaces/enums as types
				["@lsp.type.class"] = { link = "@type" },
				["@lsp.type.interface"] = { link = "@type" },
				["@lsp.type.enum"] = { link = "@type" },
				["@lsp.type.struct"] = { link = "@type" },
				["@lsp.type.type"] = { link = "@type" },
				["@lsp.type.typeParameter"] = { link = "@type" },
				-- Semantic tokens: namespace/property/operator as default text
				["@lsp.type.namespace"] = { link = "@variable" },
				["@lsp.type.property"] = { link = "@variable" },
				["@lsp.type.operator"] = { link = "@variable" },
				-- Semantic tokens: method/function as functions (purple)
				["@lsp.type.method"] = { link = "@function" },
				["@lsp.type.function"] = { link = "@function" },
				["@lsp.type.macro"] = { link = "@function" },
				-- Semantic tokens: decorator/attribute as constant (blue)
				["@lsp.type.decorator"] = { link = "@constant" },
				-- Semantic tokens: builtin types as constants (blue)
				["@lsp.type.keyword"] = { link = "@keyword" },
				["@lsp.type.modifier"] = { link = "@keyword" },
				-- Semantic tokens: events as types
				["@lsp.type.event"] = { link = "@type" },
				-- Semantic token modifiers: readonly/const variables as constants
				["@lsp.typemod.variable.readonly"] = { link = "@constant" },
				["@lsp.typemod.variable.constant"] = { link = "@constant" },
				["@lsp.typemod.variable.static"] = { link = "@constant" },
				-- Semantic token modifiers: defaultLibrary functions/types as builtin
				["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
				["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },
				["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
				["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
			},
		},
	})
	vim.cmd.colorscheme(name)
end

local themes = {
	-- Gruvbox Material
	{
		name = "gruvbox-hard-dark",
		display = "Gruvbox Hard (Dark)",
		background = "dark",
		config = function()
			vim.g.gruvbox_material_background = "hard"
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
	{
		name = "gruvbox-medium-dark",
		display = "Gruvbox Medium (Dark)",
		background = "dark",
		config = function()
			vim.g.gruvbox_material_background = "medium"
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
	{
		name = "gruvbox-soft-dark",
		display = "Gruvbox Soft (Dark)",
		background = "dark",
		config = function()
			vim.g.gruvbox_material_background = "soft"
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
	{
		name = "gruvbox-hard-light",
		display = "Gruvbox Hard (Light)",
		background = "light",
		config = function()
			vim.g.gruvbox_material_background = "hard"
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
	{
		name = "gruvbox-medium-light",
		display = "Gruvbox Medium (Light)",
		background = "light",
		config = function()
			vim.g.gruvbox_material_background = "medium"
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
	{
		name = "gruvbox-soft-light",
		display = "Gruvbox Soft (Light)",
		background = "light",
		config = function()
			vim.g.gruvbox_material_background = "soft"
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},

	-- Tokyo Night
	{
		name = "tokyonight-night",
		display = "Tokyo Night (Night)",
		background = "dark",
		config = function()
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},
	{
		name = "tokyonight-storm",
		display = "Tokyo Night (Storm)",
		background = "dark",
		config = function()
			vim.cmd.colorscheme("tokyonight-storm")
		end,
	},
	{
		name = "tokyonight-moon",
		display = "Tokyo Night (Moon)",
		background = "dark",
		config = function()
			vim.cmd.colorscheme("tokyonight-moon")
		end,
	},
	{
		name = "tokyonight-day",
		display = "Tokyo Night (Day)",
		background = "light",
		config = function()
			vim.cmd.colorscheme("tokyonight-day")
		end,
	},

	-- Catppuccin
	{
		name = "catppuccin-mocha",
		display = "Catppuccin (Mocha)",
		background = "dark",
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
	{
		name = "catppuccin-macchiato",
		display = "Catppuccin (Macchiato)",
		background = "dark",
		config = function()
			vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
	{
		name = "catppuccin-frappe",
		display = "Catppuccin (Frappe)",
		background = "dark",
		config = function()
			vim.cmd.colorscheme("catppuccin-frappe")
		end,
	},
	{
		name = "catppuccin-latte",
		display = "Catppuccin (Latte)",
		background = "light",
		config = function()
			vim.cmd.colorscheme("catppuccin-latte")
		end,
	},

	-- NeoSolarized
	{
		name = "neosolarized",
		display = "NeoSolarized (Dark)",
		background = "dark",
		config = function()
			require("neosolarized").setup({ comment_italics = true, background_set = false })
			vim.cmd.colorscheme("neosolarized")
		end,
	},
	{
		name = "neosolarized-light",
		display = "NeoSolarized (Light)",
		background = "light",
		config = function()
			require("neosolarized").setup({ comment_italics = true, background_set = true })
			vim.cmd.colorscheme("neosolarized")
		end,
	},

	-- GitHub
	{
		name = "github_light_default",
		display = "GitHub Light (Default)",
		background = "light",
		config = function()
			load_github_theme("github_light_default")
		end,
	},
	{
		name = "github_dark_default",
		display = "GitHub Dark (Default)",
		background = "dark",
		config = function()
			load_github_theme("github_dark_default")
		end,
	},
	{
		name = "github_dark_dimmed",
		display = "GitHub Dark (Dimmed)",
		background = "dark",
		config = function()
			load_github_theme("github_dark_dimmed")
		end,
	},
}

local theme_map = {}
for _, t in ipairs(themes) do
	theme_map[t.name] = t
end

local theme_pairs = {
	["gruvbox-hard-dark"] = "gruvbox-hard-light",
	["gruvbox-medium-dark"] = "gruvbox-medium-light",
	["gruvbox-soft-dark"] = "gruvbox-soft-light",
	["gruvbox-hard-light"] = "gruvbox-hard-dark",
	["gruvbox-medium-light"] = "gruvbox-medium-dark",
	["gruvbox-soft-light"] = "gruvbox-soft-dark",
	["catppuccin-mocha"] = "catppuccin-latte",
	["catppuccin-macchiato"] = "catppuccin-latte",
	["catppuccin-frappe"] = "catppuccin-latte",
	["catppuccin-latte"] = "catppuccin-mocha",
	["tokyonight-night"] = "tokyonight-day",
	["tokyonight-storm"] = "tokyonight-day",
	["tokyonight-moon"] = "tokyonight-day",
	["tokyonight-day"] = "tokyonight-night",
	["github_light_default"] = "github_dark_default",
	["github_dark_default"] = "github_light_default",
	["github_dark_dimmed"] = "github_light_default",
	["neosolarized"] = "neosolarized-light",
	["neosolarized-light"] = "neosolarized",
}

local alacritty_theme_map = {
	["catppuccin-mocha"] = "catppuccin_mocha.toml",
	["catppuccin-macchiato"] = "catppuccin_macchiato.toml",
	["catppuccin-frappe"] = "catppuccin_frappe.toml",
	["catppuccin-latte"] = "catppuccin_latte.toml",
	["github_light_default"] = "github_light_default.toml",
	["github_dark_default"] = "github_dark_default.toml",
	["github_dark_dimmed"] = "github_dark_dimmed.toml",
	["neosolarized"] = "solarized_dark.toml",
	["neosolarized-light"] = "solarized_light.toml",
}

local applying = false
local pref_file = vim.fn.stdpath("config") .. "/theme.txt"
local locked_bg = nil

local function read_pref()
	if vim.fn.filereadable(pref_file) == 1 then
		local lines = vim.fn.readfile(pref_file)
		return lines and lines[1]
	end
end

local function write_pref(name)
	vim.fn.writefile({ name }, pref_file)
end

local function detect_system_bg(callback)
	vim.system({ "gsettings", "get", "org.gnome.desktop.interface", "color-scheme" }, { text = true }, function(r)
		local out = (r.stdout or ""):gsub("%s+", "")
		if out == "'prefer-dark'" then
			return callback("dark")
		elseif out == "'default'" or out == "'prefer-light'" then
			return callback("light")
		end
		vim.system({ "kreadconfig5", "--group", "KDE", "--key", "ColorScheme" }, { text = true }, function(r2)
			local out2 = (r2.stdout or ""):gsub("%s+", "")
			if out2 ~= "" then
				return callback(out2:lower():match("dark") and "dark" or "light")
			end
			vim.system({ "gsettings", "get", "org.gnome.desktop.interface", "gtk-theme" }, { text = true }, function(r3)
				local out3 = (r3.stdout or ""):lower()
				if out3:match("dark") then
					return callback("dark")
				end
				if out3:match("light") then
					return callback("light")
				end
				callback(nil)
			end)
		end)
	end)
end

local function resolve_lualine_theme()
	local cs = vim.g.colors_name or ""
	if cs:match("gruvbox") then
		return "gruvbox-material"
	elseif cs:match("catppuccin") then
		return "catppuccin"
	elseif cs:match("tokyonight") then
		return "tokyonight"
	elseif cs:match("github") then
		return vim.g.colors_name or "auto"
	elseif cs:match("neosolarized") then
		return "solarized"
	else
		return "auto"
	end
end

local function update_lualine()
	local ok, lualine = pcall(require, "lualine")
	if not ok then
		return
	end
	lualine.setup({
		options = {
			theme = resolve_lualine_theme(),
			section_separators = { left = "", right = "" },
			component_separators = { left = "", right = "" },
			icons_enabled = true,
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { "filename" },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
	})
end

local function sync_alacritty(bg, theme_name)
	local config_path = vim.fn.expand("~/.config/alacritty/alacritty.toml")
	if vim.fn.filereadable(config_path) ~= 1 then
		return
	end
	local file_name = alacritty_theme_map[theme_name]
		or (bg == "dark" and "catppuccin_mocha.toml" or "catppuccin_latte.toml")
	local theme_path = "~/.config/alacritty/themes/themes/" .. file_name
	local lines = vim.fn.readfile(config_path)
	local new_lines = {}
	local replaced = false
	local in_general = false
	for _, line in ipairs(lines) do
		if line:match("^%[general%]") then
			in_general = true
			table.insert(new_lines, line)
		elseif in_general and line:match("^import%s*=") then
			table.insert(new_lines, 'import = ["' .. theme_path .. '"]')
			replaced = true
			in_general = false
		else
			if line:match("^%[") then
				in_general = false
			end
			table.insert(new_lines, line)
		end
	end
	if replaced then
		local fd = vim.uv.fs_open(config_path, "w", 438)
		if fd then
			vim.uv.fs_write(fd, table.concat(new_lines, "\n") .. "\n", -1)
			vim.uv.fs_close(fd)
		end
	end
end

local function apply_theme(name)
	local theme = theme_map[name]
	if not theme then
		vim.notify("theme.lua: unknown theme '" .. name .. "'", vim.log.levels.WARN)
		return
	end
	applying = true
	vim.opt.background = theme.background
	locked_bg = theme.background
	if theme.config then
		theme.config()
	else
		vim.cmd.colorscheme(theme.name)
	end
	write_pref(name)
	sync_alacritty(theme.background, name)
	vim.schedule(function()
		update_lualine()
		vim.cmd("redraw!")
		applying = false
	end)
end

vim.api.nvim_create_autocmd("OptionSet", {
	pattern = "background",
	group = vim.api.nvim_create_augroup("ThemeLockBackground", { clear = true }),
	callback = function()
		if applying then
			return
		end
		if not locked_bg then
			return
		end
		local new_bg = vim.v.option_new
		if new_bg ~= locked_bg then
			applying = true
			vim.o.background = locked_bg
			if vim.g.colors_name then
				vim.cmd.colorscheme(vim.g.colors_name)
			end
			applying = false
		end
	end,
})

local function load_theme()
	local saved = read_pref()
	if saved and theme_map[saved] then
		apply_theme(saved)
		return
	end
	detect_system_bg(vim.schedule_wrap(function(bg)
		local default = bg == "light" and "github_light_default" or "github_dark_default"
		apply_theme(default)
	end))
end

local function toggle_theme()
	local current = read_pref()
	if not current then
		apply_theme("catppuccin-mocha")
		return
	end
	local pair = theme_pairs[current]
	if pair then
		apply_theme(pair)
		return
	end
	local theme = theme_map[current]
	if not theme then
		apply_theme("catppuccin-mocha")
		return
	end
	local base = current:gsub("%-dark$", ""):gsub("%-light$", "")
	local target_bg = theme.background == "dark" and "light" or "dark"
	local target = base .. "-" .. target_bg
	if theme_map[target] then
		apply_theme(target)
	else
		vim.notify("No " .. target_bg .. " variant for " .. base, vim.log.levels.INFO)
	end
end

local function pick_theme()
	local pickers = require("telescope.pickers")
	local finders = require("telescope.finders")
	local conf = require("telescope.config").values
	local actions = require("telescope.actions")
	local action_state = require("telescope.actions.state")
	local original = read_pref() or "github_dark_default"

	local function preview_selection()
		local sel = action_state.get_selected_entry()
		if not sel then
			return
		end
		local t = theme_map[sel.value]
		if not t then
			return
		end
		applying = true
		vim.opt.background = t.background
		if t.config then
			t.config()
		else
			vim.cmd.colorscheme(t.name)
		end
		applying = false
	end

	pickers
		.new({}, {
			prompt_title = "Select Theme (Live Preview)",
			finder = finders.new_table({
				results = themes,
				entry_maker = function(entry)
					return {
						value = entry.name,
						display = entry.display or entry.name,
						ordinal = entry.display or entry.name,
					}
				end,
			}),
			sorter = conf.generic_sorter({}),
			attach_mappings = function(prompt_bufnr, map)
				local function move_and_preview(dir_action)
					return function()
						dir_action(prompt_bufnr)
						preview_selection()
					end
				end
				vim.keymap.set(
					"i",
					"<Up>",
					move_and_preview(actions.move_selection_previous),
					{ buffer = prompt_bufnr }
				)
				vim.keymap.set("i", "<Down>", move_and_preview(actions.move_selection_next), { buffer = prompt_bufnr })
				vim.keymap.set(
					"i",
					"<C-p>",
					move_and_preview(actions.move_selection_previous),
					{ buffer = prompt_bufnr }
				)
				vim.keymap.set("i", "<C-n>", move_and_preview(actions.move_selection_next), { buffer = prompt_bufnr })
				actions.select_default:replace(function()
					actions.close(prompt_bufnr)
					local sel = action_state.get_selected_entry()
					if sel then
						apply_theme(sel.value)
					end
				end)
				local function cancel()
					actions.close(prompt_bufnr)
					apply_theme(original)
				end
				vim.keymap.set("i", "<Esc>", cancel, { buffer = prompt_bufnr })
				vim.keymap.set("i", "<C-c>", cancel, { buffer = prompt_bufnr })
				vim.schedule(preview_selection)
				return true
			end,
		})
		:find()
end

local function toggle_alacritty()
	local bg = vim.o.background
	local new_bg = bg == "dark" and "light" or "dark"
	local current = read_pref()
	sync_alacritty(new_bg, current)
end

-- KDE auto-switch: poll kdeglobals every 2 s
local kde_file = vim.fn.expand("~/.config/kdeglobals")
local last_mtime = vim.fn.getftime(kde_file)
local kde_timer = vim.uv.new_timer()

kde_timer:start(
	2000,
	2000,
	vim.schedule_wrap(function()
		local mtime = vim.fn.getftime(kde_file)
		if mtime < 0 or mtime == last_mtime then
			return
		end
		last_mtime = mtime
		detect_system_bg(vim.schedule_wrap(function(sys_bg)
			if not sys_bg then
				return
			end
			local current = read_pref()
			if not current then
				return
			end
			local t = theme_map[current]
			if not t or t.background == sys_bg then
				return
			end
			local pair = theme_pairs[current]
			if pair then
				apply_theme(pair)
			end
		end))
	end)
)

vim.api.nvim_create_autocmd("VimLeavePre", {
	group = vim.api.nvim_create_augroup("ThemeCleanup", { clear = true }),
	callback = function()
		kde_timer:stop()
	end,
})

load_theme()

M.pick_theme = pick_theme
M.toggle_theme = toggle_theme
M.apply_theme = apply_theme
M.toggle_alacritty = toggle_alacritty
M.sync_alacritty = sync_alacritty
M.detect_system_bg = detect_system_bg

return M
