-- Configuring lualine.nvim for statusline with dynamic theme support

-- Function to get the appropriate lualine theme
local function get_lualine_theme()
	local colorscheme = vim.g.colors_name or ""
	local bg = vim.opt.background:get()

	-- Map colorschemes to lualine themes
	if colorscheme:match("gruvbox") then
		return "gruvbox-material"
	elseif colorscheme:match("catppuccin") then
		return "catppuccin"
	elseif colorscheme:match("tokyonight") then
		return "tokyonight"
	elseif colorscheme:match("kanagawa") then
		return "kanagawa"
	elseif colorscheme:match("rose%-pine") then
		return "rose-pine"
	elseif colorscheme:match("nord") then
		return "nord"
	elseif colorscheme:match("nightfox") or colorscheme:match("dayfox") or colorscheme:match("dawnfox") then
		return "nightfox"
	elseif colorscheme:match("everforest") then
		return "everforest"
	elseif colorscheme:match("dracula") then
		return "dracula"
	elseif colorscheme:match("onedark") then
		return "onedark"
	elseif colorscheme:match("neosolarized") then
		return "solarized"
	elseif colorscheme:match("jb") then
		return bg == "dark" and "gruvbox-material" or "onelight"
	else
		return "auto"
	end
end

-- Custom visual scroll indicator for statusline
local function scroll_indicator()
	local line = vim.fn.line(".")
	local total = vim.fn.line("$")
	if total <= 1 then return "100%" end
	local pct = math.floor((line - 1) / (total - 1) * 100)
	local blocks = { "▁", "▂", "▃", "▄", "▅", "▆", "▇", "█" }
	local bar = {}
	for i = 1, 10 do
		local threshold = i * 10
		if pct <= threshold - 10 then
			table.insert(bar, blocks[1])
		elseif pct >= threshold then
			table.insert(bar, blocks[8])
		else
			local fraction = (pct - (threshold - 10)) / 10
			local idx = math.max(1, math.min(8, math.floor(fraction * 8) + 1))
			table.insert(bar, blocks[idx])
		end
	end
	return string.format("%3d %s", pct, table.concat(bar))
end

local lualine_config = {
	options = {
		theme = get_lualine_theme(),
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
		icons_enabled = true,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { scroll_indicator },
		lualine_z = { "location" },
	},
}

require("lualine").setup(lualine_config)

-- Listen for ColorScheme event to update lualine theme only
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		lualine_config.options.theme = get_lualine_theme()
		require("lualine").setup(lualine_config)
	end,
})
