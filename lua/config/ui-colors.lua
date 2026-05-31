local M = {}

local palette = {
	dark = {
		bg       = "#22272e",
		bg_alt   = "#1c2128",
		bg_float = "#2d333b",
		bg_hover = "#2d333b",
		bg_cmp   = "#373e47",
		bg_doc   = "#1c2128",
		bg_sel   = "#316dca",
		fg       = "#cdd9e5",
		fg_dim   = "#768390",
		fg_dark  = "#545d68",
		border   = "#444c56",
		blue     = "#539bf5",
		cyan     = "#39c5cf",
		green    = "#57ab5a",
		yellow   = "#daaa3f",
		orange   = "#cc6b2c",
		red      = "#f47067",
		magenta  = "#dcbdfb",
	},
	light = {
		bg       = "#ffffff",
		bg_alt   = "#f6f8fa",
		bg_float = "#ffffff",
		bg_hover = "#eaeef2",
		bg_cmp   = "#d0d7de",
		bg_doc   = "#f6f8fa",
		bg_sel   = "#0969da",
		fg       = "#24292f",
		fg_dim   = "#656d76",
		fg_dark  = "#8c959f",
		border   = "#d0d7de",
		blue     = "#0969da",
		cyan     = "#1b7c83",
		green    = "#2da44e",
		yellow   = "#d4a72c",
		orange   = "#bc4c00",
		red      = "#cf222e",
		magenta  = "#8250df",
	},
}

