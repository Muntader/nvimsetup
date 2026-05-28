-- Copilot Setup (unchanged from previous fix)
require("copilot").setup({
	suggestion = {
		enabled = true,
		auto_trigger = false,
		keymap = {
			accept = "<M-Enter>",
			next = "<M-]>",
			prev = "<M-[>",
			dismiss = "<C-e>",
		},
	},
	panel = { enabled = false },
	filetypes = {
		markdown = true,
		help = true,
		["*"] = true,
	},
})

require("copilot_cmp").setup()

-- nvim-cmp Setup
local cmp = require("cmp")
local luasnip = require("luasnip")

pcall(function()
	require("tailwindcss-colorizer-cmp").setup({
		color_square_width = 2,
	})
end)

-- Helper function to check words before cursor
local function has_words_before()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

vim.api.nvim_set_hl(0, "CmpPmenu", { link = "Pmenu" })
vim.api.nvim_set_hl(0, "CmpPmenuSel", { link = "PmenuSel" })
vim.api.nvim_set_hl(0, "CmpPmenuSbar", { link = "PmenuSbar" })
vim.api.nvim_set_hl(0, "CmpPmenuThumb", { link = "PmenuThumb" })
vim.api.nvim_set_hl(0, "CmpDoc", { link = "NormalFloat" })
vim.api.nvim_set_hl(0, "CmpDocBorder", { link = "FloatBorder" })
vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion menu
		["<C-e>"] = cmp.mapping.abort(), -- Close completion menu
		["<Down>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<Up>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<CR>"] = cmp.mapping(function(fallback)
			if cmp.visible() and cmp.get_selected_entry() then
				cmp.confirm({ select = false }) -- Confirm only if item explicitly selected
			else
				fallback() -- Insert newline
			end
		end, { "i", "s" }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.confirm({ select = true })
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				local ok, is_expandable = pcall(vim.fn["emmet#isExpandable"])
				if ok and is_expandable == 1 then
					vim.fn["emmet#expandAbbr"](0, "")
				else
					fallback()
				end
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback() -- Insert shift-tab
			end
		end, { "i", "s" }),
		["<M-/>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.confirm({ select = true }) -- Auto-select first suggestion
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = "copilot", priority = 1100, group_index = 1 },
		{ name = "nvim_lsp", priority = 1000, group_index = 1,
			entry_filter = function(entry)
				return not (
					entry.source:get_debug_name() == "nvim_lsp:emmet_ls"
					and entry:get_kind() == require("cmp.types").lsp.CompletionItemKind.Snippet
				)
			end,
		},
		{ name = "nvim_lsp_signature_help", priority = 900, group_index = 1 },
		{ name = "luasnip", priority = 750, group_index = 1 },
		{ name = "buffer", priority = 500, group_index = 2 },
		{ name = "path", priority = 250, group_index = 2 },
	}),
	formatting = {
		format = function(entry, vim_item)
			local ok_lspkind, lspkind = pcall(require, "lspkind")
			if ok_lspkind then
				vim_item = lspkind.cmp_format({
					mode = "symbol_text",
					maxwidth = 50,
					ellipsis_char = "...",
					symbol_map = { Copilot = "" },
				})(entry, vim_item)
			end
			vim_item.menu = ({
				copilot = "[Copilot]",
				nvim_lsp = "[LSP]",
				luasnip = "[Snippet]",
				buffer = "[Buffer]",
				path = "[Path]",
			})[entry.source.name] or ""
			local ok, result = pcall(require("tailwindcss-colorizer-cmp").formatter, entry, vim_item)
			return ok and result or vim_item
		end,
	},
	view = {
		entries = { name = "custom", selection_order = "top_down" },
	},
	window = {
		completion = cmp.config.window.bordered({
			border = "rounded",
			winhighlight = "Normal:CmpPmenu,FloatBorder:CmpDocBorder,CursorLine:CmpPmenuSel,Search:None",
			col_offset = -3,
			side_padding = 1,
		}),
		documentation = cmp.config.window.bordered({
			border = "rounded",
			winhighlight = "Normal:CmpDoc,FloatBorder:CmpDocBorder,CursorLine:CmpPmenuSel,Search:None",
			max_width = 80,
			max_height = 20,
		}),
	},
	experimental = {
		ghost_text = false, -- Disable nvim-cmp ghost text
	},
})

-- nvim-autopairs Integration
pcall(function()
	local cmp_autopairs = require("nvim-autopairs.completion.cmp")
	cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
end)