function M.set_highlights()
	local is_dark = vim.o.background == "dark"
	local c = is_dark and palette.dark or palette.light

	local theme_normal = vim.api.nvim_get_hl(0, { name = "Normal" })
	local theme_float = vim.api.nvim_get_hl(0, { name = "NormalFloat" })
	local theme_visual = vim.api.nvim_get_hl(0, { name = "Visual" })
	local theme_comment = vim.api.nvim_get_hl(0, { name = "Comment" })
	local theme_border = vim.api.nvim_get_hl(0, { name = "FloatBorder" })

	local bg = theme_normal.bg and string.format("#%06x", theme_normal.bg) or c.bg
	local bg_float = theme_float.bg and string.format("#%06x", theme_float.bg) or c.bg_float
	local bg_hover = theme_visual.bg and string.format("#%06x", theme_visual.bg) or c.bg_hover
	local fg = theme_normal.fg and string.format("#%06x", theme_normal.fg) or c.fg
	local fg_dim = theme_comment.fg and string.format("#%06x", theme_comment.fg) or c.fg_dim
	local border = theme_border.fg and string.format("#%06x", theme_border.fg) or c.border

	-- Neo-tree
	vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = bg_float })
	vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = bg_float })
	vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = bg_float })
	vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = bg_float, bg = bg_float })
	vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { fg = bg_float, bg = bg_float })
	vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = bg_hover })
	vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = c.blue })
	vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = c.blue })
	vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg = fg })
	vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = fg })
	vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = fg, bold = true })
	vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = c.fg_dark })
	vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { fg = c.cyan })
	vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = fg_dim })
	vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { fg = fg, bg = bg_hover })
	vim.api.nvim_set_hl(0, "NeoTreeFloatNormal", { bg = bg_float })
	vim.api.nvim_set_hl(0, "NeoTreeModified", { fg = c.yellow })

	-- Diagnostics
	vim.api.nvim_set_hl(0, "DiagnosticError", { fg = c.red })
	vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = c.blue })
	vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = c.magenta })
	vim.api.nvim_set_hl(0, "DiagnosticOk", { fg = c.green })

	vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = c.red })
	vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = c.blue })
	vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = c.magenta })
	vim.api.nvim_set_hl(0, "DiagnosticSignOk", { fg = c.green })

	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = c.red })
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = c.blue })
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = c.magenta })

	vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = c.red, undercurl = true })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { sp = c.yellow, undercurl = true })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { sp = c.blue, undercurl = true })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { sp = c.magenta, undercurl = true })

	vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { fg = c.red })
	vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { fg = c.blue })
	vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { fg = c.magenta })

	-- Bufferline (no explicit bg — inherits from Normal to avoid boxes)
	vim.api.nvim_set_hl(0, "BufferLineFill", {})
	vim.api.nvim_set_hl(0, "BufferLineBackground", { fg = fg_dim })
	vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { fg = fg })
	vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { fg = fg })

	vim.api.nvim_set_hl(0, "BufferLineTab", {})
	vim.api.nvim_set_hl(0, "BufferLineTabSelected", { fg = c.blue })

	vim.api.nvim_set_hl(0, "BufferLineIndicator", { fg = c.blue })
	vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { fg = c.blue })
	vim.api.nvim_set_hl(0, "BufferLineIndicatorVisible", { fg = c.blue })

	vim.api.nvim_set_hl(0, "BufferLineSeparator", { fg = c.fg_dark })
	vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { fg = c.blue })
	vim.api.nvim_set_hl(0, "BufferLineSeparatorVisible", { fg = c.fg_dark })

	vim.api.nvim_set_hl(0, "BufferLineCloseButton", { fg = c.fg_dim })
	vim.api.nvim_set_hl(0, "BufferLineCloseButtonSelected", { fg = c.red })
	vim.api.nvim_set_hl(0, "BufferLineCloseButtonVisible", { fg = c.fg_dim })

	vim.api.nvim_set_hl(0, "BufferLineModified", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "BufferLineModifiedSelected", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "BufferLineModifiedVisible", { fg = c.yellow })

	vim.api.nvim_set_hl(0, "BufferLinePick", { fg = c.blue })
	vim.api.nvim_set_hl(0, "BufferLinePickVisible", { fg = c.blue })

	vim.api.nvim_set_hl(0, "BufferLineError", { fg = c.red })
	vim.api.nvim_set_hl(0, "BufferLineErrorSelected", { fg = c.red })
	vim.api.nvim_set_hl(0, "BufferLineErrorVisible", { fg = c.red })

	vim.api.nvim_set_hl(0, "BufferLineWarning", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "BufferLineWarningSelected", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "BufferLineWarningVisible", { fg = c.yellow })

	vim.api.nvim_set_hl(0, "BufferLineHint", { fg = c.magenta })
	vim.api.nvim_set_hl(0, "BufferLineHintSelected", { fg = c.magenta })
	vim.api.nvim_set_hl(0, "BufferLineHintVisible", { fg = c.magenta })

	vim.api.nvim_set_hl(0, "BufferLineInfo", { fg = c.blue })
	vim.api.nvim_set_hl(0, "BufferLineInfoSelected", { fg = c.blue })
	vim.api.nvim_set_hl(0, "BufferLineInfoVisible", { fg = c.blue })

	vim.api.nvim_set_hl(0, "BufferLineDiagnostics", { fg = c.fg_dim })
	vim.api.nvim_set_hl(0, "BufferLineDiagnosticsSelected", { fg = c.fg })

	-- Trouble
	vim.api.nvim_set_hl(0, "TroubleNormal", { bg = bg_float })
	vim.api.nvim_set_hl(0, "TroubleText", { fg = fg })

	-- LSP references
	vim.api.nvim_set_hl(0, "LspReferenceText", { bg = bg_hover })
	vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = bg_hover })
	vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = bg_hover })

	-- General UI
	vim.api.nvim_set_hl(0, "CursorLine", { bg = bg_hover })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg_float })
	vim.api.nvim_set_hl(0, "FloatBorder", { fg = border, bg = bg_float })
	vim.api.nvim_set_hl(0, "Pmenu", { fg = fg, bg = bg_float })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = bg, bg = c.bg_sel })
	vim.api.nvim_set_hl(0, "PmenuSbar", { bg = bg_hover })
	vim.api.nvim_set_hl(0, "PmenuThumb", { bg = c.fg_dark })
	vim.api.nvim_set_hl(0, "Visual", { bg = bg_hover })

	-- Lazy
	vim.api.nvim_set_hl(0, "LazyNormal", { bg = bg_float })

	-- blink.cmp ghost text (inline placeholder preview)
	vim.api.nvim_set_hl(0, "BlinkCmpGhostText", { fg = c.fg_dark })

	-- Copilot inline suggestion
	vim.api.nvim_set_hl(0, "CopilotSuggestion", { fg = c.fg_dim, italic = true })

	-- blink.cmp menu
	vim.api.nvim_set_hl(0, "BlinkCmpMenu", { fg = fg, bg = bg_float })
	vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = bg_float, bg = bg_float })
	vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { fg = fg, bg = c.bg_cmp, bold = true })
	vim.api.nvim_set_hl(0, "BlinkCmpScrollBar", { fg = c.fg_dark, bg = c.bg_cmp })

	-- blink.cmp label
	vim.api.nvim_set_hl(0, "BlinkCmpLabel", { fg = fg })
	vim.api.nvim_set_hl(0, "BlinkCmpLabelDescription", { fg = fg_dim })
	vim.api.nvim_set_hl(0, "BlinkCmpLabelMatch", { fg = c.blue, bold = true })
	vim.api.nvim_set_hl(0, "BlinkCmpLabelDetail", { fg = fg_dim })

	-- blink.cmp source
	vim.api.nvim_set_hl(0, "BlinkCmpSource", { fg = c.fg_dark })
	vim.api.nvim_set_hl(0, "BlinkCmpSourcePath", { fg = c.cyan })
	vim.api.nvim_set_hl(0, "BlinkCmpSourceLSP", { fg = c.blue })
	vim.api.nvim_set_hl(0, "BlinkCmpSourceSnippets", { fg = c.green })
	vim.api.nvim_set_hl(0, "BlinkCmpSourceBuffer", { fg = c.fg_dim })
	vim.api.nvim_set_hl(0, "BlinkCmpSourceCopilot", { fg = c.magenta })

	-- blink.cmp kind icons (colored per category)
	vim.api.nvim_set_hl(0, "BlinkCmpKindText", { fg = c.fg_dim })
	vim.api.nvim_set_hl(0, "BlinkCmpKindMethod", { fg = c.blue })
	vim.api.nvim_set_hl(0, "BlinkCmpKindFunction", { fg = c.blue })
	vim.api.nvim_set_hl(0, "BlinkCmpKindConstructor", { fg = c.orange })
	vim.api.nvim_set_hl(0, "BlinkCmpKindField", { fg = c.cyan })
	vim.api.nvim_set_hl(0, "BlinkCmpKindVariable", { fg = c.magenta })
	vim.api.nvim_set_hl(0, "BlinkCmpKindClass", { fg = c.orange })
	vim.api.nvim_set_hl(0, "BlinkCmpKindInterface", { fg = c.orange })
	vim.api.nvim_set_hl(0, "BlinkCmpKindModule", { fg = c.orange })
	vim.api.nvim_set_hl(0, "BlinkCmpKindProperty", { fg = c.cyan })
	vim.api.nvim_set_hl(0, "BlinkCmpKindUnit", { fg = c.fg_dim })
	vim.api.nvim_set_hl(0, "BlinkCmpKindValue", { fg = c.fg_dim })
	vim.api.nvim_set_hl(0, "BlinkCmpKindEnum", { fg = c.orange })
	vim.api.nvim_set_hl(0, "BlinkCmpKindSnippet", { fg = c.green })
	vim.api.nvim_set_hl(0, "BlinkCmpKindFile", { fg = c.fg_dim })
	vim.api.nvim_set_hl(0, "BlinkCmpKindFolder", { fg = c.fg_dim })
	vim.api.nvim_set_hl(0, "BlinkCmpKindColor", { fg = c.magenta })
	vim.api.nvim_set_hl(0, "BlinkCmpKindKeyword", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "BlinkCmpKindReference", { fg = c.blue })
	vim.api.nvim_set_hl(0, "BlinkCmpKindStruct", { fg = c.orange })
	vim.api.nvim_set_hl(0, "BlinkCmpKindEvent", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "BlinkCmpKindOperator", { fg = c.fg_dim })
	vim.api.nvim_set_hl(0, "BlinkCmpKindTypeParameter", { fg = c.cyan })
	vim.api.nvim_set_hl(0, "BlinkCmpKindCopilot", { fg = c.magenta })

	-- blink.cmp documentation
	vim.api.nvim_set_hl(0, "BlinkCmpDoc", { fg = fg, bg = c.bg_doc })
	vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { fg = border, bg = c.bg_doc })
	vim.api.nvim_set_hl(0, "BlinkCmpDocSeparator", { fg = border })
	vim.api.nvim_set_hl(0, "BlinkCmpDocCursorLine", { bg = c.bg_cmp })
	vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelp", { fg = fg, bg = c.bg_doc })
	vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelpBorder", { fg = border, bg = c.bg_doc })
end

M.set_highlights()

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = M.set_highlights,
})

return M
